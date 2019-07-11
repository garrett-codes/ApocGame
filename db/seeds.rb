# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all

User.create(name:"Brandon Lau", password:"login")
User.create(name:"Eric Edgington", password:"login")
User.create(name:"Andy Morales", password:"login")

#level 2 attack
#1
Task.create(
	character_id: 1, name: "Good to know you're still there...", 
	task_type: "attack",
	situation: "We got a busy day ahead of us. We've been told you are strong. We are definitely lacking in strength right now. We have few fihters in our community. We're going on a run, we're low on supplies; we need you to protect the team. Meet us at the front gate in 5 minutes. We're going to leave in 10.", 
	correct: "Get ready and go on the run.", 
	wrong: "Use this time alone to get your stuff packed and escape this community because its falling apart fast!", 
	consequence_of: true,
	level: 2)
#2
Task.create(character_id: 1, name: "There isn't time for jokes...", 
	task_type: "attack", 
	situation: "Quit playing around. This is a serious matter. We've been told you are strong. We are definitely lacking in strength right now. We have to go on a run and we need you to protect the team. Meet us at the front gate in 5 minutes. We're going to leave in 10.",
	correct: "Apologize for jokinbg around and get ready to go.", 
	wrong: "Make another joke before the he/she leaves.", 
	consequence_of: false, 
	level: 2)

#level 3 attack
#3
Task.create(
	character_id: 1, name: "Nice decision...", 
	task_type: "attack",
	situation: "We traveled to a supermarket that we have yet to look through. While the runner sneaks inside and tries to bring back some goods  you need to take out any zombies that could cause a problem. The runner is doing a good job sneaking around but the zombies are starting to form a wall at the only exit of the store.", 
	correct: "Infiltrate the small herd of zombies at the exit and slowly kill them off while the runner continues to scavange.", 
	wrong: "Kill a few zombies at the exit so that you can quickly sneak past the rest before they notice so you can help the runner get out of the supermarket.", 
	consequence_of: true, 
	next1: 5,
	next2: 6,
	level: 3)
#4
Task.create(character_id: 1, name: "Don't be a fool!", 
	task_type: "attack", 
	situation: "Of course jokes are nice to get a break from the harsh reality you are currently facing. However, there is a time and place. You're being left behind. We don't trust that you will take this important mission seriously enough. It's better if you stay at the front gate, fend off any stray zombie coming toward the community.",
	correct: "Comply with the task at hand and silently pick off each zombie coming close to the community.", 
	wrong: "Blow off your guard duties and catch up with the team even though they left you behind.", 
	consequence_of: false,
	next1: 7,
	next2: 8, 
	level: 3)

#level 4 attack
# from right
#5
Task.create(
	character_id: 1, name: "You're one crazy mother-f'er, but its working...", 
	task_type: "attack",
	situation: "You managed not to get injured by any zombie as you were picking them off at the exit. The runner is coming back with a ton of goods but you are feeling fatigue at the moment.", 
	correct: "Create a distraction, and allow the rest of your team to finish up the job.", 
	wrong: "Pick off the remaining zombies so the runner has no problem exiting the supermarket.", 
	consequence_of: true,
	next1: 9,
	next2: 10, 
	level: 3)
#6
Task.create(character_id: 1, name: "You shouldn't have gotten ahead of yourself...", 
	task_type: "attack", 
	situation: "You managed to get by and make it to the runner but you were not as stealthy as you thought. The zombies have slowly walked in the direction you made to the runner and have gotten you trapped in a corner. The runner managed to escape but your muscles slowed you down. Now they are the zombies' muscles.",
	correct: "Its time to finish the job you started. Lets bash some skulls in.", 
	wrong: "There is no way you are getting out of this one without takin some risks. Tell the runner to just run right through them and then the zombies will just chase the runner. The runner's fast enough to escape them and you can just slip out of the market and meet the runner on the other side.", 
	consequence_of: false,
	next1: 11,
	next2: 12, 
	level: 0)
#from wrong
#7
Task.create(
	character_id: 1, name: "It is a good thing you listened this time...", 
	task_type: "attack",
	situation: "Right after the team moved north, a herd of zombies moved perpendicular to their path. Luckily they just missed them, but if you went and followed them you would have been toast. Your team decided to come back because they felt they were not strong enough to take on the zombies. Maybe you can actually help next time.", 
	correct: "Take your switch-blade and stealthily stab each stray zombie's brain. Lets try to watch out from them biting back.", 
	wrong: "Lets play it safe and shoot them from the watch tower. You have a good shot so that should be a piece of cake.", 
	consequence_of: true, 
	level: 5)
#8
Task.create(character_id: 1, name: "This was not a wise move...", 
	task_type: "attack", 
	situation: "You thought your help would be useful. Of course it would have been but now you just broadsided by a pack zombies on your way to catach up with the group. They got you surrounded...",
	correct: "Kill enough to escape and make a run for it.", 
	wrong: "Lets see if you can take them all on.", 
	consequence_of: false,
	level: 0)

#level 5 attack
#from right
#9
Task.create(
	character_id: 1, name: "Team work makes the dream work...", 
	task_type: "attack",
	situation: "Your team may not be the strongest but you cannot be responsible for everything. We lost a fellow team member but at least it wasn't you. Good job. It wasn't the cleanest but you're community is safe for now.", 
	correct: "Create a distraction, and allow the rest of your team to finish up the job.", 
	wrong: "Pick off the remaining zombies so the runner has no problem exiting the supermarket.", 
	consequence_of: true, 
	level: 5)
#10
Task.create(character_id: 1, name: "You got bit!", 
	task_type: "attack", 
	situation: "It was a selfless effort but now you got bit. Your team members immediately took out the the remaining zombie in the market and strapped you down. Its too late! You are about to die while the saw off your arm in hopes of saving you.",
	correct: "Comply with the task at hand and silently pick off each zombie coming close to the community.", 
	wrong: "Blow off your guard duties and catch up with the team even though they left you behind.", 
	consequence_of: false, 
	level: 0)
#from wrong
#11
Task.create(character_id: 1, name: "This was not a wise move...", 
	task_type: "attack", 
	situation: "You thought your help would be useful. Of course it would have been but now you just broadsided by a pack zombies on your way to catach up with the group. They got you surrounded... Lets just skip to the part where they ate your BRAINS!",
	correct: "Kill enough to escape and make a run for it.", 
	wrong: "Lets see if you can take them all on.", 
	consequence_of: false, 
	level: 0)

#level 2 intellect
#12
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "intellect",
	situation: "We got a busy day ahead of us. We've been told you are smart. We can definitely use some more brains in this group right now. We have to go on a run, we're low on supplies and we need you to stay back and help. We're leaving you this walkie talkie, you need to be on stand-by. In the meantime, try to figure out exactly how much food we should be rationing as well as all of the other concerns that go along with it.",
	correct: "Tell them they do not have to worry and get to work on the plans.",
	wrong: "Use this time alone to get your stuff packed and escape this community because its falling apart fast!",  
	consequence_of: true,
	next1: 14, 
	next2: 20,
	level: 2)
#link the wrong to speed 3 false
#13
Task.create(character_id: 1, 
	name: "There isn't time for jokes...", 
	task_type: "intellect",
	situation: "Quit playing around. This is a serious matter. We were told you are smart but I don't feel like dealing with smart-asses right now. We are going to have to go on a run. We're low on supplies and since you're new to this community I figured we will break you in by taking you with us. I know you are more into the books but I want to see what you can do on the field. Meet us by the front gate in a few.", 
	correct: "Apologize for joking earlier. You know you can't make it outside these walls so it is better if you stood back and helped within the community.", 
	wrong: "Follow the tea meve nthough you are behind.", 
	consequence_of: false,
	next1: 14,
	next2: 11, 
	level: 2)

#level 3 intellect
#14
Task.create(character_id: 1, 
	name: "Walkie Talkie Duty", 
	task_type: "intellect",
	situation: "So you got to stay at the community while a team had to set out and risk their lives for more supplies. Good deal. They're radioing in right now and want you to go up to watch tower to check their six with the bionculars.", 
	correct: "Go up to the watch tower and help them.", 
	wrong: "Put your duties aside and try to get the community to follow you now. You're so smart so you should be the leader.", 
	consequence_of: true,
	next1: 15,
	next2: 16, 
	level: 3)

#level end intellect
#15
Task.create(character_id: 1, 
	name: "Its a good thing you helped them...", 
	task_type: "intellect",
	situation: "They almost died out there. If it wasn't for you spotting that herd coming at the mfrom the west the ywould have been toast. They managed to pic kup the speed and avoid the collision. Now they got all of the supplies they needed and brought it back to the community safely.", 
	correct: "Go up to the watch tower and help them.", 
	wrong: "Put your duties aside and try to get the community to follow you now. You're so smart so you should be the leader.", 
	consequence_of: true, 
	level: 5)

#16
Task.create(character_id: 1, 
	name: "That was stupid...", 
	task_type: "intellect",
	situation: "Why would the community follow you. You're a nerd. Things got intense while you were trying to gain support and now you're dead.", 
	correct: "Go up to the watch tower and help them.", 
	wrong: "Put your duties aside and try to get the community to follow you now. You're so smart so you should be the leader.", 
	consequence_of: false, 
	level: 0)

#level 2 speed
#17
Task.create(character_id: 1, 
	name: "Good to know you're still there...", 
	task_type: "speed",
	situation: "We got a busy day ahead of us. We've been told you are fast. We are definitely lacking in speed right now. Most of our community is slow. We are going to have to go on a run. We're low on supplies and we need you to be our runner. Meet us at the front gate in 5 minutes. We're going to leave in 10.",  
	correct: "Get ready and run to the gate", 
	wrong: "While you are alone make a quick escape. This community seems weak, and you are so fast. They will never be able to catch up with you.", 
	consequence_of: true,
	next1: 19,
	next2: 20, 
	level: 2)
#18
Task.create(character_id: 1, 
	name: "There isn't time for jokes...", 
	task_type: "speed",
	situation: "Quit playing around. This is a serious matter. We've been told you are fast. We are definitely lacking in speed right now. Most of our community is slow. We are going to have to go on a run. We're low on supplies and we need you to be our runner. Meet us at the front gate in 5 minutes. We're going to leave in 10.", 
	correct: "Apologize for being a wise-ass and get ready to go.", 
	wrong: "Make a quick escape while you are by yourself. They seem so mean. You're probably better off being by yourself.", 
	consequence_of: false,
	next1: 19,
	next2: 20, 
	level: 2)

#level 3 speed
#19
Task.create(character_id: 1, 
	name: "Good listening...", 
	task_type: "speed",
	situation: "Alright! You and the team found a supermakret not too far from the community. You haven't searched it yet so you are in charge of gathering the goods.",  
	correct: "Do what the group tells you to do even though it sounds crazy!", 
	wrong: "This whole group is starting to sound crazy why should you risk you're life just cause you are fast. Why don't we just run away!", 
	consequence_of: true, 
	next1: 21, 
	next2: 20,
	level: 3)
#20
Task.create(character_id: 1, 
	name: "Why would you run?", 
	task_type: "speed",
	situation: "At times like these it's best to stick with a community. You tried running away and got yourself into trouble. The unmanned gate may have given you a good opportunity to slip out but it also has some lingering zombies right outside. You were too focused on running from the community that you forgot about the zombies in front of you. Now you're just zombie food...", 
	correct: "Go down in silence", 
	wrong: "Let a squeel out.", 
	consequence_of: false, 
	level: 0)

#level end speed
#21
Task.create(character_id: 1, 
	name: "Well... You're still alive!", 
	task_type: "speed",
	situation: "That was the scariest experience you ever endured. You just ran through a dark supermarket ridden with zombies, but you got back safely and with more supplies for the community. Nice Job!",  
	correct: "Do what the group tells you to do even though it sounds crazy!", 
	wrong: "This whole group is starting to sound crazy why should you risk you're life just cause you are fast. Why don't we just run away!", 
	consequence_of: true, 
	level: 5)