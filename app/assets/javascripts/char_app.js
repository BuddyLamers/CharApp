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
    CharApp.characters = new CharApp.Collections.Characters();
    CharApp.user = new CharApp.Models.User();
    var sidebarView = new CharApp.Views.Sidebar({
      model: user,
      collection: characters
    });
    $sidebar.html(sidebarView.render().$el)


    CharApp.user.fetch({
      success: function {
        new CharApp.Routers.Router({
          $rootEl: $rootEl,
          user: CharApp.user
        })
        Backbone.history.start();
      },
      error: function() {

      }
    });
    alert('Hello from Backbone!');
  }
};

// $(document).ready(function(){
//   CharApp.initialize();
// });
