<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="matches.aspx.cs" Inherits="Growlr_Final.Growlr.Matches" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title id ="matches" runat="server"> Your Matches  </title>
        <script src="petfinder"></script>
        <link href="css/custom.css" rel="stylesheet" />
    </head>
<body>
	<br />
	<br />
	<br />

      <div style ="text-align:center">
        <img src="images/Growlr_Final.png" alt="Dog" width="180" height="141" class="centerImage">
 
         </div>
    <form runat="server">
        <div style ="text-align:center">
         <div>
          
         
           
             <p style="font-size: 20px">Click on a breed to see who's available for adoption! <br />
             Note: The lower the score means greater match. </p>
             <br />
            
             <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" CaptionAlign="Top" Height="191px" style="margin-top: 3px" Width="592px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                 <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:TemplateField HeaderText="Dog Breed" >                  
                       <ItemTemplate>
                           <asp:HyperLink ID="HyperLink1" runat="server" Text ='<%#Eval("Dog Breed") %>' NavigateUrl='<%#"moreInfo.aspx?DogBreed=" + Eval("Dog Breed") %>'></asp:HyperLink>
                       </ItemTemplate>
                       <ControlStyle ForeColor="Black" />
                   </asp:TemplateField>
                   <asp:BoundField HeaderText ="Score" DataField="score" />
               </Columns>

                 <EditRowStyle BackColor="#7C6F57" />
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#007399" Font-Size="20px" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#ccf2ff" Font-Size="20px"/>
                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                 <SortedDescendingHeaderStyle BackColor="#15524A" />

            </asp:GridView>   <br />
            <br />        </div>

     

            


             <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn btn-primary btn-lg" OnClick="reset_Click" />

         
              

          
          
 </div>
</form>
      

  
    </body>
</html>