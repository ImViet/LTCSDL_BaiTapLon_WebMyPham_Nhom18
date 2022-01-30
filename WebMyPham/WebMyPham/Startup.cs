using Microsoft.Owin;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using WebMyPham.Models;
[assembly: OwinStartupAttribute(typeof(WebMyPham.Startup))]
namespace WebMyPham
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            //CreateRoleandUser(); //Đã gọi tạo nên ẩn
        }
        //Hàm tạo 2 tài khoản để test
        private void CreateRoleandUser()
        {
            ApplicationDbContext context = new ApplicationDbContext();
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            if(!roleManager.RoleExists("Admin"))
            {
                var role = new IdentityRole();
                role.Name = "Admin";
                roleManager.Create(role);
                role = new IdentityRole();
                role.Name = "Member";
                roleManager.Create(role);
                //Tao cac user
                //Admin
                var user = new ApplicationUser();
                user.UserName = "admin@mypham.com";
                user.Email = "admin@mypham.com";
                var check = userManager.Create(user, "123456");
                if (check.Succeeded)
                    userManager.AddToRole(user.Id, "Admin");

                //Khachhang
                user = new ApplicationUser();
                user.UserName = "khachhang1@mypham.com";
                user.Email = "khachhang1@mypham.com";
                check = userManager.Create(user, "123456");
                if (check.Succeeded)
                    userManager.AddToRole(user.Id, "Member");

                user = new ApplicationUser();
                user.UserName = "khachhang2@mypham.com";
                user.Email = "khachhang2@mypham.com";
                check = userManager.Create(user, "123456");
                if (check.Succeeded)
                    userManager.AddToRole(user.Id, "Member");
            }
        }
    }
}
