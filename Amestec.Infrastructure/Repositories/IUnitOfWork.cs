using Amestec.DataAccess.Repositories;
using Amestec.Infrastructure.EFModels;
using System.Threading.Tasks;

namespace Amestec.DataAccess.Repositories
{
    public interface IUnitOfWork
    {
        IBaseRepository<Registration> RegistrationRepository { get; }
        Task Commit();
        void Dispose();
    }
}
