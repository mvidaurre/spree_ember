Spree.App.ProductsIndexRoute = Ember.Route.extend
  model: ->
    @store.find('product')
  
  renderTemplate: ->
    @render 'products', outlet: 'content'
