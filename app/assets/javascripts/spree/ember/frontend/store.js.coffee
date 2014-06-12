Spree.App.ApplicationSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs: {
    master: { embedded: 'always' }
    images: { embedded: 'always' }
    variants: { embedded: 'always' }
  }

  extractArray: (store, type, payload) ->
    delete payload.count
    delete payload.pages
    delete payload.per_page
    delete payload.total_count
    delete current_page

    @_super(store, type, payload)

)

Spree.App.Store = DS.Store.extend
  adapter: DS.RESTAdapter.extend
    namespace: 'api'
