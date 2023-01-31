using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class AccessedHistory
{
    public int Id { get; set; }

    public DateTime? Date { get; set; }

    public string? Location { get; set; }

    public string? Page { get; set; }

    public int? IdContent { get; set; }

    public string? DeviceDetails { get; set; }
}
