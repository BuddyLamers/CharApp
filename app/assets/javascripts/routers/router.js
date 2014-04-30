CharApp.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.users = options.users,
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "": "index",
    "users": "usersIndex",
    "users/:id": "userShow",

  },


  userShow: function(id) {
    var that = this;
    this._getUser(id, function (user) {
      var formView = new CharApp.Views.UserShow({
        model: user
      });
      that._swapView(formView)
    });

  },

  usersIndex: function(id) {
    var indexView = new CharApp.Views.usersIndex({
      collection: this.users,
    })
    this.swapView(indexView)
  }



  _getUser: function (id, callback) {
    var that = this;
    var user = CharApp.users.get(id);
    if (!user) {
      user = new CharApp.Models.User({
        id: id
      });
      user.collection = this.users
      user.fetch({
        success: function () {
          that.users.add(user);
          callback(user)
        }
      });
    } else {
      callback(user);
    }
  },

  _swapView: function (view) {
    this.currentView || this.currentView.remove();
    this.currentView = view
    this.$rootEl.html(view.render().$el);
  },

});
