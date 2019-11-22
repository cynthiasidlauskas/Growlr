<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="five.aspx.cs" Inherits="Growlr_Final.Growlr.Five" %>


<!DOCTYPE html>


<html lang="en">
<head>
<title id ="four" runat="server"> Questionnaire Page 4 of 4  </title>
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
             
            <p style="font-size: 20px">Do you consider yourself a athletic person?</p>
           
           <asp:RadioButton ID="noAthletic" Text=" No" CssClass="Space" GroupName="athletic" runat="server" ></asp:RadioButton>
            <asp:RadioButton ID="sometimesAthletic" Text=" Sometimes" CssClass="Space" GroupName="athletic" runat="server" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesAthletic" Text=" Yes" CssClass="Space" GroupName="athletic" runat="server"></asp:RadioButton>
            <br />
          
           
            <p style="font-size: 20px">Do you like a good challenge? </p>
            
           <asp:RadioButton ID="noChallenge" Text=" No" CssClass="Space" GroupName="challenge" runat="server" ></asp:RadioButton>
            <asp:RadioButton ID="sometimesChallenge" Text=" Sometimes" CssClass="Space" GroupName="challenge" runat="server" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesChallenge" Text=" Yes" CssClass="Space" GroupName="challenge" runat="server"></asp:RadioButton>
             <br />
            
           <p style="font-size:20px"> Do you prefer outdoor activities?</p>
           
            <asp:RadioButton ID="noOutdoor" Text=" No" CssClass="Space" GroupName="outdoor" runat="server"></asp:RadioButton>
            <asp:RadioButton ID="sometimesOutdoor" Text=" Sometimes" CssClass="Space" GroupName="outdoor" runat="server" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesOutdoor" Text=" Yes"  CssClass="Space" GroupName="outdoor" runat="server"></asp:RadioButton>
             <br />
           
            <p style="font-size:20px">Do you consider yourself to be an affectionate person?</p>
           
            <asp:RadioButton ID="noAffectionate" Text=" No" CssClass="Space" GroupName="affectionate" runat="server"></asp:RadioButton>
            <asp:RadioButton ID="sometimesAffectionate" Text=" Sometimes" CssClass="Space" GroupName="affectionate" runat="server" Checked="true"></asp:RadioButton>
            <asp:RadioButton ID="yesAffectionate" Text=" Yes" CssClass="Space" GroupName="affectionate" runat="server"></asp:RadioButton>
            <br />
            <br />
	
         <asp:Button ID="Button7" runat="server" Text="Next" OnClick="Button7_Click" CssClass="btn btn-primary btn-lg"  />


 </form>
    </div>
</body>
</html>