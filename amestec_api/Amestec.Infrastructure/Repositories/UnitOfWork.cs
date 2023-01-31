using Amestec.Infrastructure.EFModels;
using Amestec.DataAccess.Repositories;
using System.Threading.Tasks;

#nullable disable

namespace Amestec.DataAccess.Repositories
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly AmestecContext _db;
        private IBaseRepository<Registration> _registrationRepository;

        public UnitOfWork(AmestecContext db)
        {
            _db = db;
        }

        public IBaseRepository<Registration> RegistrationRepository => _registrationRepository ??= new BaseRepository<Registration>(_db);

        public async Task Commit()
        {
            await _db.SaveChangesAsync();
        }

        public void Dispose()
        {
            _db.Dispose();
        }
    }
}
