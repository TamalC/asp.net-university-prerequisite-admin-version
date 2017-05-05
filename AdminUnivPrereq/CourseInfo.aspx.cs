using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AdminUnivPrereq
{
    public partial class CourseInfo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=tamalc.database.windows.net;Initial Catalog=tamal;Integrated Security=False;User ID=tamalc;Password=LDCaprio001");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        /*protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String CourseID = GridView2.SelectedRow.Cells[1].Text.ToString();
            String Number = GridView2.SelectedRow.Cells[2].Text.ToString();
            String Name = GridView2.SelectedRow.Cells[3].Text.ToString();
            String SubjectID = GridView2.SelectedRow.Cells[4].Text.ToString();
            String Prerequisite = GridView2.SelectedRow.Cells[5].Text.ToString();

            //if(e.)
            String str = "UPDATE[Course] SET[CourseID] = @courseID, [Number] = @number, [Name] = @name, [SubjectID] = @subjectID, [Prerequisite] = @prerequisite WHERE[CourseID] = @courseID";

            SqlCommand comm = new SqlCommand(str, conn);

            comm.Parameters.AddWithValue("@courseID", CourseID);
            comm.Parameters.AddWithValue("@number", Number);
            comm.Parameters.AddWithValue("@name", Name);
            comm.Parameters.AddWithValue("@subjectID", SubjectID);
            comm.Parameters.AddWithValue("@prerequisite", Prerequisite);

            conn.Open();
            comm.ExecuteNonQuery();

            GridView2.DataBind();
            conn.Close();


            /*var number = GridView2.FooterRow.FindControl("txtNumber") as TextBox;
            var name = GridView2.FooterRow.FindControl("txtName") as TextBox;
            var subjectID = GridView2.FooterRow.FindControl("txtSubjectID") as TextBox;
            var prerequisite = GridView2.FooterRow.FindControl("txtPrerequisite") as TextBox;*/
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            var courseID = GridView2.FooterRow.FindControl("txtCourseID") as TextBox;
            var number = GridView2.FooterRow.FindControl("txtNumber") as TextBox;
            var name = GridView2.FooterRow.FindControl("txtName") as TextBox;
            var subjectID = GridView2.FooterRow.FindControl("txtSubjectID") as TextBox;
            var prerequisite = GridView2.FooterRow.FindControl("txtPrerequisite") as TextBox;

            String str = "insert into Course([CourseID],[Number],[Name],[SubjectID],[Prerequisite]) values (@course,@num,@name,@subject,@prereq)";

            SqlCommand comm = new SqlCommand(str,conn);
            //comm.CommandText = "insert into Course(CourseID,Number,Name,SubjectID,Prerequisite) values (@course,@num,@name,@subject,@prereq)";
            if (prerequisite.Text == "0" || prerequisite.Text == "")
                prerequisite.Text = null;

            comm.Parameters.AddWithValue("@course", courseID.Text);
            comm.Parameters.AddWithValue("@num", number.Text);
            comm.Parameters.AddWithValue("@name", name.Text);
            comm.Parameters.AddWithValue("@subject", subjectID.Text);
            comm.Parameters.AddWithValue("@prereq", prerequisite.Text);

            conn.Open();
            comm.ExecuteNonQuery();

            GridView2.DataBind();
            conn.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //CourseView.ActiveViewIndex = 1;
            Response.Redirect("Subject.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        /* protected void Button2_Click1(object sender, EventArgs e)
         {
             CourseView.ActiveViewIndex = 0;
         }*/
    }
}