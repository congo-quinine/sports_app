// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


const imgSelector = document.querySelectorAll('#pokeGrid');

const imgArray = ["https://images-na.ssl-images-amazon.com/images/I/61F-Epj6A9L._AC_UL115_.jpg"]


const pictureOn = () =>{
for (let i=0; i<pokeGrid.length; i++){
  pokeGrid[i].addEventListener('click', () =>{
        if(pokeStats[i].style.display == 'none'){
                $(pokeStats[i]).fadeIn(1000);
              return statColor();
      }
    });
  };
return;
};

// <!-- <div class="page_wrapper">
//   <div class="page-style">
//     <h2> Hi,<%= @user.email %> </h2>
//
//       <h2> Please select the sports you'd like to follow </h2>
//
//       <%= form_for @user do |f| %>
//       <%= f.collection_check_boxes(:sport_ids, Sport.all, :id, :name)  %>
//       <%= f.submit "Confirm", class: "btn btn-primary" %>
//       <% end %>
//   </div>
// </div> -->
