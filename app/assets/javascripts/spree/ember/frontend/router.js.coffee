# For more information see: http://emberjs.com/guides/routing/

Spree.App.Router.map ->
  @resource 'products', ->
    @resource 'product', { path: ':slug' }
