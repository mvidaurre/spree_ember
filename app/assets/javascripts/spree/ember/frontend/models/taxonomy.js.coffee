Spree.App.Taxonomy = DS.Model.extend
  name: DS.attr('string')
  root: DS.belongsTo('root')
