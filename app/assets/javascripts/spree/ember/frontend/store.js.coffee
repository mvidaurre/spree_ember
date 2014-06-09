Spree.App.ApplicationSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs: {
    master: { embedded: 'always' }
    images: { embedded: 'always' }
    variants: { embedded: 'always' }
  }

)

Spree.App.Store = DS.Store.extend
  adapter: DS.RESTAdapter.extend
    namespace: 'api'
