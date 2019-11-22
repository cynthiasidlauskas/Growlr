<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="four.aspx.cs" Inherits="Growlr_Final.Growlr.Four
    " %>



<!DOCTYPE html>


<html lang="en">
<head>
<title id ="four" runat="server"> Questionnaire Page 3 of 4  </title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
</head>
    <body>
		<br />
		<br />
		<br />
    <div style="text-align:center">
		
        <img src="images/Growlr_Final.png" alt="Dog" width="180" height="141" class="centerImage">

    </div>
          

    <div style ="text-align:center">
 <form runat="server">     
    
            <br />
            <br />
            
            <p style="font-size:20px">Are you seeking a hypoallergenic dog?</p>
            
            <asp:RadioButton ID="noHypo" GroupName="hypoallergenic" CssClass="Space" text=" No" runat="server"  Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesHypo" GroupName="hypoallergenic" CssClass="Space" Text=" Yes" runat="server"></asp:RadioButton>
            <br />
       
           
            <p style="font-size:20px">Do you prefer spending your free time at home, rather than going out?</p>
            
            <asp:RadioButton ID="noHomebody" Text =" No" CssClass="Space" GroupName="homebody" runat="server"  Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesHomebody" Text =" Yes" CssClass="Space" GroupName="homebody" runat="server"></asp:RadioButton>
            <br />
          
            
            <p style="font-size:20px">Are you often away from home? </p>
           
            <asp:RadioButton ID="noTravel" Text=" No"  CssClass="Space" GroupName="travel" runat="server"  Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesTravel" Text=" Yes" CssClass="Space" GroupName="travel" runat="server"></asp:RadioButton>
      
            <br />
         <br />
             
            
         <asp:Button ID="Button9" runat="server" Text="Next" OnClick="Button9_Click" CssClass="btn btn-primary btn-lg"  />


 </form>
    </div>
</body>
</html>