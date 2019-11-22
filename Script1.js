// JavaScript source code
var apiKey = '8i3MC66xNJFywtJXACtIAl4Lp1bDcVGsKXiQ8zivVA7PkLT7nb';

// the next line and function set up the button in our html to be clickable and reactive 
document.addEventListener('DOMContentLoaded', bindButtons);

function bindButtons() {
    document.getElementById('HyperLink1').addEventListener('click', function (event) {
        event.preventDefault();
        var zip = '<%= Session["zip"] %>'; // this line gets the zip code from the form entry
        var url = 'http://api.petfinder.com/pet.getRandom';

        // Within $.ajax{...} is where we fill out our query 
        $.ajax({
            url: url,
            jsonp: "callback",
            dataType: "jsonp",
            data: {
                key: apiKey,
                animal: 'cat',
                'location': zip,
                output: 'basic',
                format: 'json'
            },
            // Here is where we handle the response we got back from Petfinder
            success: function (response) {
                console.log(response); // debugging
                var catName = response.petfinder.pet.name.$t;
                var img = response.petfinder.pet.media.photos.photo[0].$t;
                var id = response.petfinder.pet.id.$t;

                var newName = document.createElement('a');
                var newDiv = document.createElement('div');
                newName.textContent = catName;
                newName.href = 'https://www.petfinder.com/petdetail/' + id;

                var newImg = document.createElement('img');
                newImg.src = img;

                var list = document.createElement("div");
                list.setAttribute("id", "List");
                document.body.appendChild(list);

                newDiv.appendChild(newName);
                list.appendChild(newDiv);
                list.appendChild(newImg);
            }
        });
    })

}