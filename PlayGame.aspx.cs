using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PlayGame : System.Web.UI.Page
{
    string solution;
    ArrayList idList = new ArrayList();
    ArrayList solutionList = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label l1 = (Label)FV1.FindControl("L1");

        solution = l1.Text;
        
        solutionList.Add(solution);
        Session["solArrayList"] = solutionList;

        Response.Write(l1.Text);
    }
    protected void FV1_DataBound(object sender, EventArgs e)
    {

        
        //Session["Qz_Ans"] = dr["id"].ToString();
        //Session["name"] = dr["name"].ToString();
        int page = FV1.PageIndex + 1;
        int total = FV1.PageCount;
        ((Label)FV1.BottomPagerRow.Cells[0].FindControl("lblPageInfo")).Text = "Page " + page + " of " + total;
    }

    protected void Qz_Item1_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        idList.Add("1");
        Session["idArrayList"] = idList;
    }

    protected void Qz_Item2_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        idList.Add("2");
        Session["idArrayList"] = idList;
    }

    protected void Qz_Item3_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        idList.Add("3");
        Session["idArrayList"] = idList;
    }

    protected void Qz_Item4_CheckBox_CheckedChanged(object sender, EventArgs e)
    {
        idList.Add("4");
        Session["idArrayList"] = idList;
    }

    //protected void lkbPrev_Click(object sender, EventArgs e)
    //{
    //    switch (((LinkButton)sender).ID)
    //    {
    //        case "lkbPrev":
    //            if (GridView5.PageIndex > 0)
    //                GridView5.PageIndex--;
    //            break;

    //        case "lkbNext":
    //            GridView5.PageIndex += 1;
    //            break;
    //    }
    //}

    //protected void ddlPager_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow gvr = GridView5.BottomPagerRow;
    //    DropDownList ddlPager = (DropDownList)gvr.Cells[0].FindControl("ddlPager");

    //    GridView5.PageIndex = ddlPager.SelectedIndex;
    //}


}