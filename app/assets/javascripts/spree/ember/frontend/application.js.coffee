//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require spree
//= require_self
//= require ./frontend

Spree.Resolver = Ember.DefaultResolver.extend
  resolveTemplate: (parsedName) ->
    Ember.TEMPLATES['spree/ember/frontend/' + parsedName.name] || Ember.TEMPLATES.NOT_FOUND

Spree.App = Ember.Application.create
  LOG_VIEW_LOOKUPS: true,
  LOG_TRANSITIONS: true,
  LOG_TRANSITIONS_INTERNAL: true,
  LOG_ACTIVE_GENERATION: true,
  
  Resolver: Spree.Resolver

  ready: ->
    apiKey = 'ad76617dfee35d1b793d8d67187e85c7075ccea6bed232c9'

    Ember.Logger.debug("Spree API Key: " + apiKey)

    $.ajaxPrefilter (options, originalOptions, xhr) ->
      xhr.setRequestHeader('X-Spree-Token', apiKey)
