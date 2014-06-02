Spree.App.ProductRoute = Ember.Route.extend
  model: (params) ->
    @store.find('product', params.slug)
  
  renderTemplate: ->
    @render 'product', outlet: 'content'
