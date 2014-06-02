//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require spree
//= require_self
//= require ./frontend

Spree.App = Ember.Application.create
  ready: ->
    apiKey = 'ad76617dfee35d1b793d8d67187e85c7075ccea6bed232c9'

    Ember.Logger.debug("Spree API Key: " + apiKey)

    $.ajaxPrefilter (options, originalOptions, xhr) ->
      xhr.setRequestHeader('X-Spree-Token', apiKey)
