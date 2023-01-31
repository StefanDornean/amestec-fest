using System.Linq.Expressions;
using UsefulApi.Utils.Models;

namespace Amestec.DataAccess.Repositories
{
    public interface IBaseRepository<T>
    {
        Task<List<T>> GetAll();
        Task<T?> GetById(int id);
        Task<List<T>> Find(Expression<Func<T, bool>> expression);
        Task<T?> FirstOrDefault(Expression<Func<T, bool>> expression);
        Task<PageResponse<TType>> Filter<TType>(QueryParams queryParams, Expression<Func<T, bool>> where, Expression<Func<T, TType>> select, List<string>? includeProperties = null);
        Task Add(T entity);
        Task AddRange(IList<T> list);
        void Delete(T entity);
        void DeleteRange(IList<T> list);
    }
}
