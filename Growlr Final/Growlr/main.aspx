<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Growlr_Final.Growlr.Main" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title id ="main" runat="server"> Growlr </title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <style type="text/css">
            .header-content {
                height: 675px;
            }
        </style>
 </head>

   <body>

       <form id="form1" runat="server">


		   <br />
		   <br />
		   <br />

        <div class="header-content" style="text-align:center">
            <div class="header-content-inner">
                <IMG SRC="images/Growlr_Final.png" ALT="Growlr Logo" WIDTH=300 HEIGHT=250>
            </div>
        
           <p style="font-size:20px"> Find your new best friend.</p>
            
            <br />
            <br />
            <br />
            <asp:Button ID="ButtonMain" CssClass="btn btn-primary btn-lg" runat="server" Text="Find My Match" OnClick="ButtonMain_Click" />
         </div> 

       </form>
   
    </body>
</html>
