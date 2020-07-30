![enter image description here](https://photos.app.goo.gl/LQMW7EWkTvc1mpc8A)

Countless dogs are returned to shelters everyday--usually due to contradicting personalities. For example: The Siberian husky is one of the most re-homed dogs because people often don't realize how energetic they are, and how often their required to be walked. 
When a dog is rehomed, this can effect their mental heath, which can cause behavioral issues, like separation anxiety. 

# How Can Growlr Help?

This program is designed to match you with a breed, based on your life details and personality traits. The program then shows you adoptable dogs in your area, that match your criteria, using the Petfinder API. 

# Kiosk

Using a 7" touch screen, a recycled dog house, and a nifty painting job, the Growlr Kiosk is designed to catch a users attention, enticing them to walk up to the kiosk, and find their match. 

Here's the dog house originally. It was purchased online, on Facebook Marketplace. 

![enter image description here](https://photos.app.goo.gl/KcQM1GuRnCMtUS4SA)

We then basically just sawed a 1/4 of it off. 

![enter image description here](https://photos.app.goo.gl/HMu1pfzh9yPjLosf8)

And then came the paint! 

![enter image description here](https://photos.app.goo.gl/i8cJMZu1wz9hYTJZ6)

We created a cart to rest the house on. The cart puts the kiosk at a perfect level for human use. The wheels allow for easy transportation. The synthetic grass adds an enviornment. 

![enter image description here](https://photos.app.goo.gl/Y8oA3m68bGs9jhvMA)

Crafting the sign.

![enter image description here](https://photos.app.goo.gl/A9o4uouW4FTARR8P7)

Adding some flair.

![enter image description here](https://photos.app.goo.gl/HorHBHMK9xsDZcjB8)

Finally, the screen was added, some dog accessories and a key pad for the user to enter in their zip code. 

![enter image description here](https://photos.app.goo.gl/Ng3tgxA3zkzS8f8w6)

![enter image description here](https://photos.app.goo.gl/7K4gPaR3Xf8v3up39)

![enter image description here](https://photos.app.goo.gl/tcWwHn1SCJgxunVk9)

#  Coding
**Languages and Tools Used:**
 - ASP .NET
 - C# 
 - HTML
 - CSS
 - JavaScript 
 - MS SQL
 - [Petfinder API](https://www.petfinder.com/developers/api-docs) (Utilized a JavaScript Petfinder SDK to generate a new token at every use)
 - Primarily programmed with Visual Studio 2019
 - API testing with cURL
 - Microsoft SQL Server Management Studio

## Current Development

This is currently in beginning stages and has a "walk up and find your match" interface, with no registering required. Future development could enable profile integration, a more enhanced matching algorithm and other animals. 

## Database 

![enter image description here](https://photos.app.goo.gl/XdgKSF82791EWMVy9)

## Algorithm 

![enter image description here](https://photos.app.goo.gl/iPZe7ukzqU3jepSW8)

In addition to this algorithm, Growlr also uses the Petfinder API's filtering queries. If you have children, cats or dog, Growlr will only show you adoptable dogs that are recorded as being good with children, cats or dogs.

## How the Data Moves

![enter image description here](https://photos.app.goo.gl/PBuwz3ma2XcHz5wt9)

## Connecting to Growlr

 1. Copy and Paste the contents of the [GrowlrDatabaseFinal.txt](https://github.com/cynthiasidlauskas/Growlr/blob/master/GrowlrDatabaseFinal.txt "GrowlrDatabaseFinal.txt") file to your Microsoft SQL Server Management Studio. 
 2. Execute the data. 
 3. In properties, Copy the connection string. 
 4. Download everything that has the  "Final Project Commit ---- Need Database to operate" comment and open in Visual Studio or your favorite code editor. 
 5. Paste your connection string into the Web.Config file, in the appropriate place within the connectionString angular brackets.

## Video Demo

Click this [link](https://photos.app.goo.gl/C935FMfwwiMZ8u9Z6) to view a view a video demonstration of Growlr! 
