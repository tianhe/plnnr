# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stage = Stage.create(name: 'Presearch', position: 1)

task = stage.tasks.create(name: 'Annual Income', description: 'Your annual income is a heavy determinant to your mortgage rate.', position: 1)
action = task.main_actions.create(description: 'Please provide your annual income (both gross and net income)', position: 0)

task = stage.tasks.create(name: 'Credit Score', description: 'Your credit score is also a major determinant of your mortgage rate: a higher score means you are less risky, and a bank will be willing to loan you money at a cheaper rate.', position: 2)
task = stage.tasks.create(name: 'Mortgage', description: 'Calculate your mortgage rate', position: 3)
task = stage.tasks.create(name: 'House Budget', description: 'Using your annual income, credit score', position: 4)

stage = Stage.create(name: 'Search',    position: 2)
stage = Stage.create(name: 'Close',     position: 3)
stage = Stage.create(name: 'Postclose', position: 4)


