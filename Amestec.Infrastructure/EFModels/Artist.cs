using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class Artist
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public string? ShortDescription { get; set; }

    public string? LongDescription { get; set; }

    public DateTime? CreatedDate { get; set; }

    public string? CreatedBy { get; set; }

    public bool? Visible { get; set; }

    public virtual ICollection<ArtistsLink> ArtistsLinks { get; } = new List<ArtistsLink>();

    public virtual ICollection<ArtistsPicture> ArtistsPictures { get; } = new List<ArtistsPicture>();

    public virtual ICollection<Timeline> Timelines { get; } = new List<Timeline>();
}
