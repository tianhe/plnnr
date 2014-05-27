Plnnr.MainAction = DS.Model.extend
  task:         DS.belongsTo("task")
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
