<%@ Page Language="C#" Trace="true" %>

<!DOCTYPE html>

<script runat="server">
    private string str;

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["aa"].Value = TextBox1.Text;
        //Response.Cookies["aa"].Expires = DateTime.Now.AddMinutes(3);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["aa"].Value;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
