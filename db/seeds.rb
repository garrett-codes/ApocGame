# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all

#level 2 attack
Task.create(
	character_id: 1, name: "Good to know you're still there...", 
	task_type: "attack",
	situation: "We got a busy day ahead of us. We've been told you are strong. We are definitely lacking in strength right now. Most of our community are not fighters. We are going to have to go on a run. We're low on supplies and we need you to protect the team. Meet us at the front gate in 5 minutes. We're going to leave in 10.", 
	correct: "Get ready and go on the run.", 
	wrong: "Use this time alone to get your stuff packed and escape this community because its falling apart fast!", 
	consequence_of: true, 
	level: 2)
Task.create(character_id: 1, name: "This isn't time for jokes...", 
	task_type: "attack", 
	situation: "",
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: false, 
	level: 2)

#level 2 intellect
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "intellect",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: true, 
	level: 2)
Task.create(character_id: 1, 
	name: "This isn't time for jokes...", 
	task_type: "intellect",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: false, 
	level: 2)

#level 2 speed
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "speed",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: true, 
	level: 2)
Task.create(character_id: 1, 
	name: "This isn't time for jokes...", 
	task_type: "speed",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: false, 
	level: 2)

