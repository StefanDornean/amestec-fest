using AutoMapper;
using Amestec.Infrastructure.EFModels;
using Amestec.Core.Models.DTOs;

namespace Amestec.BusinessLogic.Mapping
{
    public class AutomapperProfile : Profile
    {
        public AutomapperProfile()
        {
            CreateMap<Registration, RegistrationDTO>();
            CreateMap<RegistrationDTO, Registration>();
        }
        
    }
}
