using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class NewsPicture
{
    public int Id { get; set; }

    public string? Path { get; set; }

    public string? Type { get; set; }

    public int? IdNew { get; set; }

    public virtual News? IdNewNavigation { get; set; }
}
