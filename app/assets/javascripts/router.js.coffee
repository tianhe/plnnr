# For more information see: http://emberjs.com/guides/routing/

Lazyweb.Router.map ()->
  @resource 'stages', { path: '/' }
  @resource 'stage', { path: 'stages/:stage_id' }, ->
    @resource 'task', { path: 'tasks/:task_id' }

Lazyweb.ApplicationRoute = Ember.Route.extend
  model: (params) ->
    @store.find('stage')
  renderTemplate: ->
    @render()
    @render('stages/index', 
      outlet: 'stages',
      into: 'application',
      controller: 'stages'
    )

# Lazyweb.StagesRoute = Ember.Route.extend
#   model: (params) ->
#     @store.find('stage')

Lazyweb.StageRoute = Ember.Route.extend
  model: (params) ->
    @store.find('stage', params.stage_id)
  renderTemplate: ->
    @render('stages/show')

Lazyweb.TaskRoute = Ember.Route.extend
  model: (params) ->    
    @store.find('task', params.task_id)
  renderTemplate: ->
    @render('tasks/show')
