# For more information see: http://emberjs.com/guides/routing/

Spree.App.Router.map ->
  @route 'products', { path: '/' }


Spree.App.ProductsRoute = Ember.Route.extend
  model: ->
    @store.find('product')

  renderTemplate: ->
    @render 'products', outlet: 'content'
