using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class Registration
{
    public string Name { get; set; } = null!;

    public string Surname { get; set; } = null!;

    public DateTime BirthDate { get; set; }

    public string Email { get; set; } = null!;

    public string PhoneNumber { get; set; } = null!;

    public bool? Newsletter { get; set; }

    public bool? Confidentiality { get; set; }

    public bool? Paid { get; set; }

    public int Id { get; set; }

    public int? IdTicket { get; set; }
}
