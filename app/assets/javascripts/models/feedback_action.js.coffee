Lazyweb.FeedbackAction = DS.Model.extend
  main_action:  DS.belongsTo("main_action")
  task:         DS.belongsTo("task")
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
