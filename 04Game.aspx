<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04Game.aspx.cs" Inherits="_04Game" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/MyStyle.css" rel="stylesheet" />
    <style>
        #Button1{
            color:blue;
            background-color:blanchedalmond;
            font-size:18pt;
            text-align:center;
            align-self:center;
            width:250px;
        }
        
    </style>


</head>
<body>
    <form id="form1"  runat="server">
    <div >
       
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
            ConnectionStrings:題庫ConnectionString %>" SelectCommand="SELECT * FROM [題庫]"
            
            ></asp:SqlDataSource>
       --%>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

     <%--   <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AllowPaging="True" DataSourceID="SqlDataSource1" PageIndex="1" CellPadding="4" ForeColor="#333333" GridLines="None">
            
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>--%>
        

    </div>
       

    </form>

    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

   

</body>
</html>
