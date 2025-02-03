using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.IO;
using Newtonsoft.Json;
using Microsoft.EntityFrameworkCore;
using System.Linq;


namespace ExpenseTracker
{
    public partial class MainWindow : Window
    {
        private readonly AppDbContext _db = new AppDbContext();
        public ObservableCollection<Expense> Expenses { get; set; } = new ObservableCollection<Expense>();

        public MainWindow()
        {
            InitializeComponent();
            _db.Database.EnsureCreated();  // Ensure database exists
            LoadExpenses();
            lstExpenses.ItemsSource = Expenses;
        }

        private void LoadExpenses()
        {
            Expenses.Clear();
            foreach (var expense in _db.Expenses.ToList())
            {
                Expenses.Add(expense);
            }
        }

        private void AddExpense_Click(object sender, RoutedEventArgs e)
        {
            
            if (decimal.TryParse(txtAmount.Text, out decimal amount) && !string.IsNullOrWhiteSpace(txtDescription.Text))
            {
                var newExpense = new Expense { Description = txtDescription.Text, Amount = amount };
                _db.Expenses.Add(newExpense);
                _db.SaveChanges();
                
                Expenses.Add(newExpense); // Update UI
                txtDescription.Clear();
                txtAmount.Clear();
            }
            else
            {
                MessageBox.Show("Please enter a valid description and amount.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}