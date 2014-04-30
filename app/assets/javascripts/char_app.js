window.CharApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    CharApp.Users = new CharApp.Collections.Users();
    CharApp.Users.fetch({
      success: function {
        new CharApp.Routers.Router({
          $rootEl: $("#content"),
          users: CharApp.users
        })
        Backbone.history.start();
      }
    });
    alert('Hello from Backbone!');
  }
};

// $(document).ready(function(){
//   CharApp.initialize();
// });
