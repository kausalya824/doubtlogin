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
    public partial class subjectform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string apiUrl = "http://assistservice.iappsforme.com/api/student/students/123456";
                WebClient client = new WebClient();
                client.Headers["Content-type"] = "application/json";
                client.Encoding = Encoding.UTF8;
                string json = client.DownloadString(apiUrl);



                //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                student lstProduct = serializer.Deserialize<student>(json);
                lblStudName.Text = lstProduct.StudName;
                lblClass.Text = lstProduct.Class;
                lblRollNumber.Text = lstProduct.RollNumber;
                lblSection.Text = lstProduct.Section;


            }
        }
        public class student
        {
             public string StudId { get; set; }
             public string StudName { get; set; }
             public string Class { get; set; }
             public string RollNumber { get; set; }
             public string RegistrationNumber { get; set; }
             public string Section { get; set; }
             public string PhotoPath { get; set; }
             public string EmailID { get; set; }
             public string MobileNumber { get; set; }
             public string FatherName { get; set; }
             public string MotherName { get; set; }
             public string Address { get; set; }


        }

        
       protected void Button1_Click1(object sender, EventArgs e)
        {
           Response.Redirect("questionform.aspx?type=Kannada");
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           Response.Redirect("questionform.aspx?type=English");

        }

         protected void Button3_Click(object sender, EventArgs e)
        {
           Response.Redirect("questionform.aspx?type=Hindi");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           Response.Redirect("questionform.aspx?type=Maths");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           Response.Redirect("questionform.aspx?type=Socail science");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("questionform.aspx?type=Science");

        }
    }
}