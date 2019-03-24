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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //studentlogin obj = new studentlogin();
            //obj.userName = txtUSerID.Text;
            //obj.password = txtPassword.Text;

             Response.Redirect("subjectform.aspx");

            string apiUrl = "http://assistservice.iappsforme.com/api/student/students/123456";


            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);


            //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            student lstProduct = serializer.Deserialize<student>(json);
            //Binding gridview from dynamic object   




        }
    }
    public class student
    {

        public string StudID { get; set; }
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




}