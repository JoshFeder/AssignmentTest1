using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using AssignmentTest1.Models;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace AssignmentTest1.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = txtRegisterEmail.Text, Email = txtRegisterEmail.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {


                //add user to database
                string connectionString = WebConfigurationManager.ConnectionStrings["WesternHotelDatabase"].ConnectionString;
                SqlConnection dbConnection = new SqlConnection(connectionString);
                string sqlString = "INSERT INTO customers (username, gname, sname, address, state, postcode, mobile, suburb) VALUES (@username, @gname, @sname, @address, @state, @postcode, @mobile, @suburb)";
                SqlCommand command = new SqlCommand(sqlString, dbConnection);
                //set the values to be added
                command.Parameters.AddWithValue("@username", txtRegisterEmail.Text);
                command.Parameters.AddWithValue("@gname", txtRegisterFirstName.Text);
                command.Parameters.AddWithValue("@sname", txtRegisterLastName.Text);
                command.Parameters.AddWithValue("@address", txtRegisterAddress.Text);
                command.Parameters.AddWithValue("@suburb", txtRegisterSuburb.Text);
                command.Parameters.AddWithValue("@state", DrpDwnLstDetailsState.SelectedValue);
                command.Parameters.AddWithValue("@postcode", txtRegisterPostcode.Text);
                command.Parameters.AddWithValue("@mobile", txtRegisterMobile.Text);
                //execute the insertion
                dbConnection.Open();
                command.ExecuteNonQuery();
                dbConnection.Close();

                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                IdentityResult resultAdd = manager.AddToRole(user.Id, "Customer");
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}