using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCFStudClient
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ServiceReference1.Service1Client proxy = new ServiceReference1.Service1Client();
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            dt = proxy.ShowAllRecords();
            GVStudents.DataSource = dt;
            GVStudents.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtId.Text);
            string name = txtName.Text;
            string address = txtAddress.Text;

            ServiceReference1.Student stud = new ServiceReference1.Student();
            stud.Id = id;
            stud.Name = name;
            stud.Address = address;
            lblMessage.Text = proxy.InsertRecord(stud);
        }
    }
}