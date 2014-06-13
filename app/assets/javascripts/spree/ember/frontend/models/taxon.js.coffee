Spree.App.Taxon = DS.Model.extend
  name: DS.attr('string')
  permalink: DS.attr('string')
  pretty_name: DS.attr('string')
  root: DS.hasMany('root')
