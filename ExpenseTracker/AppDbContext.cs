using Microsoft.EntityFrameworkCore;

namespace ExpenseTracker
{
    public class AppDbContext : DbContext
    {
        public DbSet<Expense> Expenses { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlite("Data Source=expenses.db");
        }
    }
}
