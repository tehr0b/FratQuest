"FratQuest" by Robert Giusti and Ryan Anderson

[Extensions]
Include Mood Variations by Emily Short.
Include Player Experience Upgrade by Aaron Reed.
Include Assumed Conversers by Michael Martin.
Include Patrollers by Michael Callaghan.
Include Native Time Control by Tim Pittman.

Section 1 - Alcohol

A person has a number called alcohol content.

Definition: A person is sober if its alcohol content is 2 or less.

Definition: A person is tipsy if its alcohol content is 3 or more.

Definition: A person is drunk if its alcohol content is 6 or more.

Definition: A person is smashed if its alcohol content is 9 or more.

Definition: A person is blacked-out if its alcohol content is 14 or more.

Instead of drinking the beer:	
	increase the alcohol content of the player by 1;
	say "You chug the drink[if the player is drunk], and feel your body start to sway from side to side[otherwise if the player is tipsy], and feel a little bit drunker[end if].";
	remove beer from play;
	if the player is drunk:
		if the player is not sick and a random number from one to the alcohol content of the player is greater than 8:
			say "You feel a sick feeling in the bottom of your stomach.";
			now the player is sick;
			the player pukes in four turns from now;
	increase the bladder content of the player by 1.

Every turn:
	say "Time: [time of day]";
	if the player is blacked-out and the player is not sick:
		end the story saying "You black out, and never wake up.";
	otherwise if the player is sober:
		change the speed of time to 2;
	otherwise if the player is smashed:
		change the speed of time to a random number between 7 and 15;
	otherwise if the player is drunk:
		change the speed of time to a random number between 5 and 10;
	otherwise if the player is tipsy:
		change the speed of time to a random number between 2 and 5.
		
[Throwing up]		
Puking is an action applying to one visible thing. Understand "puke in [something]" or "puke on [something]" or "throw up in [something]" as puking.

At the time when the player pukes:
	if the player is sick:
		now the player is healthy;
		[Add vomit to the room]
		say "You vomit all over the ground in front of you."
 
Carry out puking:
	if the player is not sick:
		instead say "You don't need to throw up right now.";
	otherwise if the noun is a container:
		say "You puke in the [the noun]";
		now the player is healthy.

Sickness is a kind of value. The sicknesses are healthy and sick. A person has a sickness.

[Vomit is an object which there can be multiple of.  ? ]
  
Sobriety Testing is an action applying to one visible thing. Understand "sobriety test [something]" as sobriety testing.

Check sobriety testing:
  if the noun is not a person, instead say "Inanimated objects can't be as drunk as you can be."
  
Carry out sobriety testing:
  say "Whoa, you can't just do that to anybody!"
  
Instead of sobriety testing the player:
	say "You think you've had about
	[if the player is sober][alcohol content]	
	[otherwise if the player is tipsy]
		[one of]
			[alcohol content plus a random number from zero to one]
		[or]
			[alcohol content minus one]
		[purely at random]
	[otherwise if the player is drunk]
		[one of]
			[alcohol content plus a random number from zero to three]
		[or]
			[alcohol content minus a random number from one to two]
		[purely at random]
	[otherwise if the player is smashed]
		[one of]
			[alcohol content plus a random number from zero to five]
		[or]
			[alcohol content minus a random number from one to five]
		[purely at random]
	[otherwise if the player is blacked-out]
		a lot of
	[end if]drinks tonight."
  
A person has a number called bladder content.
  
Section 2 - People

[General interaction and Conversation Rules]

[Relationships]

Dating relates one person to another (called the date). 

Friendship relates one people to another (called a friend).

Hatred relates one people to another (called a frenemy).

Infatuation relates various people to one person (called the crush).

[Mood]

The current interlocutor is an object that varies.

The moods are neutral, happy, sad, angry, horny, hammered, coked-out, and stoned.

The current mood of a person is usually neutral.
The previous mood of a person is usually neutral.

[Cliques]

[
General interaction rules.
All default interactions should be Instead or After rules.
All overridden interactions should be before rules that end in instead rules.
]

A Stoner is a kind of person.

The current mood of a stoner is usually stoned.
The previous mood of a stoner is usually stoned.

Instead of asking a stoner about something:
	say "The stoner stares blankly at you, 'I'm sorry, totally zoned during what you just said.' This won't go anywhere fast..."

A Bro is a kind of person.

The current mood of a bro is usually hammered.
The previous mood of a bro is usually hammered.

A Sorority Chick is a kind of person.

The current mood of a Sorority Chick is usually hammered.
The previous mood of a Sorority Chick is usually hammered.

A Cokehead is a kind of person.

The current mood of a cokehead is usually coked-out.
The previous mood of a cokehead is usually coked-out.

Instead of asking a cokehead about something:
	say "'Oh I know all about that!' The cokehead proceeds to educate you completely on [one of]Philosophy[or]Deviant Penguins[or]Pornography as an artform[or]BEES!!! FUCKING AFRICANIZED BEES!!![or]Ecotourism[or]Necrophilia[or]Drone Assassinations[or]GPS devices in our Phones[or]how much fun Coke is[or]Advertising[or]Corporations or some shit[or]how awesome their business card is[or]their medical history[or]their home life[or]their entire fucking life story[or]how badly they want to fuck the fraternity president's girlfriend[at random]! A few other cokeheads join in on the conversation and you are quickly forgotten."


A Pledge is a kind of patroller. A Pledge is Aimless. The drive of a pledge is 30.
The OpeningCapability of a pledge is None. A Pledge is usually On Patrol.

Instead of asking a pledge about something:
	say "Only the fraternity members get the pleasure of bossing around pledges."
	
Instead of sobriety testing a Pledge:
	say "Pledges aren't allowed to drink at these parties. Don't waste your time."
	
Section 3 - The Fraternity House

[Porch]
The Porch is a room.  The description of the Porch is "You are outside of the fraternity house. Two large, swinging doors block the path into the house.[if the player is sober] On the side of the building are large, red metal letters, spelling out BRO.[end if]"

[Entrance Hall]
The Entrance Hall is north of the Porch. The description of the Entrance Hall is "People are scattered about in conversation, drinking beer. [if the player is not drunk]You can see pledges rushing to and fro, balancing cups of beer and packed bongs.[end if] There are doors to the EAST and WEST, as well as stairs to the NORTH. The exit back to the patio is SOUTH."

There is a pledge in The Entrance Hall."A pledge scurries past you, carrying a beer for someone more important."

[The Kitchen]
The Kitchen is east of the Entrance Hall. The description of the Kitchen is "A Kitchen. There are several fridges, an oven range, as well as a table. On the table, there are full cups of beer. A pair of pledges pours beers from a keg and places them onto the table, keeping it refreshed. To the SOUTH, there is a long line outside of the bathroom. There are also doors to the NORTH and WEST."

[Downstairs Bathroom]
The Downstairs Bathroom is south of the Kitchen. The description of the Downstairs Bathroom is "A dirty bathroom. The toilet is broken, and you can see a swirl of brown and yellow colors in the water. The floor is sticky. [if the condom is in the room]There is a used condom on the ground.[end if] The door back to the kitchen is NORTH."

[Dining Room]
The Dining Room is north of the Kitchen. The description of the Dining Room is "A dining room that has been converted to a sort of Beer Pong Arena. Teams are playing the game[if the player is not tipsy] at four different tables, which take up the majority of the room. There is an air of intensity from how seriously the players are taking their game[end if]. There are doors to the SOUTH and WEST."

There is a pledge in The Dining Room. "A pledge is hitting on some freshman girl."

[Patio]
The Patio is west of the Dining Room. The description of the Patio is "An open-aired social area[if the player is not tipsy] with many chairs and tables[end if]. People are sitting about, smoking cigarettes. [if the player is not smashed]You see a pledge with a sign around his neck that says, 'Pack of Smokes: $5'.[end if] Stairs down into the main area of the backyard are to the NORTH. There are doors to the EAST and SOUTH."
		
[The Backyard]
The Backyard is north of the Patio. The description of the Backyard is "The backyard. More people smoking cigarettes and just chillaxing."
		
[The Living Room]
The Living Room is south of the patio. The Living Room is west of the Entrance Hall. The description of the Living Room is "A living room that has been converted to a dance floor. People are packed into the room, dancing close to each other. The music booms, and you can hear nothing else. There are doors to the EAST and NORTH."

There is a pledge in The Living Room. "You keep seeing pledges wearing diapers, wonder what that's all about..."

[The Central Hallway]
The Upstairs Hallway is north of the Entrance Hall. The description of the Upstairs Hallway is "A long hallway, in several parts. You can explore more of the hallway by going EAST and WEST. To the SOUTH are the stairs back to the Entrance Hall. In this part of the Hallway, there is a door with a tie wrapped around it to the NORTH."

[The East Hallway]
The East Hallway is east of the Upstairs Hallway. The description of the East Hallway is "The east part of the hallway. This corner of the house takes the longest for cops to reach when parties get rolled, and as such is home to much of the drug consumption in the house. There is a bathroom to the SOUTH, a room that reeks of pot to the NORTH, and the Presidential Suite to the EAST."

[The West Hallway]
The West Hallway is west of the Upstairs Hallway. The description of the West Hallway is "The west part of the hallway. This is the filthiest part of the house, and where the pledges are forced to live. The pledge dorm is to the WEST, there's a bathroom to the NORTH, and a door to an unmarked room to the SOUTH."

[Hookup Room]
The Designated Hookup Room is north of the Upstairs Hallway. The description of the Designated Hookup Room is "The first thing you notice upon entering this room is the couple having sex on the bed to your right. There are three beds, evenly spaced out. In one corner of the room, there is a pile of sheets to put on the bed. In the other corner, there is a pile of condoms. The exit is to the SOUTH."

[Stoner Den]
The Stoner Den is north of the East Hallway. The description of the Stoner Den is "A dark room. Your vision is obscured by smoke, which clouds the room and fills your lungs. The only light you can use to make your way through the room is the laser-light show projected on the ceiling, captivating the inhabitants of the room. The exit is to the SOUTH."

There are five stoners in the Stoner Den.

[The Presidential Suite]
The Presidential Suite is east of the East Hallway. The description of the Presidential Suite is "As soon as you enter the suite, you feel completely taken out of the fraternity house. [if the player is not drunk]While everything else in this house is dirty and uncleaned, this room is spotless, and feels like a five-star hotel right after a visit from the maids.[end if]  A bar is in the corner of the room, with an uncorked bottle of champagne. The exit is to the WEST."

The Bar is a supporter in the Presidential Suite. The bar is undescribed.
The Champagne is on the Bar. The champagne is undescribed.

[The Coke Den]
The Cocaine Den is south of the East Hallway.  The description of the Cocaine Den is "You enter to find several people with bloodshot eyes. Everyone stares at you intensely, like a pride of lions coming upon a single zebra. Several lines of white powder are on the bathroom mirror, which has been taken off the wall. The exit is NORTH."

There are four cokeheads in the Cocaine Den.

[Upstairs Bathroom]
The Upstairs Bathroom is north of the West Hallway. The description of the Upstairs Bathroom is "The first thing that hits you is the stench; absolutely putrid, like a dead cow that has been decomposing for weeks. Just stepping in the room, you know that you'll smell bad for the rest of the night. Vomit lines the walls, and what looks like fecal matter is smeared across the cracked mirror on the wall. You hear flies buzzing around in the small shower, and wonder how anyone might feel clean after using it. The exit is SOUTH."

[The Pledge Dorm]
The Pledge Dorm is west of the West Hallway. The description of the Pledge Dorm is "You find yourself in a large bedroom, lined with many triple bunk beds. The pledges all must share this room until they can become official members of the fraternity. No one is here, as all the pledges are running about the party, making it run smoothly. The exit is EAST."

[Smelly Room]
The Bad Smelling Room is south of the West Hallway. The description of the Bad Smelling Room is "The player should never be able to get in here, but it smells really really bad, even from the outside."

Instead of going south in the West Hallway:
	say "You are about to enter when you are hit by some sort of ungodly stench. Fuck that noise, no way are you going in there."

Section 3B - Random Crap

There is a table in the kitchen. The table is undescribed. The description of the table is "[If the player is not drunk]A messy table with many cups of beer atop it.[else]Beer.[end if]"

A supply of beers is on the table. Understand "beer" as the supply of beers when the beer is not visible.

Instead of taking the supply of beers:
	if the beer is off-stage:
		move the beer to the player;
		say "You get another beer.";
	otherwise:
		say "You already have a beer. Drink that one first!"

There is a used condom in the Downstairs Bathroom. The used condom is undescribed. The description of the used condom is "A [if the player is not drunk]clearly used[else]perfectly good[end if] condom. [if the player is not drunk]Gross.[end if]".
Instead of taking the condom:
	if the player is not drunk, say "Eww. Gross. No."
	
There is a toilet in the Downstairs Bathroom. The toilet is a container.

[Cigarettes]
A cigarette is a kind of thing.

A Pack of Smokes is a container. A Pack of Smokes usually contains twelve cigarettes.
	
Section 3C - Secondary Characters

[The Cigarette Bitch, Source of all Cigarettes]
The Cigarette Bitch is a Pledge in the Patio. The current mood of Cigarette Bitch is usually angry. The previous mood of Cigarette Bitch is usually angry.  "You see a pledge with a sign around his neck that says, 'Pack of Smokes: $5'. The Cigarette Bitch [one of]looks about aimlessly[or]is selling a few smokes[or]is being berated by a pack of drunken bros[at random]."
The Turn Frequency of the Cigarette Bitch is 5.
The Cigarette Bitch is RoomLed. The Cigarette Bitch is TwoWayRepeated.
	The RoomTable of the Cigarette Bitch is the Table of Main Party Route.
	
Table of Main Party Route
TargetRoom 
The Patio
The Dining Room 
The Kitchen
The Entrance Hall
The Living Room

When Play Begins:
	activate the Cigarette Bitch;
	
Instead of giving the Beer to Cigarette Bitch:
	say "He accepts the beer graciously, 'Thanks man! You ever need anything, just ask me!'";
	remove the beer from play;
	Now the current mood of the Cigarette Bitch is happy.
	
Every turn when the time of day is after 11:00 PM:
	Now the current mood of the Cigarette Bitch is hammered.

The description of the Cigarette Bitch is "Poor pledge got the short end of the stick, [if the current mood of Cigarette Bitch is angry]no wonder he's grumpy[otherwise if the current mood of Cigarette Bitch is hammered]and he's going to get in a lot more trouble once the other brothers notice he's drunk on the job[otherwise if the current mood of Cigarette Bitch is happy]but he's got a smile on anyway[otherwise]Some people just have no luck[end if]."

Understand "Cigarettes" as "[Pack of Smokes]".
Understand "Smokes" as "[Pack of Smokes]".
Understand "Pack" as "[Pack of Smokes]".
Understand "Pack of Smokes" as "[Pack of Smokes]".

Before asking the Cigarette Bitch about "[Pack of Smokes]":
	if the current mood of Cigarette Bitch is angry:
		instead say "This Pledge is not happy about being Cigarette Bitch tonight, he scowls at you, 'Cigarette's are 5 bucks.' Better find some money or help this guy lighten up.";
	otherwise if the current mood of Cigarette Bitch is hammered:
		instead say "Looks like the Cig Bitch had a bit too much to drink on the job. He's hanging out smokes for free and the resulting crowd won't let you through.";
	otherwise if the current mood of Cigarette Bitch is happy:
		if the player is not carrying a pack of smokes:
			Now the player is carrying a pack of smokes.;
			instead say "The Pledge is happy to see a friendly face for once, 'Don't worry about these ok?' he says as he slips you a pack for free.";
		otherwise: 
			instead say "The Pledge likes you, but not enough to get caught giving away free smokes. Enjoy the pack you already have.";

Section 4 - Time

When play begins:
	change the speed of time to 5.
  
The player carries a watch.

Understand "time" as the watch.

Instead of examining the watch, say "[time of day]."

At 10:00 PM: decrease the alcohol content of the player by one.
At 11:00 PM: decrease the alcohol content of the player by one.
At 12:00 AM: decrease the alcohol content of the player by one.
At 1:00 AM: decrease the alcohol content of the player by one.
At 2:00 AM: decrease the alcohol content of the player by one.
At 3:00 AM: decrease the alcohol content of the player by one.
At 4:00 AM: decrease the alcohol content of the player by one.
At 5:00 AM: decrease the alcohol content of the player by one.

Chapter 1 -- The Party

The time of day is 9:00 PM.

The player is in the Porch. The player carries a beer.

test me with "n / e / drink beer / showme / drink beer / showme / drink beer / drink beer / drink beer / showme / drink beer / drink beer / drink beer / sobriety test self".
