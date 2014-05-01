CharApp.Views.CharactersIndex = Backbone.View.extend({

  template: JST['characters/index'],

  render: function() {
    var renderedContent = this.template({
      characters: this.collection
    });
    this.$el.html(renderedContent);
    return this;
  }


});
