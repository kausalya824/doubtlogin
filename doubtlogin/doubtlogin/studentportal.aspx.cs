using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;
using System.Web.Script.Serialization;


namespace doubtlogin
{
    public partial class questionform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["type"] == "Kannada")
                {
                    lblSubject.Text = "Kannada";
                }

                if (Request.QueryString["type"] == "English")
                {
                    lblSubject.Text = "English";
                }
                if (Request.QueryString["type"] == "Hindi")
                {
                    lblSubject.Text = "Hindi";
                }
                if (Request.QueryString["type"] == "Maths")
                {
                    lblSubject.Text = "Maths";
                }
                if (Request.QueryString["type"] == "maths")
                {
                    lblSubject.Text = "maths";
                }
                if (Request.QueryString["type"] == "Socail science")
                {
                    lblSubject.Text = "Socail science";
                }
                if (Request.QueryString["type"] == "Science")
                {
                    lblSubject.Text = "Science";
                }
            }

        }




        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            string mess = TextBox1.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + mess + "');", true);


            //Response.Redirect("subjectform.aspx");
            string apiUrl = "http://assistservice.iappsforme.com/api/questions/%7BstudentId%7D/%7Bsubjectid%7D";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);
            //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
            //JavaScriptSerializer serializer = new JavaScriptSerializer();
            //student lstProduct = serializer.Deserialize<student>(json);
            lblmsg.Text = "thanks for visiting ";
            //Binding gridview from dynamic object
        }
    }

    //public class student1
    //{

    //    public string StudID { get; set; }
    //    public string StudName { get; set; }
    //    public string Class { get; set; }
    //    public string RollNumber { get; set; }
    //    public string RegistrationNumber { get; set; }
    //    public string Section { get; set; }
    //    public string PhotoPath { get; set; }
    //    public string EmailID { get; set; }
    //    public string MobileNumber { get; set; }
    //    public string FatherName { get; set; }
    //    public string MotherName { get; set; }
    //    public string Address { get; set; }

    //}

}
