Spree.App.ProductsRoute = Ember.Route.extend
  model: ->
   return @store.find('product')
  
  renderTemplate: ->
    @render 'products', outlet: 'content'
