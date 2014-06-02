# For more information see: http://emberjs.com/guides/routing/

Spree.App.Router.map ->
  @route 'index', { path: '/' }
  @resource 'products', ->
    @resource 'product', { path: ':slug' }
