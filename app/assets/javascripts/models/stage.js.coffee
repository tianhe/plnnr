class Plnnr.Stage extends DS.Model
  name:         DS.attr("string")
  description:  DS.attr("string")
  position:     DS.attr("number")
  hasMany:      DS.hasMany("actions")