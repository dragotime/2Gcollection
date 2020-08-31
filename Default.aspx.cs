using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace _3G
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            connect.Open();
            String checkuser = "select count(*) from UserData where Username='" + txtUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, connect);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            connect.Close();
            if (temp == 1)
            {
                connect.Open();
                string checkPasswordQuery = "select password from UserData where Username='" + txtUsername.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, connect);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");
                if (password == txtPassword.Text)
                {
                    Session["New"] = txtUsername.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                } 
                
            }
            else
            {
                Response.Write("Username is not Correct");
            }
            

            }


        }

}
    
