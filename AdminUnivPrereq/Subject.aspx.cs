using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AdminUnivPrereq
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=tamalc.database.windows.net;Initial Catalog=tamal;Integrated Security=False;User ID=tamalc;Password=LDCaprio001");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var subjectID = GridView1.FooterRow.FindControl("txtSubjectID") as TextBox;
            var aliasTxt = GridView1.FooterRow.FindControl("txtAlias") as TextBox;
              
            String str = "insert into Subject([SubjectID],[Alias]) values (@subject,@alias)";

            SqlCommand comm = new SqlCommand(str, conn);
            //comm.CommandText = "insert into Course(CourseID,Number,Name,SubjectID,Prerequisite) values (@course,@num,@name,@subject,@prereq)";

            comm.Parameters.AddWithValue("@subject", subjectID.Text);
            comm.Parameters.AddWithValue("@alias", aliasTxt.Text);
            

            conn.Open();
            comm.ExecuteNonQuery();

            GridView1.DataBind();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseInfo.aspx");
        }
    }
}