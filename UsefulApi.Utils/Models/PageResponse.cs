using System.Collections.Generic;

#nullable disable

namespace UsefulApi.Utils.Models
{
    public class PageResponse<T>
    {
        public List<T> Items { get; set; }
        public int Total { get; set; }
    }
}
