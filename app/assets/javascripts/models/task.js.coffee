Lazyweb.Task = DS.Model.extend
  stage:        DS.belongsTo("stage")
  mainActions:  DS.hasMany("mainAction")
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
