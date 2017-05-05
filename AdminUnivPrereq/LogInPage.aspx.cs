using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace AdminUnivPrereq
{
    public partial class LogInPage : System.Web.UI.Page
    {
        static SqlDataReader dr;
        SqlConnection conn = new SqlConnection("Data Source=tamalc.database.windows.net;Initial Catalog=tamal;Integrated Security=False;User ID=tamalc;Password=LDCaprio001");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*String str = "INSERT into [Course]([Course ID], [Course Name], [Credits]) Values(@id, @name, @credit)";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@credit", TextBox3.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            if (IsPostBack)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }*/

            /*String str = "SELECT [Course ID] AS Course_ID, [Course Name] AS Course_Name, [Credits] FROM [Course] WHERE ([Course Name] = @search)";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.Add("@search", SqlDbType.VarChar).Value = TextBox1.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter sa = new SqlDataAdapter();
            sa.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sa.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();*/

            String str = "SELECT [Email ID] , [Password]  FROM [Admin] WHERE ([Email ID] = @id and [Password] = @pwd)";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@id", TextBoxEmailID.Text);
            cmd.Parameters.AddWithValue("@pwd", TextBoxPwd.Text);
            conn.Open();
            try
            {
                dr = cmd.ExecuteReader();
                //Response.BufferOutput = true;
                if (dr.Read())
                {
                    //Go to next page
                    Label1.Text = "Query Successful";
                    Response.Redirect("CourseInfo.aspx");
                }
                else
                {
                    Label1.Text = "Wrong User ID or Password";
                }

            }

            catch (SqlException ex)
            {
                Label1.Text = ex.Message;
            }

            conn.Close();

        }
    }
}