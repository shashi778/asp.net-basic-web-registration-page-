using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


namespace Web_REG
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connet = new SqlConnection("Data Source=CUSTOMOS;Initial Catalog=\"WEB REG\";Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False");


        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSP_WEBREG_list();
            }
        }

        public void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }



        public void Button2_Click(object sender, EventArgs e)
        {
            

            string mainconn = connet.ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(mainconn);

            string Name = NameE.Text, address = addr.Text, gender ="", email = emailE.Text, eperience = DropDownList1.Text, phone = phoneN.Text, username = usernameU.Text, password = passwordP.Text;

            string sqlquery = "inert into[dbo].[Table_1] (eperience) Value (@eperience)";
            SqlCommand sqlConnection1 = new SqlCommand(sqlquery, sqlConnection);
            sqlConnection1.Parameters.AddWithValue("@eperience", DropDownList1.SelectedItem.Value);


            connet.Open();
            SqlCommand i = new SqlCommand("exec SP_WEBREG '" + Name + "','" + address + "','" + gender + "','" + email + "','" + eperience + "','" + phone + "','" + username + "','" + password + "'", connet);
            i.ExecuteNonQuery();
          

            string gender1 = string.Empty;
            if (male.Checked)
            {
                gender1 = "M";
            }
            else if (female.Checked)
            {
                gender1 = "F";
            }
            Response.Write("<script>alert('Registration success')</script>");

            GetSP_WEBREG_list();
            
        }

        void GetSP_WEBREG_list()
        {

            SqlCommand i = new SqlCommand(" exec SP_WEBREG_list", connet);
            SqlDataAdapter sd = new SqlDataAdapter(i);
            DataTable dt = new DataTable();
            sd.Fill(dt);

            //GridView1.DataSource = dt;
           //GridView1.DataBind();


            //DropDownList1.DataSource = dt;
           //DropDownList1.DataBind();
           
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}