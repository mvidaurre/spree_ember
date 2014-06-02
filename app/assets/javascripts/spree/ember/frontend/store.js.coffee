Spree.App.ApplicationSerializer = DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs: {
    images: { embedded: 'always' }
    variants: { embedded: 'always' }
  }

  extractMeta: (store, type, payload) ->
    metadata = {}
    $.each payload, (key, value) ->
      if (key != type.typeKey && key != type.typeKey.pluralize())
        metadata[key] = value
        delete payload[key]

    store.metaForType(type, metadata)
)

Spree.App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api'
