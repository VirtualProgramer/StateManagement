<%@ Page Language="C#"  Trace="true"%>

<!DOCTYPE html>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        //1a / 2b
        HttpCookie hc = new HttpCookie("aa");

        hc.Values.Add("1", "A");
        hc.Values.Add("2", "B");

        Response.Cookies.Add(hc);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpCookie hc = Request.Cookies["aa"];

        foreach (string key in hc.Values.Keys)
        {
            Label1.Text += key + "-" + hc.Values[key] + "<br/>";
        }
        //Label1.Text = hc.Values["1"] + "-" + hc.Values["2"];
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
