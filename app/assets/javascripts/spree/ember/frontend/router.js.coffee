# For more information see: http://emberjs.com/guides/routing/

Spree.App.Router.map ->
  @resource 'products', { path: '/' }, ->
    @resource 'product', { path: ':slug' }
  
  @resource 'taxonomies'
