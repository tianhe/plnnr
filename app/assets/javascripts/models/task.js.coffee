Plnnr.Task = DS.Model.extend(
  stage:        DS.belongsTo("stage")
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
)