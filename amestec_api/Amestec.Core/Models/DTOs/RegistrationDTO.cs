
namespace Amestec.Core.Models.DTOs
{
    public class RegistrationDTO
    {
        public string Name { get; set; } = null!;

        public string Surname { get; set; } = null!;

        public string Email { get; set; } = null!;

        public DateTime BirthDate { get; set; }

        public string PhoneNumber { get; set; } = null!;

        public int Id { get; set; }

        public bool? Newsletter { get; set; }

        public bool? Confidentiality { get; set; }

        public bool? Paid { get; set; }
    }
}
