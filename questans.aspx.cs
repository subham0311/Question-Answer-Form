using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class questans : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\java subham program\\questans\\App_Data\\Database.mdf;Integrated Security = True");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Quest values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();

        Label5.Visible = true;
    }
}
