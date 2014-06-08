Spree.App.Product = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')
  master: DS.belongsTo('master')

  images: (->
    @get('master.images')
  ).property('master.images')

  mainImage: (->
    @get('images.firstObject')
  ).property('images.firstObject')
