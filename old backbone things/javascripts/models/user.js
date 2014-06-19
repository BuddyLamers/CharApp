CharApp.Models.User = Backbone.Model.extend({
  validate: function (attributes) {
    if(!attributes) {
      return "no attributes"
    }
    if (!attributes.username || attributes.username == "") {
      return "cannot have an empty username"
    }
  }
});
