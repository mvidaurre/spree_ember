Spree.App.Taxon = DS.Model.extend
  name: DS.attr('string')
  permalink: DS.attr('string')
  prettyName: DS.attr('string')
  roots: DS.hasMany('root')
