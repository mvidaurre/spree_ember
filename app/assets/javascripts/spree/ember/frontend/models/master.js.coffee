Spree.App.Master = DS.Model.extend
  images: DS.hasMany('image')
  product: DS.belongsTo('product')
