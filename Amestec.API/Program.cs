namespace Amestec.API
{
    public class Program
    {
        public static void Main(string[] args)
        {
            if (!System.Diagnostics.Debugger.IsAttached)
            {
                var _configuration = new ConfigurationBuilder()
                    .SetBasePath(Directory.GetParent(AppContext.BaseDirectory)?.FullName)
                    .AddJsonFile("appsettings.json", false)
                    .Build();
            }

            try
            {
                CreateHostBuilder(args).Build().Run();
            }
            finally
            {

            }
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
            .ConfigureWebHostDefaults(webBuilder =>
            {
                webBuilder.UseStartup<Startup>();
            });
    }
}