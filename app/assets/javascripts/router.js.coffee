# For more information see: http://emberjs.com/guides/routing/

Plnnr.Router.map ()->
  @resource 'stages', { path: '/' }
  @resource 'stage', { path: 'stages/:stage_id' }, ->
    @resource 'task', { path: 'tasks/:task_id' }

Plnnr.ApplicationRoute = Ember.Route.extend
  model: (params) ->
    @store.find('stage')
  renderTemplate: ->
    @render()
    @render('stages/index', 
      outlet: 'stages',
      into: 'application'
    )

Plnnr.StagesRoute = Ember.Route.extend
  model: (params) ->
    @store.find('stage')

Plnnr.StageRoute = Ember.Route.extend
  model: (params) ->
    @store.find('stage', params.stage_id)
  renderTemplate: ->
    @render('stages/show')

Plnnr.TaskRoute = Ember.Route.extend
  model: (params) ->    
    @store.find('task', params.task_id)
  renderTemplate: ->
    @render('tasks/show')
