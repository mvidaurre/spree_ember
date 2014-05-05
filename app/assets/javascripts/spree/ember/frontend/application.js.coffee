//= require jquery
//= require handlebars
//= require ember
//= require spree
//= require_self
//= require ./frontend

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
  jqXHR.setRequestHeader('X-Spree-Token', '13710f191e76e85e411760f810c5ba1ecdba0815da5a3d31')
