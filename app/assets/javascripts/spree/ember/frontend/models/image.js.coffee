Spree.App.Image = DS.Model.extend
  productUrl: DS.attr('string')
  alt: DS.attr('string')
  smallUrl: DS.attr('string')
  master: DS.belongsTo('master')
