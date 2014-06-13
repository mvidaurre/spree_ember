Spree.App.Root = DS.Model.extend
  name: DS.attr('string')
  permalink: DS.attr('string')
  prettyName: DS.attr('string')
  taxons: DS.hasMany('taxon')
