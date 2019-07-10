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
Task.create(character_id: 1, name: "There isn't time for jokes...", 
	task_type: "attack", 
	situation: "Quit playing around. This is a serious matter. We've been told you are strong. We are definitely lacking in strength right now. Most of our community are not fighters. We are going to have to go on a run. We're low on supplies and we need you to protect the team. Meet us at the front gate in 5 minutes. We're going to leave in 10.",
	correct: "Apologize for jokinbg around and get ready to go.", 
	wrong: "Make another joke before the he/she leaves.", 
	consequence_of: false, 
	level: 2)

#level 3 attack
Task.create(
	character_id: 1, name: "Nice decision...", 
	task_type: "attack",
	situation: "We left the community and traveled to a supermarket that we have yet to look through. While the runner sneaks inside and tries to bring back some goods it is important that you discretely take out and zombies that could be causing a problem. The runner is doing a good job sneaking around but the zombies are start to form a wall at the only exit of the store.", 
	correct: "Infiltrate the small herd of zombies at the exit and slowly kill them off while the runner continues to scavange.", 
	wrong: "Kill a few zombies at the exit so that you can quickly sneak past the rest before they notice so you can help the runner get out of the supermarket.", 
	consequence_of: true, 
	next1: 5,
	next2: 6,
	level: 3)
Task.create(character_id: 1, name: "Don't be a fool!", 
	task_type: "attack", 
	situation: "Of course jokes are nice to get a break from the harsh reality you are currently facing. However, there is a time and place. You're being left behind. We don't trust that you will take this important mission seriously enough. It would be best if you stay at the front gate and fend off any stray zombie coming toward the community.",
	correct: "Comply with the task at hand and silently pick off each zombie coming close to the community.", 
	wrong: "Blow off your guard duties and catch up with the team even though they left you behind.", 
	consequence_of: false,
	next1: 7,
	next2: 8, 
	level: 3)

#level 4 attack
# from right
Task.create(
	character_id: 1, name: "You're one crazy mother-f'er, but its working...", 
	task_type: "attack",
	situation: "You managed not to get injured by any zombie as you were picking them off at the exit. The runner is coming back with a ton of goods but you are feeling fatigue at the moment.", 
	correct: "Create a distraction, and allow the rest of your team to finish up the job.", 
	wrong: "Pick off the remaining zombies so the runner has no problem exiting the supermarket.", 
	consequence_of: true,
	next1: 13,
	next2: 14, 
	level: 3)
Task.create(character_id: 1, name: "You shouldn't have gotten ahead of yourself...", 
	task_type: "attack", 
	situation: "You managed to get by and make it to the runner but you were not as stealthy as you thought. The zombies have slowly walked in the direction you made to runner and have gotten you trapped in a corner.",
	correct: "Its time to finish the job you started. Lets bash some skulls in.", 
	wrong: "There is no way you are getting out of this one without takin some risks. Tell the runner to just run right through them and then the zombies will just chase the runner. The runner's fast enough to escape them and you can just slip out of the market and meet the runner on the other side.", 
	consequence_of: false,
	next1: 15,
	next2: 16, 
	level: 3)
#from wrong
Task.create(
	character_id: 1, name: "It is a good thing you listened this time...", 
	task_type: "attack",
	situation: "Right after the team moved north a herd of zombies moved perpendicular to their path. Luckily they just missed them, but if you went and followed them you would have been toast. Unfortunately, we got some zombies straying from the heard. Lets see what those muscles are made of.", 
	correct: "Take your switch-blade and stealthily stab each stray zombie's brain. Lets try to watch out from them biting back.", 
	wrong: "Lets play it safe and shoot them from the watch tower. You have a good shot so that should be a piece of cake.", 
	consequence_of: true,
	next1: 17,
	next2: 18, 
	level: 3)
Task.create(character_id: 1, name: "This was not a wise move...", 
	task_type: "attack", 
	situation: "You thought your help would be useful. Of course it would have been but now you just broadsided by a pack zombies on your way to catach up with the group. They got you surrounded...",
	correct: "Kill enough to escape and make a run for it.", 
	wrong: "Lets see if you can take them all on.", 
	consequence_of: false,
	next1: 19,
	next2: 20, 
	level: 3)

#level 5 attack
#from right
Task.create(
	character_id: 1, name: "Team work makes the dream work...", 
	task_type: "attack",
	situation: "Your team may not be the strongest but you cannot be responsible for everything. We lost a fellow team member but at least it wasn't you. ", 
	correct: "Create a distraction, and allow the rest of your team to finish up the job.", 
	wrong: "Pick off the remaining zombies so the runner has no problem exiting the supermarket.", 
	consequence_of: true, 
	level: 3)
Task.create(character_id: 1, name: "You got bit!", 
	task_type: "attack", 
	situation: "It was a selfless effort but now you got bit. Your team members immediately took out the the remaining zombie in the market and strapped you down. They are about to cut your arm off!",
	correct: "Comply with the task at hand and silently pick off each zombie coming close to the community.", 
	wrong: "Blow off your guard duties and catch up with the team even though they left you behind.", 
	consequence_of: false, 
	level: 3)
#from wrong
Task.create(
	character_id: 1, name: "It is a good thing you listened this time...", 
	task_type: "attack",
	situation: "Right after the team moved north a herd of zombies moved perpendicular to their path. Luckily they just missed them, but if you went and followed them you would have been toast. Unfortunately, we got some zombies straying from the heard. Lets see what those muscles are made of.", 
	correct: "Take your switch-blade and stealthily stab each stray zombie's brain. Lets try to watch out from them biting back.", 
	wrong: "Lets play it safe and shoot them from the watch tower. You have a good shot so that should be a piece of cake.", 
	consequence_of: true, 
	level: 3)
Task.create(character_id: 1, name: "This was not a wise move...", 
	task_type: "attack", 
	situation: "You thought your help would be useful. Of course it would have been but now you just broadsided by a pack zombies on your way to catach up with the group. They got you surrounded...",
	correct: "Kill enough to escape and make a run for it.", 
	wrong: "Lets see if you can take them all on.", 
	consequence_of: false, 
	level: 3)

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
	name: "There isn't time for jokes...", 
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
	name: "There isn't time for jokes...", 
	task_type: "speed",
	situation: "Quit playing around. This is a serious matter. We've been told you are fast. We are definitely lacking in speed right now. Most of our community is slow. We are going to have to go on a run. We're low on supplies and we need you to be our runner. Meet us at the front gate in 5 minutes. We're going to leave in 10.", 
	correct: "Apologize for being a wise-ass and get ready to go.", 
	wrong: "Make a quick escape while you are by yourself. They seem so mean. You're probably better off being by yourself.", 
	consequence_of: false, 
	level: 2)

