<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="two.aspx.cs" Inherits="Growlr_Final.Growlr.Two" %>

<!DOCTYPE html>


<html lang="en">
    <head>
        <title id ="two" runat="server"> Questionnaire Page 1 of 4  </title>
       
        <link href="css/custom.css" rel="stylesheet">
    </head>
<body>

	<br />
	<br />
	<br />
     <div style="text-align:center; height: 761px;">
         <img src="images/Growlr_Final.png" alt="Dog" width="180" height="141" class="centerImage">
    <p style="font-size:20px">To find your perfect match, let's begin with some general information.</p>
          
    
    <form name="pet_form"   runat="server" style="height: 385px; margin-bottom: 0px;" defaultfocus="zip">
     
   
           <p style="font-size:20px"> Zip Code:</p>
        <asp:TextBox id="zip" runat="server" MaxLength="5"> </asp:TextBox>
      
      
       
       
       <br />
    <br /> 
        <br />
        <br />
        <asp:Button id="submitZip" type="submit" runat="server"  Text="Next" CssClass="btn btn-primary btn-lg" OnClick="SubmitZip_Click" />
       
        </form>
       </div>
  
</body>
</html>
 