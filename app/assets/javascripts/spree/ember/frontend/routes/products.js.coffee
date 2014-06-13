Spree.App.ProductsRoute = Ember.Route.extend
  model: ->
    @store.find('product')

  renderTemplate: ->
    controller = @controllerFor('taxonomy')
    @render 'products', outlet: 'content'
    @render 'taxonomies', outlet: 'sidebar', controller: controller
