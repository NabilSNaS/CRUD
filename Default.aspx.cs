using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : Page
{
    SqlConnection con = new SqlConnection(@"Data Source=desktop-5rpak9g\sqlexpress;Initial Catalog=CRUDDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetEmployeelist();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int empid = int.Parse(TextBox1.Text);
        string empname = TextBox2.Text, city = DropDownList1.SelectedValue, sex = RadioButtonList1.SelectedValue, contact = TextBox6.Text;
        double age = double.Parse(TextBox3.Text);
        DateTime jdate = DateTime.Parse(TextBox7.Text);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into [Employee] values('" + empid + "','" + empname + "','" + city + "','" + age + "','" + sex + "','" + jdate + "','" + contact + "')";
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.SelectedValue = "";
        RadioButtonList1.SelectedValue = "";
        TextBox6.Text = "";
        TextBox3.Text = "";
        TextBox7.Text = "";
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Saved');",true);

        GetEmployeelist();





    }
    void GetEmployeelist()
    {
        SqlCommand cmd = new SqlCommand("select * from Employee", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        ad.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int empid = int.Parse(TextBox1.Text);
        string empname = TextBox2.Text, city = DropDownList1.SelectedValue, sex = RadioButtonList1.SelectedValue, contact = TextBox6.Text;
        double age = double.Parse(TextBox3.Text);
        DateTime jdate = DateTime.Parse(TextBox7.Text);
        con.Open();
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        SqlCommand cmd = new SqlCommand("Update  [Employee]  set  Name ='" + empname + "',City='" + city + "',Age='" + age + "',Sex='" + sex + "',Joindate='" + jdate + "',Contact='" + contact + "' where Employee_Id ='" + empid + "'",con) ;
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.SelectedValue = "";
        RadioButtonList1.SelectedValue = "";
        TextBox6.Text = "";
        TextBox3.Text = "";
        TextBox7.Text = "";
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Updated');", true);

        GetEmployeelist();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int empid = int.Parse(TextBox1.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete  [Employee] where Employee_Id ='" + empid + "'", con);
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.SelectedValue = "";
        RadioButtonList1.SelectedValue = "";
        TextBox6.Text = "";
        TextBox3.Text = "";
        TextBox7.Text = "";
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
        GetEmployeelist();


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int empid = int.Parse(TextBox1.Text);
        
   
        SqlCommand cmd = new SqlCommand("Select * from Employee where Employee_Id='"+empid+"'", con);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        ad.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        GetEmployeelist();
    }
}