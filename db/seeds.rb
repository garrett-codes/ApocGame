# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all

Task.create(
	character_id: 1, name: "Good to know you're still there...", 
	task_type: "attack",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: true, level: 2)
Task.create(character_id: 1, name: "This isn't time for jokes...", 
	task_type: "attack", 
	situation: "",
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: false, level: 2)
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "intellect",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: true, level: 2)
Task.create(character_id: 1, 
	name: "This isn't time for jokes...", 
	task_type: "intellect",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: false, level: 2)
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "speed",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: true, level: 2)
Task.create(character_id: 1, 
	name: "This isn't time for jokes...", 
	task_type: "speed",
	situation: "", 
	correct: "this is a correct response", 
	wrong: "this is a wrong response", 
	consequence_of: false, level: 2)

