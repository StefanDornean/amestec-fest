using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class Timeline
{
    public int Id { get; set; }

    public int? IdArtist { get; set; }

    public DateTime? Date { get; set; }

    public int? Year { get; set; }

    public TimeSpan? StartHour { get; set; }

    public TimeSpan? StopHour { get; set; }

    public DateTime? CreatedDate { get; set; }

    public string? CreatedBy { get; set; }

    public int? Order { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual Artist? IdArtistNavigation { get; set; }
}
