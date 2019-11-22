<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="moreInfo.aspx.cs" Inherits="Growlr_Final.Growlr.moreInfo" %>

<!DOCTYPE html>
<html>
<head>
    
      <title>Adoptable Pets in Your Area</title> 
    <link href="css/custom.css" rel="stylesheet" />
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://unpkg.com/@petfinder/petfinder-js/dist/petfinder.min.js"></script>

   
    
    <meta charset="utf-8" />
   
</head>
<body>
	<br />
	<br />
	<br />
	  <script> 
      
        var pf = new petfinder.Client({apiKey: "8i3MC66xNJFywtJXACtIAl4Lp1bDcVGsKXiQ8zivVA7PkLT7nb", secret: "5VpK61e7AJmYzmgfVlUoZdnSXy60fRByuugBV7XM" });
        var myBreed = '<%=Request.QueryString["DogBreed"]%>';
        myBreed2 = myBreed.replace(/\s+/g, '-').toLowerCase();
        var myZip = '<%=Session["zip"]%>';
        var kids = '<%=Session["children"]%>';
        var cats = '<%=Session["cats"]%>';
          var dogs = '<%=Session["dogs"]%>';

          if (kids = "false") {
              kids = null;
          }
          if (cats = "false") {
              cats = null;
          }
          if (dogs = "false") {
              dogs = null;
          }

        
          pf.animal.search({
              type: 'dog',
              status: 'adoptable',
              location: myZip,
              breed: myBreed2,
              good_with_children: kids,
              good_with_cats: cats,
              good_with_dogs: dogs,
              distance: 100
           

          })
              .then(function(response) {
                  // Do something with `response.data.animals`
                  //console.log(response.data.animals[0]); 
                 
                  console.log(response.data.animals);
                  //var array = response.data.animals;

                  //var randomValue = array[Math.floor(array.length * Math.random())];

                  //added

                  /*
                  for (index = 0; index < response.data.animals.length; index++)
                  {
                      console.log(response.data.animals[index].name);

                  }
                  */

                  table = document.getElementById("table");

                  for (index = 0; index < response.data.animals.length; index++) {

                      console.log(response.data.animals[index].status);

                      var newRow = table.insertRow(table.length);

					  var cell = newRow.insertCell(0);
					  var dogName = response.data.animals[index].name;
						  var dogName2 = dogName.split(' ')[0]
                      if (response.data.animals[index].photos.length > 0) {
						  cell.innerHTML = '<img src="' + response.data.animals[index].photos[0].medium + '">' 
                      }
                      else {
                          cell.innerHTML = 'No Photo'
                      }
                      
					  var cell = newRow.insertCell(1);
					  var dogName = response.data.animals[index].name;
					  var dogName2 = dogName.split(' ')[0]
                      cell.innerHTML = '<b>' + dogName2 + '</b>' + '<br>(' + response.data.animals[index].age + ')' + '<br>ID: ' + response.data.animals[index].id;

                      var cell = newRow.insertCell(2);
                      var contactEmail = '';
                      var contactPhone = '';
					  if (response.data.animals[index].contact.email != null) { contactEmail = response.data.animals[index].contact.email }
					  if (response.data.animals[index].contact.phone != null) { contactPhone = response.data.animals[index].contact.phone }

                      cell.innerHTML = response.data.animals[index].contact.address.city + ', ' + response.data.animals[index].contact.address.state + '<br>' + contactPhone + '<br>' + contactEmail;
                      
                      //var cell = newRow.insertCell(3);
                      //cell.innerHTML = response.data.animals[index].description;

                      
                       
                  }

                 
				  //below is code to print one individual dog and their attributes


                 // var dogName = response.data.animals[0].name;
                 // var dogName2 = dogName.split(' ')[0];
                 // var dogAge = response.data.animals[0].age;
                 // var dogID = response.data.animals[0].id;
                 // var img = response.data.animals[0].photos[0].medium;
                 // var shelterAddress = response.data.animals[0].contact.address.address1;
                 // var shelterAddress2 = response.data.animals[0].contact.address.address2;
                 // var shelterCity = response.data.animals[0].contact.address.city;
                 // var shelterState = response.data.animals[0].contact.address.state;
                 // var shelterEmail = response.data.animals[0].contact.email;
                 // var shelterNum = response.data.animals[0].contact.phone;
                 // var petUrl = response.data.animals[0].url;
                 // var petDescription = response.data.animals[0].description;
                
                 //var newImg = document.createElement('img');
                 // newImg.src = img;
                  
                 // //document.body.appendChild(newImg).style.alignSelf = "auto";
                 // document.getElementById('dogImg').appendChild(newImg);
                 // document.getElementById('name').innerHTML = ("<b>" + dogName2 + "</b>");
                 // //document.getElementById('petDescript').innerHTML = ("<b>" + petDescription + "</b>");
                 // document.getElementById('id').innerHTML = ("<b>Animal ID: </b>" + dogID);
                 // document.getElementById('age').innerHTML = ("<b>Age: </b>" + dogAge);
                 // document.getElementById('shelter').innerHTML = ('<b>Address: </b>' + shelterAddress + ', ' + shelterAddress2 + ', ' + shelterCity + ', ' + shelterState );
                 // document.getElementById('email').innerHTML = ("<b>Email: </b>" + shelterEmail);
                 // document.getElementById('phoneNum').innerHTML = ("<b>Phone Number: </b>" + shelterNum);
                 
              
              });


        </script>
      <div style ="text-align:center">
          <img src="images/Growlr_Final.png" alt="Dog" width="180" height="141" class="centerImage">
          <br/>
         <p style="font-size: 20px;"> You've been matched! </p>
          <%--<p id="name" style="font-size:x-large"></p>--%>
      </div>
	<br />
	<br />

    <div id="wrapper" style ="text-align:center">

          <style>
        table {border-collapse:collapse; margin-left:auto; margin-right:auto;
			   padding: 2px; border-spacing:20px;
        }
        table, th, td {border: 0px solid black;}
		td {font-size: 20px;border-bottom: 1px solid #ddd; padding-right:20px}
	
    </style>
        <table id="table" border="0">
            
            
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </table>
       
<!--

      <div style ="display:inline-block; vertical-align:top; margin-right: 20px">
         <p id ="dogImg" style="border: 1px solid black; box-shadow:10px 10px 5px grey" ></p> 
       </div>
    
      <div style ="display:inline-block; vertical-align:top">
       <p id ="id"></p>
        <p id ="age"></p>
        <p id ="shelter"></p>
        <p id ="phoneNum"></p>
          <p id="email"></p>
          <br />

      </div>
        -->
    </div>

         <form runat="server">   
    <asp:HiddenField ID="zip" runat="server" />
    
   <asp:HiddenField ID="kids" runat="server" />
    
   <asp:HiddenField ID="dog" runat="server" />
         
   <asp:HiddenField ID="cat" runat="server" />
    
  <asp:HiddenField ID="dogBreed" runat="server" />
        

          
      <div style ="text-align:center">
          <br />
          <br />
         
      
          

    <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn btn-primary btn-lg"  OnClick="reset_Click" Style="margin-right:30px" />
          <asp:Button ID="back" runat="server" Text="Back to Breeds" CssClass="btn btn-primary btn-lg" OnClick="back_Click" Style="margin-right:30px"  />
                 
      </div>     

         </form>  


   
</body> 

</html>