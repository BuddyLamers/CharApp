window.CharApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('#main-content');
    var $sidebar = $('#sidebar');
    CharApp.Users = new CharApp.Collections.Users();

    var sidebarView = new CharApp.Views.Sidebar({
      forkedCharacters:
      starredCharacters: 
    });
    $sidebar.html(sidebarView.render().$el)


    CharApp.Users.fetch({
      success: function {
        new CharApp.Routers.Router({
          $rootEl: $rootEl,
          users: CharApp.users
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
