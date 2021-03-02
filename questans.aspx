<%@ Page Language="C#" AutoEventWireup="true" CodeFile="questans.aspx.cs" Inherits="questans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>

        .container{

            margin:auto;
            padding:10px;
            width:auto;

        }


        .main{
            background-color:darkgrey;
            width:40%;
            margin:auto;
            margin-top:7%;
            box-shadow:black 2px 2px 0.5em;
            border-radius:5px;
        }


    </style>






</head>
<body>
    <div class="main">
    <form id="form1" runat="server">
    <div class="container">
                <h1 class="card-header" style="text-align: center; margin: 10px; padding: 10px;">Add Question & Answer</h1>
               
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Style="font-size:20px;" Text="Enter Your Question:"></asp:Label>
                <asp:TextBox ID="TextBox1" PlaceHolder="Enter Your Question" cssClass="form-control" runat="server" ></asp:TextBox><br />
                <asp:Label ID="Label2" runat="server" Style="font-size:20px;" Text="Enter Your Answer:"></asp:Label>
                <asp:TextBox ID="TextBox2" PlaceHolder="Enter Your Answer" cssClass="form-control" runat="server" TextMode="MultiLine" MaxLength="500"></asp:TextBox><br />
                <asp:Label style="float:left;color:forestgreen;font-size:20px;" ID="Label5" runat="server"  display="none" Visible="False">Your Question & Answer Has Been Added</asp:Label>
            </div><br />



        <div class="center" style="text-align:center;">    
        <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="submit" OnClick="Button1_Click"  />
            </div>

           </div>
    </form>
        </div>
</body>
</html>
