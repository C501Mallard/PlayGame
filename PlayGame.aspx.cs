using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PlayGame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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

    protected void FV1_DataBound(object sender, EventArgs e)
    {
        int page = FV1.PageIndex + 1;
        int total = FV1.PageCount;

        ((Label)FV1.BottomPagerRow.Cells[0].FindControl("lblPageInfo")).Text = "Page " + page + " of " + total;
    }
}