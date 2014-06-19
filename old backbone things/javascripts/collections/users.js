CharApp.Collections.Users = Backbone.Collection.extend({

  url: 'user/:id',
  model: CharApp.Models.User,

  comparator: function(user) {
    return user.get('characters_count')
  },

  findByCharactersCount: function(charactersCount) {
    return this.filter(function(user) {
      return post.get('characters_count') == charactersCount
    });
  }
});
