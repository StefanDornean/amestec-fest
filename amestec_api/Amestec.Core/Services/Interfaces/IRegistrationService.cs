using Amestec.Core.Models.DTOs;
using UsefulApi.Utils.Models;

namespace Amestec.Core.Services.Interfaces
{
    public interface IRegistrationService
    {
        Task<PageResponse<RegistrationDTO>> GetRegistrationsAsync(QueryParams queryParams);
        Task<RegistrationDTO?> GetRegistrationByIdAsync(int id);
        Task<RegistrationDTO> AddRegistrationAsync(RegistrationDTO registrationDTO);
        Task<bool> EditRegistrationAsync(RegistrationDTO registrationDTO);
        Task<bool> DeleteRegistrationByIdAsync(int id);
    }
}
