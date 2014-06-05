Spree.App.Product = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')
  variants: DS.hasMany('variant')
  master: DS.belongsTo('master')

  images: (->
    @get('master.firstObject.images')
  ).property('master.firstObject.images')

  mainImage: (->
    @get('images.firstObject')
  ).property('images.firstObject')
