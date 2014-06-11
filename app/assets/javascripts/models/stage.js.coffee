Lazyweb.Stage = DS.Model.extend
  tasks:        DS.hasMany("task")
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
