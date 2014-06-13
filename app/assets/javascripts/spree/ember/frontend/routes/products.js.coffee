Spree.App.ProductsRoute = Ember.Route.extend
  model: ->
    @store.find('product')

  setupController: ->
    @controllerFor('taxonomy').set('content', @store.find('taxonomy'))

  renderTemplate: ->
    @render 'products', outlet: 'content'
    @render 'taxonomies', outlet: 'sidebar'
