using Amestec.Core.Models.DTOs;
using Amestec.Core.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using UsefulApi.Utils.Models;

namespace Amestec.API.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class RegistrationsController : Controller
    {
        private readonly IRegistrationService _RegistrationService;

        public RegistrationsController(IRegistrationService RegistrationService)
        {
            _RegistrationService = RegistrationService;
        }

        [HttpGet]
        public async Task<PageResponse<RegistrationDTO>> GetRegistrations([FromQuery] QueryParams queryParams)
        {
            return await _RegistrationService.GetRegistrationsAsync(queryParams);
        }

        [HttpGet("{id}")]
        public async Task<RegistrationDTO?> GetRegistrationById([FromRoute] int id)
        {
            return await _RegistrationService.GetRegistrationByIdAsync(id);
        }

        [HttpPost]
        public async Task<RegistrationDTO> AddRegistration(RegistrationDTO RegistrationDTO)
        {
            return await _RegistrationService.AddRegistrationAsync(RegistrationDTO);
        }

        [HttpPut]
        public async Task<bool> EditRegistration(RegistrationDTO RegistrationDTO)
        {
            return await _RegistrationService.EditRegistrationAsync(RegistrationDTO);
        }

        [HttpDelete("{id}")]
        public async Task<bool> DeleteRegistration([FromRoute] int id)
        {
            return await _RegistrationService.DeleteRegistrationByIdAsync(id);
        }
    }
}
