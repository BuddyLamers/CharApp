CharApp.Views.Sidebar = Backbone.View.extend({

  render: function () {
    var that = this;
    that.$el.html(that.template({
      characters: that.collection,

    }));
    return this;
  },

});