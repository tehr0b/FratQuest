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

Definition: A person is smashed if its alcohol content is 10 or more.

Definition: A person is blacked-out if its alcohol content is 14 or more.

Instead of drinking the beer:
	say "You chug the drink[if the player is sober], and feel a little bit drunker[otherwise if the player is drunk], and feel your body start to sway from side to side[end if].";
	remove beer from play;
	increase the alcohol content of the player by 1;
	if the player is drunk:
		if the player is not sick and a random number from one to the alcohol content of the player is greater than 8:
			say "You feel a sick feeling in the bottom of your stomach.";
			now the player is sick;
			the player pukes in four turns from now;
	increase the bladder content of the player by 1.
  
At the time when the player pukes:
	now the player is healthy;
	say "You vomit all over the ground in front of you."
  
Sickness is a kind of value. The sicknesses are healthy and sick. A person has a sickness.

Every turn:
	if the player is blacked-out and the player is not sick:
		say "black-out start";
		now the player is sick;
		the player pauses in one turn from now.
		
At the time when the player pauses:
	say "black-out";
	now the player is healthy;
	try waiting.
  
Sobriety Testing is an action applying to one visible thing. Understand "sobriety test [something]" as sobriety testing.

Check sobriety testing:
  if the noun is not a person, instead say "Inanimate objects can't be as drunk as you can be."
  
Carry out sobriety testing:
  say "Whoa, you can't just do that to anybody!"
  
Instead of sobriety testing the player:
	say "You think you've had about 
	[if the player is sober][alcohol content]	
	[otherwise if the player is tipsy]
		[one of]
			[alcohol content plus a random number from zero to two]
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
	[end if] drinks tonight."
  
A person has a number called bladder content.
  
Section 2 - People

[General interaction and Conversation Rules]

[
General interaction rules.
All default interactions should be Instead or After rules.
All overridden interactions should be before rules that end in instead rules.
]

Reporting is Collective.

[Relationships]

Dating relates one person to another (called the date). 

The verb to date (they date, it dates, it is dating) implies the dating relation.

Friendship relates one people to another (called a friend).

The verb to befriend (they befriend, it has befriended, it is friends with) implies the friendship relation.

Hatred relates one people to another (called a frenemy).

The verb to hate (they hate, it hates) implies the hatred relation.

Infatuation relates various people to one person (called the crush).

[Mood]

The current interlocutor is an object that varies.

The moods are neutral, happy, sad, angry, horny, hammered, coked-out, and stoned.

The current mood of a person is usually neutral.
The previous mood of a person is usually neutral.

[Cliques]

A Stoner is a kind of person.

The current mood of a stoner is usually stoned.
The previous mood of a stoner is usually stoned.

Instead of asking a stoner about something:
	say "The stoner stares blankly at you, 'I'm sorry, totally zoned during what you just said.' This won't go anywhere fast..."

A Bro is a kind of person.

The current mood of a bro is usually hammered.
The previous mood of a bro is usually hammered.

Instead of asking a bro about something:
	if the player is not drunk:
		say "He doesn't seem to hear you, which makes sense, as [a random number from two to five] other guys and him are [one of]in a shouting match over[or]in deep discussion[or]arguing about[or]drinking solemnly while conversing about[purely at random][one of] how big their dicks are[or] who can drink the most[or] what major is the lamest[or] who is the hottest girl here[or] who the FUCK caused that smell in the upstairs game room[or] some political bullshit[or] some philisophy major crap[or] [purely at random].";
	otherwise:
		say "You yell out, 'DUUUUDE!!!' He spins around, clearly smashed, and clearly without recognition of who the fuck you are. 'DUUUUUUDE!!!!' he shouts back, shoving his way through the crowd to you. By the time he arrives, you've forgotten what you were going to talk about. Before you know it, he's talked you into doing a kegstand in the kitchen.";
		now the player is in the kitchen;
		increase the alcohol content of the player by 2;
		if the player is not sick and a random number from one to the alcohol content of the player is greater than 8:
			say "As they lower you from the keg, you get a sudden, horrible feeling in the pit of your stomach. You don[']t have much time.";
			now the player is sick;
			the player pukes in two turns from now;
		increase the bladder content of the player by 1;
	
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

Chad is a bro in the kitchen."[if the player is not drunk]Chad from one of your GEs freshman year is posted up next to the kegs, that guy loves his kegstands[else]Chad is here! Bet he[']s down for a kegstand[end if]."

[Downstairs Bathroom]
The Downstairs Bathroom is south of the Kitchen. The description of the Downstairs Bathroom is "A [if the player is not drunk]dirty[end if] bathroom. The toilet is [if the player is drunk]full, but usable, no need to flush, best save water.[otherwise]broken, and you can see a swirl of brown and yellow colors in the water.[end if] The floor is [if the player is not smashed]sticky[else]comfortable[end if]. There is a condom on the ground. The door back to the kitchen is NORTH."

[Dining Room]
The Dining Room is north of the Kitchen. The description of the Dining Room is "A dining room that has been converted to a sort of Beer Pong Arena. Teams are playing the game[if the player is not tipsy] at four different tables, which take up the majority of the room. There is an air of intensity from how seriously the players are taking their game[end if]. There are doors to the SOUTH and WEST."

There is a pledge in The Dining Room. "A pledge is hitting on some freshman girl while her boyfriend plays beer pong."

[Patio]
The Patio is west of the Dining Room. The description of the Patio is "An open-aired social area[if the player is not tipsy] with many chairs and tables[end if]. People are sitting about, smoking cigarettes. [if the player is not smashed]You see a pledge with a sign around his neck that says, 'Pack of Smokes: $5'.[end if] Stairs down into the main area of the backyard are to the NORTH. There are doors to the EAST and SOUTH."

Don is a bro in the Patio."You see Don from intro to chem here, smoking a cigarette with a few people you don't really know."
		
[The Backyard]
The Backyard is north of the Patio. The description of the Backyard is "The backyard. More people smoking cigarettes and just chillaxing."
		
[The Living Room]
The Living Room is south of the patio. The Living Room is west of the Entrance Hall. The description of the Living Room is "A living room that has been converted to a dance floor. People are packed into the room, dancing close to each other. The music booms, and you can hear nothing else. There are doors to the EAST and NORTH."

There is a pledge in The Living Room. "You keep seeing pledges wearing diapers, wonder what that's all about..."

[The Upstairs Hallway]
The Upstairs Hallway is north of the Entrance Hall. The description of the Upstairs Hallway is "A long hallway, in several parts. You can explore more of the hallway by going EAST and WEST. To the SOUTH are the stairs back to the Entrance Hall. In this part of the Hallway, there is a door[if the player is not tipsy] with a tie wrapped around it[end if] to the NORTH."

[The East Hallway]
The East Hallway is east of the Upstairs Hallway. The description of the East Hallway is "The east part of the hallway. [if the player is not tipsy]This corner of the house takes the longest for cops to reach when parties get rolled, and as such is home to much of the drug consumption in the house. [end if]There is a bathroom to the SOUTH, a room [if the player is not drunk]that reeks of pot [end if]to the NORTH, and a beautiful mahogany door to the EAST."

[The West Hallway]
The West Hallway is west of the Upstairs Hallway. The description of the West Hallway is "The west part of the hallway. This is the filthiest part of the house, and where the pledges are forced to live. The pledge dorm is to the WEST, there's a bathroom to the NORTH, and a door to an unmarked room to the SOUTH."

[Hookup Room]
The Designated Hookup Room is north of the Upstairs Hallway. The description of the Designated Hookup Room is "The first thing you notice upon entering this room is the couple having sex on the bed to your right. There are three beds, evenly spaced out. In one corner of the room, there is a pile of sheets to put on the bed. In the other corner, there is a pile of condoms. The exit is to the SOUTH."

[Stoner Den]
The Stoner Den is north of the East Hallway. The description of the Stoner Den is "A dark room. Your vision is obscured by smoke, which clouds the room and fills your lungs. The only light you can use to make your way through the room is the laser-light show projected on the ceiling, captivating the inhabitants of the room. The exit is to the SOUTH."

There are four stoners in the Stoner Den.

[The Presidential Suite]
The Presidential Suite is a room. The description of the Presidential Suite is "As soon as you enter the suite, you feel completely taken out of the fraternity house. While everything else in this house is dirty and uncleaned, this room is spotless, and feels like a five-star hotel right after a visit from the maids.  A bar is in the corner of the room, with an uncorked bottle of champagne. The exit is to the WEST."

The Mahogany Door is east of the East Hallway and west of the Presidential Suite. It is a door and scenery. The Mahogany door is closed. The Mahogany door is lockable and unlocked. "By far the nicest door in the house, it looks out of place.[if the player is not drunk] Seems like something that's best avoided[otherwise]Wonder what[']s inside[end if]."

Every turn when the player is in the Presidential Suite:
	say "[if the player is not tipsy]You immediately realize your mistake, you eek out a meager 'eh, sorry.' before dashing back to the hallway. The door clicks locked behind you. Best keep your head low for a little bit[otherwise if the player is not smashed]The president of the fraternity looks up from his scotch and engaging conversation to glare at you. 'Why is he still here?' he asks, and immediately two brothers wearing suits and sunglasses grab you and drag you from the room. The door is slammed and locked behind you as you are thrown out into the hallway[otherwise]A bunch of dudes in suits and shit are sitting about drinkin whiskey, one of them tries to kick you out, but you[']ll have none of that! You throw a few punches at the assholes that try to escort you out, but you are man handled liked a bitch and thrown from the room[end if].";
	Now the player is in the East Hallway;
	now the mahogany door is closed;
	now the mahogany door is locked.

[The Coke Den]
The Cocaine Den is south of the East Hallway.  The description of the Cocaine Den is "You enter to find several people with bloodshot eyes. Everyone stares at you intensely, like a pride of lions coming upon a single zebra. Several lines of white powder are on the bathroom mirror, which has been taken off the wall. The exit is NORTH."

There are three cokeheads in the Cocaine Den.

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
	
Instead of giving the Beer to Cigarette Bitch:
	say "He accepts the beer graciously, nobody ever gives pledges beer at a party! 'Thanks man! You ever need anything, just ask me! I got the hookups on a pack of smokes.'";
	Now the current mood of the Cigarette Bitch is happy;
	remove beer from play;
	
At 12:00 PM:
	if the current mood of the Cigarette Bitch is not happy:
		Now the current mood of the Cigarette Bitch is hammered;
		say "[if the player is not drunk]The cigarette bitch looks fed up with his post, he pulls out a flask and begins to drink heavily. Perhaps he'll loosen up on his 'No free Smokes' policy...[otherwise]You hear someone talking about the Cig bitch givin out free smokes! Better check it out.[end if]";

The description of the Cigarette Bitch is "Poor pledge got the short end of the stick,[if the current mood of Cigarette Bitch is angry]no wonder he's grumpy[otherwise if the current mood of Cigarette Bitch is hammered] and he's going to get in a lot more trouble once the other brothers notice he's drunk on the job[otherwise if the current mood of Cigarette Bitch is happy]but he[']s got a smile on anyway[otherwise]Some people just have no luck[end if]."

Understand "Cigarettes" as "[Pack of Smokes]".
Understand "Smokes" as "[Pack of Smokes]".
Understand "Pack" as "[Pack of Smokes]".
Understand "Pack of Smokes" as "[Pack of Smokes]".

The Cigarette Bitch can be HasntGiven or HasGiven. The Cigarette Bitch is HasntGiven.

Before asking the Cigarette Bitch about "[Pack of Smokes]":
	if the current mood of Cigarette Bitch is angry:
		instead say "[if the player is not smashed]This Pledge is not happy about being Cigarette Bitch tonight, he scowls at you, 'Cigarette[']s are 5 bucks.' Better find some money or help this guy lighten up.[otherwise]This fuckin pledge... won[']t give you any free cigmarets. Looks like someone needs a beer!";
	otherwise if the current mood of Cigarette Bitch is hammered:
		instead say "[if the player is not drunk]Looks like the Cig Bitch had a bit too much to drink on the job. He's hanging out smokes for free and the resulting crowd won't let you through[otherwise]You shove your way through the crowd, but when you try to get free smokes, the Cig Bitch just laughs at you and has a couple of his new 'friends' shove you away.[end if]";
	otherwise if the current mood of Cigarette Bitch is happy:
		if the Cigarette Bitch is HasntGiven:
			Now the player is carrying a pack of smokes.;
			Now the Cigarette Bitch is HasGiven.;
			instead say "The Cigarette Bitch is happy to see a friendly face for once, 'Don't worry about these ok?' he says as he slips you a pack for free.";
		otherwise: 
			instead say "This pledge likes you, but not enough to get caught giving away free smokes. Enjoy the pack you already have.";
			
Section 3D - Main Characters


Girlfriend is a woman in the Living Room.
Girlfriend is dating the Player. The current mood of Girlfriend is neutral.

Every turn (this is the show mood-shifts rule):
	 if the current mood of Girlfriend is not the previous mood of Girlfriend:
		 repeat through the Table of Girlfriend Moods:
			 if the last entry is the previous mood of Girlfriend and the new entry is the current mood of Girlfriend:
				 say "[description entry][paragraph break]";
				 break.

[This is a full mood table. Not everything needs to be filled out, in fact.
Only possible interactions should be. Most characters won't become
coked out or stoned, so I've left it off for now.]
Table of Girlfriend Moods
last	new	description 
neutral	angry	"" 
neutral	happy	"" 
neutral	sad	""
neutral	horny	""
neutral	hammered	""
angry	neutral	""
angry	happy	""
angry	sad	""
angry	horny	""
angry	hammered	""
happy	neutral	""
happy	angry	""
happy	sad	""
happy	horny	""
happy	hammered	""
sad	neutral	""
sad	angry	""
sad	happy	""
sad	horny	""
sad	hammered	""
horny	neutral	""
horny	angry	""
horny	happy	""
horny	sad	""
horny	hammered	""
hammered	neutral	""
hammered	angry	""
hammered	happy	""
hammered	sad	""
hammered	horny	""

Section 4 - Scenes

[Base rules for major events]
A scene can be restricted or free. 

Instead of going somewhere during a restricted scene: 
	say "Yeah, that's not happening. You're going to have to stay here and sort this shit out." 
	
Section 4B - Main Events

Section 4C - Time

When play begins:
	change the speed of time to 4.
  
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
