using System.ComponentModel.DataAnnotations;

namespace ExpenseTracker
{
    public class Expense
    {
        [Key] // Primary Key
        public int Id { get; set; }

        [Required]
        public string Description { get; set; } = string.Empty;

        [Required]
        public decimal Amount { get; set; }

    }
}
