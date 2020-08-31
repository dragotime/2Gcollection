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
    public partial class March : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

                 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGuid = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringmarch"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into Table (ID, Name,Date,Day, Location, Salary, Invoice) values (@ID, @Full Name, @Date, @Day, @Location, @Salary, @Invoice)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", newGuid.ToString());
                com.Parameters.AddWithValue("@Full Name", Name.Text);
                com.Parameters.AddWithValue("@Date", Date.Text);
                com.Parameters.AddWithValue("@Day", Day.Text);
                com.Parameters.AddWithValue("@Location", Location.Text);
                com.Parameters.AddWithValue("@Salary", Salary.Text);
                com.Parameters.AddWithValue("@Invoice", Invoice.Text);

                com.ExecuteNonQuery();
                Response.Redirect("March.aspx");
                Response.Write("Your Registration is Succesful");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
                
            }
        }
    }
}