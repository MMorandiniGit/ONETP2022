using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace Persistencia
{
    public class Contexto : DbContext
    {
        public DbSet<Usuario> Usuarios { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder ob)
        {
            if (!ob.IsConfigured)
            {
                IConfiguration myConfig = new ConfigurationBuilder()
                    .SetBasePath(Environment.CurrentDirectory)
                    .AddJsonFile("appSettings.json")
                    .Build();

                string strConexion = myConfig.GetConnectionString("dev");
                var serverVersion = new MySqlServerVersion(versionString: myConfig["SerVersion"]);
                ob.UseMySql(strConexion, serverVersion);
            }
        }
    }
}