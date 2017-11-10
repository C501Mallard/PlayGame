using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class _04Game : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] question = new string[98];

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["題庫ConnectionString"].ConnectionString);


        //string[] question = new string[98];
        for (int i = 1; i < 98; i++)
        {
            question[i - 1] = i.ToString();

        }

        int t = 0;
        string tmp = "";
        Random r = new Random();
        for (int i = 0; i < 98; i++)
        {
            t = r.Next(0, 98);
            tmp = question[i];
            question[i] = question[t];
            question[t] = tmp;
        }

       


        string[] Q = new string[10];
        for (int i = 0; 1 < 10; i++)
        {
            Q[i] = question[i];
            SqlCommand cmd = new SqlCommand("select * from [題庫] where NO=@NO", conn);
            cmd.Parameters.AddWithValue("@NO", Q[i]);
        }
        //cmd1 = "SELECT * FROM [題庫] where NO in ('" + Q[0] + "','" + Q[1] + "','" + Q[3] + "')";
        //cmd1 = "SELECT * FROM [題庫] where NO =" + Q[0] ;
        //SqlCommand cmd = new SqlCommand(cmd1, conn);

        //string[] cmd1 = "SELECT * FROM [題庫] where NO =" + Q;
        //SqlCommand cmd = new SqlCommand(cmd1, conn);
        //SqlDataReader dr;

        //conn.Open();
        //dr = cmd.ExecuteReader();
        //GridView1.DataSource = dr;
        //GridView1.DataBind();
        ////question=dr["No"].ToString();
        //conn.Close();




        //    public int getRandom(int minNum, int maxNum)
        //    {
        //        return Math.Floor( Random.  * (maxNum - minNum + 1)) + minNum;
        //    }
    }
}