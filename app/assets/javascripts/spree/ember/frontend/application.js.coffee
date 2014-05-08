//= require jquery
//= require handlebars
//= require ember
//= require spree
//= require_self
//= require ./frontend
//= require tree.jquery

Spree.Resolver = Ember.DefaultResolver.extend
  resolveTemplate: (parsedName) ->
    Ember.TEMPLATES['spree/ember/frontend/' + parsedName.name]  ||
    Ember.TEMPLATES.NOT_FOUND

Spree.App = Ember.Application.create
  LOG_VIEW_LOOKUPS: true,
  LOG_TRANSITIONS: true,
  LOG_TRANSITIONS_INTERNAL: true,
  LOG_ACTIVE_GENERATION: true,

  Resolver: Spree.Resolver,

$.ajaxPrefilter (options, originalOptions, jqXHR) ->
  jqXHR.setRequestHeader('X-Spree-Token', 'ad76617dfee35d1b793d8d67187e85c7075ccea6bed232c9')
