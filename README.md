## Lend A Hand

##### It a community based app thats helps volunteers find their volunteering match. This is currently an information web app with a scope of adding additional external API's and organizational features for users.

##### This app is built with ruby on rails and uses the devise gem for user login authetication. It has a favorite feature where users can added a viewed opportunity to their favorites list which shows on their profile page. 

##### Users also have the ability to add and delete organizations and opportunities.

##### This app uses a many-to-many ERD model to connect users and opportunities together.

#### Code im proud of: this code checks to see if users are logged in before it displays the "add to favorites" option.

            <div class= "favorites"> 
               <% if signed_in? %>
                 <% unless current_user.favorite_opportunities.exists?(id: @opportunity.id) %>
		 <%= link_to 'Add to favorites', favorite_opportunities_path(opportunity_id: @opportunity), method: :post %>
	       <% else  %>
		 <%= link_to 'Remove from favorites', favorite_opportunity_path(@opportunity), method: :delete %>
	       <% end %>

#### Challenges

##### This app produced challenges while trying to filter the opportunities by causes as causes was not a model on its own. It also conflicted with the favorites foreign key and the joint tables foreign key. 
 


#### The Future

##### This app hopes to use external api to display weekly volunteer opportunities around the Bay area. It will feature a calendar where these weekly opportunities will be posted. A comment gem will help users add their experiences with a particular opportunity they volunteered for. This app hopes to be a volunteer/personal organizer app for users to keep track for their upcoming volunteer events.


