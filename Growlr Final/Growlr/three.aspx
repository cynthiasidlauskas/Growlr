<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="three.aspx.cs" Inherits="Growlr_Final.Growlr.Three" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <title id ="three" runat="server"> Questionnaire Page 2 of 4  </title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
    </head>
    <body>
		<br/>
			<br />
		<br/>

     <div style="text-align:center">
        <img src="images/Growlr_Final.png" alt="Dog" width="180" height="141" class="centerImage">
  

    <form runat="server"> 
       <br />
		<br />
           <p style="font-size:20px">Do you have children under the age of 10? </p>
           
          <asp:RadioButton ID="noChildren" GroupName="children" CssClass="Space" runat="server" text=" No" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesChildren" GroupName= "children" CssClass="Space" runat="server" text=" Yes"></asp:RadioButton>
            <br />
            
           <p style="font-size:20px">Do you currently have dog(s) living with you?</p>
          <asp:RadioButton ID="noDogs" GroupName= "dogs" CssClass="Space" Text="No" runat="server" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesDogs" GroupName="dogs" CssClass="Space" Text ="Yes" runat="server"></asp:RadioButton>
             <br />
            
           <p style="font-size:20px"> Do you currrently have cat(s) living with you?</p>
          
          <asp:RadioButton ID="noCats" GroupName= "cats" CssClass="Space" Text="No" runat="server" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesCats" GroupName="cats" CssClass="Space" Text ="Yes" runat="server"></asp:RadioButton>
            <br />
            
        
        <br />
         <asp:Button ID="Button2" CssClass="btn btn-primary btn-lg" runat="server" Text="Next" OnClick="Button2_Click" />
     
    </form> 
       
  </div>
    </body>
</html>
