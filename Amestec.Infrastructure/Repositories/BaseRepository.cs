using Amestec.Infrastructure.EFModels;
using Microsoft.EntityFrameworkCore;
using System.Linq.Dynamic.Core;
using System.Linq.Expressions;
using UsefulApi.Utils.Models;

namespace Amestec.DataAccess.Repositories
{
    public class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        protected readonly AmestecContext _db;

        public BaseRepository(AmestecContext db)
        {
            _db = db;
        }

        public async Task Add(T entity)
        {
            await _db.Set<T>().AddAsync(entity);
        }

        public async Task AddRange(IList<T> list)
        {
            await _db.Set<T>().AddRangeAsync(list);
        }

        public void Delete(T entity)
        {
            _db.Set<T>().Remove(entity);
        }

        public void DeleteRange(IList<T> list)
        {
            _db.Set<T>().RemoveRange(list);
        }

        public async Task<PageResponse<TType>> Filter<TType>(QueryParams queryParams, Expression<Func<T, bool>> where, Expression<Func<T, TType>> select, List<string>? includeProperties = null)
        {
            PageResponse<TType> pgResp = new PageResponse<TType>();
            var query = _db.Set<T>().AsNoTracking().Where(where);

            //navigation properties
            if (includeProperties != null)
            {
                foreach (var property in includeProperties)
                    query = query.Include(property);
            }

            //search
            if (!String.IsNullOrEmpty(queryParams.SearchValue))
            {
                string searchQuerry = string.Join(" or ", queryParams.SearchBy.Select(c => $"it.{c}.ToLower().Contains(\"{queryParams.SearchValue.ToLower()}\")"));
                query = query.Include(searchQuerry);
            }

            //Order
            query = query.OrderBy(queryParams.SortBy + (queryParams.IsSortingAscending ? "" : " desc"));
            pgResp.Total = await query.CountAsync();

            //Pages
            if (queryParams.Page != 0 && queryParams.PageSize != 0)
            {
                query = query.PageResult(queryParams.Page, queryParams.PageSize).Queryable;
            }

            pgResp.Items = await query.Select(select).ToListAsync();
            return pgResp;
        }

        public async Task<List<T>> Find(Expression<Func<T, bool>> expression)
        {
            return await _db.Set<T>().Where(expression).ToListAsync();
        }

        public async Task<T?> FirstOrDefault(Expression<Func<T, bool>> expression)
        {
            return await _db.Set<T>().FirstOrDefaultAsync(expression);
        }

        public async Task<List<T>> GetAll()
        {
            return await _db.Set<T>().AsNoTracking().ToListAsync();
        }

        public async Task<T?> GetById(int id)
        {
            return await _db.Set<T>().FindAsync(id);
        }
    }
}
