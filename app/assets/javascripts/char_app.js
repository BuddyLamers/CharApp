window.CharApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    // console.log(characters)
//     console.log(user)
    var $rootEl = $('#main-content');
    var $sidebar = $('#sidebar');

    var json = $.parseJSON($('#bootstrapped-data-json').html())
    CharApp.characters = new CharApp.Collections.Characters(json.characters);
    CharApp.user = new CharApp.Models.User(json.user);
    CharApp.current_user = new CharApp.Models.User(json.current_user);
    CharApp.starredCharacters = new CharApp.Collections.Characters(json.starredCharacters);


    var sidebarView = new CharApp.Views.Sidebar({
      model: CharApp.user
    });
    $sidebar.html(sidebarView.render().$el);


    // possibly need to pass lots of things here.
    new CharApp.Routers.Router({
     $rootEl: $rootEl,
     characters: CharApp.characters,
     starredCharacters: CharApp.starredCharacters
    })
    Backbone.history.start();
  }
};

// $(document).ready(function(){
//   CharApp.initialize();
// });
