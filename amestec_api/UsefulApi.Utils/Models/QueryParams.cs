using System.Collections.Generic;

#nullable disable

namespace UsefulApi.Utils.Models
{
    public class QueryParams
    {
        public int Page { get; set; }
        public int PageSize { get; set; }
        public string SortBy { get; set; } = "Id";
        public List<string> SearchBy { get; set; }
        public string SearchValue { get; set; }
        public bool IsSortingAscending { get; set; }
    }
}
