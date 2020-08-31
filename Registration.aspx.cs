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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                String checkuser = "select count(*) from UserData where Username='" + TextBoxUN.Text + "'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGuid = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into UserData (ID, Username,Email,Password,Country) values (@ID, @Username, @Email, @Password, @Country)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", newGuid.ToString());
                com.Parameters.AddWithValue("@Username",TextBoxUN.Text);
                com.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@Password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.ToString());

                com.ExecuteNonQuery();
                Response.Redirect("Manager.aspx");
                Response.Write("Your Registration is Succesful");

                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}