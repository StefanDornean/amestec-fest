using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class ArtistsLink
{
    public int Id { get; set; }

    public string? Link { get; set; }

    public string? Type { get; set; }

    public int? IdArtist { get; set; }

    public virtual Artist? IdArtistNavigation { get; set; }
}
