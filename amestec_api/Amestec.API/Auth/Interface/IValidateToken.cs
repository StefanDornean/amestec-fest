using Microsoft.AspNetCore.Authentication.JwtBearer;

namespace Amestec.API.Auth.Interface
{
    public interface IValidateToken
    {
        Task ValidateAsync(TokenValidatedContext context);
    }
}
