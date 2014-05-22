# For more information see: http://emberjs.com/guides/routing/

Plnnr.Router.map ()->
  @resource('stages', { path: '/'})
  @resource('tasks', { path: '/'}, ->
      @resource('action', { path: '/action/:action_id'})
  )

class Plnnr.StagesRoute extends Ember.Route
  setupController: (controller, stages) ->
    controller.set('model', stages)    
  # model: ->
  #   @store.find('stages')


class Plnnr.ActionRoute extends Ember.Route
  model: (params) ->
    @store.find('action', params.action_id)
