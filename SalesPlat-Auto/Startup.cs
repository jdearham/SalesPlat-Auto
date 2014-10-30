using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SalesPlat_Auto.Startup))]
namespace SalesPlat_Auto
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
