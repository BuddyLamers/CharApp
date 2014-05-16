CharApp.Views.Sidebar = Backbone.View.extend({

  template: JST['bars/sidebar'],

  render: function () {
    var that = this;
    var renderedContent = this.template({
      user: this.model
    });

    this.$el.html(renderedContent)
    return this;
  }

});
