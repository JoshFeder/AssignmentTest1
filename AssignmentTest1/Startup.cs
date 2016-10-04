using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AssignmentTest1.Startup))]
namespace AssignmentTest1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
