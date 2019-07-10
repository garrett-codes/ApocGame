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
	situation: "Quit playing around. This is a serious matter. We've been told you are strong. We are definitely lacking in strength right now. Most of our community are not fighters. We are going to have to go on a run. We're low on supplies and we need you to protect the team. Meet us at the front gate in 5 minutes. We're going to leave in 10.",
	correct: "Apologize for jokinbg around and get ready to go.", 
	wrong: "Make another joke before the he/she leaves.", 
	consequence_of: false, 
	level: 2)

#level 2 intellect
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "intellect",
	situation: "We got a busy day ahead of us. We've been told you are smart. We can definitely use some more brains in this group right now. We are going to have to go on a run. We're low on supplies and we need you to stay back and help. I am leaving you with this walkie talkie. We might need help so we will need you to be on stand-by. In the mean time we need you to plan. Try to figure out exactly how much food we should be rationing as well as all of the other concerns that go along with it.",
	correct: "Tell them they do not have to worry and get to work on the plans.",
	wrong: "Use this time alone to get your stuff packed and escape this community because its falling apart fast!",  
	consequence_of: true, 
	level: 2)
Task.create(character_id: 1, 
	name: "This isn't time for jokes...", 
	task_type: "intellect",
	situation: "Quit playing around. This is a serious matter. We've been told you are smart. We were told you are smart but I don't feel like dealing with smart-asses right now. We are going to have to go on a run. We're low on supplies and since you're new to this community I figured we will break you in by taking you with us. I know you are more into the books but I want to see what you can do on the field. Meet us by the front gate in a few.", 
	correct: "Apologize for joking earlier. You know you can't make it outside these walls so it is better if you stood back and helped within the community.", 
	wrong: "Get yourself to the gate with the rest of the team.", 
	consequence_of: false, 
	level: 2)

#level 2 speed
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "speed",
	situation: "We got a busy day ahead of us. We've been told you are fast. We are definitely lacking in speed right now. Most of our community is slow. We are going to have to go on a run. We're low on supplies and we need you to be our runner. Meet us at the front gate in 5 minutes. We're going to leave in 10.",  
	correct: "Get ready and run to the gate", 
	wrong: "While you are alone make a quick escape. This community seems weak, and you are so fast. They will never be able to catch up with you.", 
	consequence_of: true, 
	level: 2)
Task.create(character_id: 1, 
	name: "This isn't time for jokes...", 
	task_type: "speed",
	situation: "Quit playing around. This is a serious matter. We've been told you are fast. We are definitely lacking in speed right now. Most of our community is slow. We are going to have to go on a run. We're low on supplies and we need you to be our runner. Meet us at the front gate in 5 minutes. We're going to leave in 10.", 
	correct: "Apologize for being a wise-ass and get ready to go.", 
	wrong: "Make a quick escape while you are by yourself. They seem so mean. You're probably better off being by yourself.", 
	consequence_of: false, 
	level: 2)

