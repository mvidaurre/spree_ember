Spree.App.TaxonomiesRoute = Ember.Route.extend
  model: ->
    @store.find('taxonomy')

  renderTemplate: ->
    @render 'taxonomies', outlet: 'sidebar'
