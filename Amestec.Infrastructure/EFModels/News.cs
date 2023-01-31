using System;
using System.Collections.Generic;

namespace Amestec.Infrastructure.EFModels;

public partial class News
{
    public int Id { get; set; }

    public string? Title { get; set; }

    public string? Content { get; set; }

    public DateTime? CreatedDate { get; set; }

    public string? CreatedBy { get; set; }

    public bool? IsDeleted { get; set; }

    public virtual ICollection<NewsPicture> NewsPictures { get; } = new List<NewsPicture>();
}
