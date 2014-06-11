Lazyweb.Task = DS.Model.extend
  stage:        DS.belongsTo("stage")
  actions:      DS.hasMany("action")
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
