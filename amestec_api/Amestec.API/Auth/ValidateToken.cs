using Amestec.API.Auth.Interface;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace Amestec.API.Auth
{
    public class ValidateToken : IValidateToken
    {
        public Task ValidateAsync(TokenValidatedContext context)
        {
            if(context.SecurityToken is JwtSecurityToken accessToken && context.Principal?.Identity is ClaimsIdentity identity)
            {
                var accountName = accessToken.Claims.FirstOrDefault(claim => claim.Type == "accountName")?.Value;
                identity.AddClaim(new Claim(ClaimTypes.Name, accountName??""));

                identity.Claims.Union(accessToken.Claims.AsEnumerable());
            }

            return Task.CompletedTask;
        }
    }
}
