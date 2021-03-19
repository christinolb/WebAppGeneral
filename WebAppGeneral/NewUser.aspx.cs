using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebAppGeneral
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string conString = "Server=tcp:records-server.database.windows.net,1433;Initial Catalog=General_Database;Persist Security Info=False;User ID=christino_;Password=Jerrysiceparty77;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "insert into Person(FirstName,LastName,PhoneNumber,EmailAddress,FileContent)values('" + firstNameTb.Text.ToString() + "','" + lastNameTb.Text.ToString() + "','" + phoneNumberTb.Text.ToString() + "','" + emailTb.Text.ToString() +"','"+ uploadPicture.FileBytes+"')";
                SqlCommand cmd = new SqlCommand(q,con);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Entry Added to Database!");
            }
        }
    }
}