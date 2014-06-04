Spree.App.ProductsRoute = Ember.Route.extend
  model: ->
   @store.find('product')
  
  renderTemplate: ->
    @render 'products', outlet: 'content'
