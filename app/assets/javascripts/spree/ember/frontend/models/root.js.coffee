Spree.App.Root = DS.Model.extend
  name: DS.attr('string')
  permalink: DS.attr('string')
  taxons: DS.hasMany('taxon')
  taxonomies: DS.hasMany('taxonomy')
