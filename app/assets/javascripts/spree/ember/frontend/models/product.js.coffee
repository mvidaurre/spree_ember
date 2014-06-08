Spree.App.Product = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')
  variants: DS.hasMany('variant')
  master: DS.belongsTo('master')
  product_properties: DS.hasMany('product_property')

  images: (->
    @get('master.images')
  ).property('master.images')

  mainImage: (->
    @get('images.firstObject')
  ).property('images.firstObject')
