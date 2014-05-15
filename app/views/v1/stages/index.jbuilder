json.stages @stages.each do |stage|
  json.partial! 'v1/stages/stage', stage: stage
end
