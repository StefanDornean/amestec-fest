#nullable disable

namespace UsefulApi.Utils.Models
{
    public class ServiceResponse<T>
    {
        public string Message { get; set; }
        public bool Status { get; set; }
        public T Object { get; set; }
    }
}
