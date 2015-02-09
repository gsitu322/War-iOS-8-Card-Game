#War Game App
iOS 8 War Card App created with Swift

#Introduction
War is a card game played with two people. A deck of cards is split between two players and each player will flip a card. The player with the higher card wins the cards on the table. If there is a tie, the players continue flipping till one player has the higher card. In this variation the card values go from ace being the lowest to king being the highest. 

The game of war is finally over when one player receives all the cards making him the victor.

#How It works
When the app is initialized it takes us straight to the play screen. Behind the scenes we initialize all the variables such as the card back images, the list of cards we can choose from(using a subset of a 52 card deck), player and enemy labels, and player and enemy scores. We have also created a button "DEAL" to start the round. 

When the "DEAL" button is pressed a random number generator is used to select a card for both players. Using this number we find the corresponding card to show on the view. Then simply the two numbers are compared to see who has the larger number. The player with the larger number wins the round. The score is then reflected from the controller to the view. 

#Read More 
You can read more about my experience with Xcode, Swift, and this game on my [blog](http://gordonsitu.com/war/)


#To Dos
- Upgrade the game to a standard deck
- Add animations for wins
- Add ability for 2 players
