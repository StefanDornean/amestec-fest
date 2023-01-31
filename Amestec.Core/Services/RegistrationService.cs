using Amestec.Core.Models.DTOs;
using Amestec.Core.Services.Interfaces;
using Amestec.DataAccess.Repositories;
using AutoMapper;
using Amestec.Infrastructure.EFModels;
using UsefulApi.Utils.Models;

namespace Amestec.Core.Services
{
    public class RegistrationService : IRegistrationService
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;

        public RegistrationService(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }

        public async Task<PageResponse<RegistrationDTO>> GetRegistrationsAsync(QueryParams queryParams)
        {
            return await _unitOfWork.RegistrationRepository.Filter(queryParams, x => true, x => _mapper.Map<RegistrationDTO>(x));
        }

        public async Task<RegistrationDTO?> GetRegistrationByIdAsync(int id)
        {
            Registration? Registration = await _unitOfWork.RegistrationRepository.GetById(id);

            if (Registration != null)
            {
                return _mapper.Map<RegistrationDTO>(Registration);
            }

            return null;
        }

        public async Task<RegistrationDTO> AddRegistrationAsync(RegistrationDTO RegistrationDTO)
        {
            Registration Registration = _mapper.Map<RegistrationDTO, Registration>(RegistrationDTO);
            await _unitOfWork.RegistrationRepository.Add(Registration);
            await _unitOfWork.Commit();
            RegistrationDTO.Id = Registration.Id;

            return RegistrationDTO;
        }

        public async Task<bool> EditRegistrationAsync(RegistrationDTO newRegistrationDTO)
        {
            Registration? Registration = await _unitOfWork.RegistrationRepository.GetById(newRegistrationDTO.Id);

            if (Registration != null)
            {
                _mapper.Map<RegistrationDTO, Registration>(newRegistrationDTO, Registration);
                await _unitOfWork.Commit();

                return true;
            }

            return false;
        }

        public async Task<bool> DeleteRegistrationByIdAsync(int id)
        {
            Registration? Registration = await _unitOfWork.RegistrationRepository.GetById(id);

            if (Registration != null)
            {
                _unitOfWork.RegistrationRepository.Delete(Registration);
                await _unitOfWork.Commit();

                return true;
            }

            return false;
        }
    }
}
