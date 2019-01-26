using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMessage.Visible = false;
            LoadImages();
            if (Session["Role"] != null)
            {
                if (Session["Role"].ToString() == "admin")
                {

                }
                else
                {
                    GridView1.Visible = false;
                }
            }
            else
            {
                GridView1.Visible = false;
            }
        }
    }

    private void LoadImages()
    {
        string cs = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblImages where picStatus = 'Pending'", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            rdr.Close();
            SqlCommand images = new SqlCommand("Select * from tblImages where picStatus = 'Approved'", con);
            SqlDataReader rdr1 = images.ExecuteReader();
            Images.DataSource = rdr1;
            Images.DataBind();
            con.Close();
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string filename = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(filename);
        int fileSize = postedFile.ContentLength;

        if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
            || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
        {
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


            string cs = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spUploadImage", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramName = new SqlParameter()
                {
                    ParameterName = @"picName",
                    Value = filename
                };
                cmd.Parameters.Add(paramName);

                SqlParameter paramSize = new SqlParameter()
                {
                    ParameterName = "@picSize",
                    Value = fileSize
                };
                cmd.Parameters.Add(paramSize);

                SqlParameter paramImageData = new SqlParameter()
                {
                    ParameterName = "@ImageData",
                    Value = bytes
                };
                cmd.Parameters.Add(paramImageData);

                SqlParameter parampicStatus = new SqlParameter()
                {
                    ParameterName = "@picStatus",
                    Value = "Pending"
                };
                cmd.Parameters.Add(parampicStatus);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NewId",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Upload Successful";
            }
        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
        }

        LoadImages();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int rowindex = int.Parse(GridView1.SelectedValue.ToString());
        Label1.Text = rowindex.ToString();
        string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        SqlConnection con = new SqlConnection(DBConnect);
        SqlCommand approve = new SqlCommand("update tblImages set picStatus = 'Approved' where picId = @parapicId", con);
        approve.Parameters.AddWithValue("@parapicId", rowindex);
        con.Open();
        approve.ExecuteNonQuery();
        con.Close();
        Label1.Text = rowindex.ToString() + " approved successfully";
        LoadImages();
    }

    protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
            int id = (int)GridView1.DataKeys[row.RowIndex].Value;
            Label1.Text = id.ToString();
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection con = new SqlConnection(DBConnect);
            SqlCommand delete = new SqlCommand("delete from tblImages where picId = @parapicId ", con);
            delete.Parameters.AddWithValue("@parapicId", id);

            con.Open();
            delete.ExecuteNonQuery();
            con.Close();
            Label1.Text = id.ToString() + " deleted successfully";
            LoadImages();
        }
    }
}
