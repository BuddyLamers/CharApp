CharApp.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.users = options.users,
    this.characters = options.characters,
    this.starredCharacters = options.starredCharacters,
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "": "charactersIndex",
    "forked":"charactersIndexForked",
    "starred":"charactersIndexStarred",
    "public":"charactersIndexPublic",
    "private":"charactersIndexPrivate",
    "users": "usersIndex",
    "users/:id": "userShow"
  },

  // pass variable collections?
  charactersIndex: function() {
    var charactersIndexView = new CharApp.Views.CharactersIndex({
      collection: this.characters
    })
    this._swapView(charactersIndexView)
  },
// there should be some way to do this by passing a string into the function?
  charactersIndexPublic: function() {
    var charactersIndexView = new CharApp.Views.CharactersIndex({
      collection: this.characters.where({is_private: false})
    })
    this._swapView(charactersIndexView)
  },

  charactersIndexPrivate: function() {
    var charactersIndexView = new CharApp.Views.CharactersIndex({
      collection: this.characters.where({is_private: true})
    })
    this._swapView(charactersIndexView)
  },

  charactersIndexStarred: function() {
    var charactersIndexView = new CharApp.Views.CharactersIndex({
      collection: this.starredCharacters
    })
    this._swapView(charactersIndexView)
  },

  charactersIndexForked: function() {
    var charactersIndexView = new CharApp.Views.CharactersIndex({
      collection: this.characters.where({is_fork_duplicate: true})
    })
    this._swapView(charactersIndexView)
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
    var indexView = new CharApp.Views.UsersIndex({
      collection: this.users,
    })
    this.swapView(indexView)
  },



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
    this.currentView && this.currentView.remove();
    this.currentView = view
    this.$rootEl.html(view.render().$el);
  }

});
