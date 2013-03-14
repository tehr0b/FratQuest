"FratQuest" by Robert Giusti and Ryan Anderson

[Extensions]
Include Mood Variations by Emily Short.
Include Player Experience Upgrade by Aaron Reed.
Include Assumed Conversers by Michael Martin.
Include Patrollers by Michael Callaghan.
Include Native Time Control by Tim Pittman.
Include Simple Followers by Emily Short.

[Use UNDO prevention.]

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
	[say "Time: [time of day]";]
	if the player is blacked-out and the player is not sick:
		end the story saying "You black out, and never wake up.";
	otherwise if the player is sober:
		change the speed of time to -2;
	otherwise if the player is smashed:
		change the speed of time to a random number between 1 and 2;
	otherwise if the player is drunk:
		change the speed of time to a random number between 1 and 5;
	otherwise if the player is tipsy:
		change the speed of time to a random number between 3 and 7;
		
[Throwing up]		
Puking is an action applying to one visible thing. Understand "puke in [something]" or "puke on [something]" or "throw up in [something]" as puking.

Vomit is a kind of thing. The plural of vomit is a pile of vomit.

At the time when the player pukes:
	if the player is sick:
		now the player is healthy;
		[carry out puking;]
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
	[end if]drinks tonight."
  
A person has a number called bladder content.
  
Section 2 - People

[General interaction and Conversation Rules]

[
General interaction rules.
All default interactions should be Instead or After rules.
All overridden interactions should be before rules that end in instead rules.
]

[Bro Factor]
Drinking is brotastic. Kissing a woman is brotastic. Attacking a man is brotastic. Singing is disorderly conduct. 

Reporting is Collective.

[Relationships]

Dating relates one person to another (called the date). 

The verb to date (they date, it dates, it is dating) implies the dating relation.

Friendship relates one people to another (called a friend).

The verb to befriend (they befriend, it has befriended, it likes, it is friends with) implies the friendship relation.

Hatred relates one people to another (called a frenemy).

The verb to hate (they hate, it hates) implies the hatred relation.

Infatuation relates various people to one person (called the crush).

[Mood]

The current interlocutor is an object that varies.

The moods are neutral, happy, sad, angry, horny, hammered, coked-out, and stoned.

The current mood of a person is usually neutral.
The previous mood of a person is usually neutral.

[Cliques -- Secondary Character Types with simple interactions]

A Stoner is a kind of person.

The current mood of a stoner is usually stoned.
The previous mood of a stoner is usually stoned.

Instead of asking a stoner about something:
	say "The stoner stares blankly at you, 'I'm sorry, totally zoned during what you just said.' This won't go anywhere fast..."

Instead of sobriety testing a Stoner:
	say "You can tell from their eyes [one of]and the bag of funions they are opening[or]and the bag of funions they are scarfing down[or]and the bag of funions they are [italic type]still[roman type] munching on,[stopping] that they are definitely not sober."

A Bro is a kind of person.

The current mood of a bro is usually hammered.
The previous mood of a bro is usually hammered.

Instead of asking a bro about something:
	if the player is not drunk:
		say "He doesn't seem to hear you, which makes sense, as [a random number from two to five] other guys and him are [one of]in a shouting match over[or]in deep discussion[or]arguing about[or]drinking solemnly while conversing about[purely at random][one of] how big their dicks are[or] who can drink the most[or] what major is the lamest[or] who is the hottest girl here[or] who the FUCK caused that smell in the upstairs game room[or] some political bullshit[or] some philisophy major crap[or] their favorite kind of beer[or] a recent episode of two and a half men[in random order].";
	otherwise:
		say "You yell out, 'DUUUUDE!!!' He spins around, clearly smashed, and clearly without recognition of who the fuck you are. 'DUUUUUUDE!!!!' he shouts back, shoving his way through the crowd to you. By the time he arrives, you've forgotten what you were going to talk about. Before you know it, he's talked you into doing a kegstand in the kitchen. Beer fountains into your mouth, and you chug like a champ!";
		now the player is in the kitchen;
		increase the alcohol content of the player by 2;
		if the player is not sick and a random number from one to the alcohol content of the player is greater than 8:
			say "As they lower you from the keg, you get a sudden, horrible feeling in the pit of your stomach. You don't have much time before you puke.";
			now the player is sick;
			the player pukes in two turns from now;
		increase the bladder content of the player by 1;

Instead of sobriety testing a Bro:
	say "You ask them how drunk they are, they reply by stretching their arms as wide as possible, and shouting 'THIS DRUNK!'"
	
A Sorority Chick is a kind of person.

The current mood of a Sorority Chick is usually hammered.
The previous mood of a Sorority Chick is usually hammered.

Instead of sobriety testing a Sorority Chick:
	say "That's a good way to get your ass kicked out. Besides, she's screaming about how she's 'sooooo drunk' so she's probably only had a beer."

A Cokehead is a kind of person.

The current mood of a cokehead is usually coked-out.
The previous mood of a cokehead is usually coked-out.

Instead of asking a cokehead about something:
	say "'Oh I know all about that!' The cokehead proceeds to educate you completely on [one of]Philosophy[or]Deviant Penguins[or]Pornography as an artform[or]BEES!!! FUCKING AFRICANIZED BEES!!![or]Ecotourism[or]Necrophilia[or]Drone Assassinations[or]GPS devices in our Phones[or]how much fun Coke is[or]the Advertising industry and how fucking hard it is[or]Corporations or some shit[or]how awesome their business card is[or]their medical history[or]their home life[or]their entire fucking life story[or]how badly they want to fuck the fraternity president's girlfriend[in random order]! A few other cokeheads join in on the conversation and you are quickly forgotten."

Instead of sobriety testing a cokehead:
	say "You just saw him do a line of coke, he's probably not sober."

A Pledge is a kind of patroller. A Pledge is Aimless. The drive of a pledge is 30.
The OpeningCapability of a pledge is None. A Pledge is usually On Patrol.

Instead of asking a pledge about something:
	say "Only the fraternity members get the pleasure of bossing around pledges."
	
Instead of sobriety testing a Pledge:
	say "Pledges aren't allowed to drink at these parties. Don't waste your time."
	
Section 3 - The Fraternity House

[Porch]
The Porch is a room.  The description of the Porch is "You are outside of the fraternity house. Two large, swinging doors block the path into the house.[if the player is sober] On the side of the building are large, red metal letters, spelling out BRO.[end if]"

After going to the Porch:
	if the player has claire's body:
		say "You walk out of the party with Claire's body slung over your shoulder. [if the player is drunk]Even in your drunken state,[otherwise]Across the street,[end if] you see the Sigma Iota Sigma Sorority house accross the street from the fraternity house.  You lock eyes with the bouncer, who gives you a nod, and you walk Claire over to her sorority's house.[paragraph break]A weary-eyed girl wearing pajamas patterned with childish teddy bears with a cup of coffee answers the door, and upon seeing Claire she immediately goes into Mother Hen mode. She thanks you dearly for bringing Claire back. You offer to help more with Claire, but she assures you that she's gotten it taken care of. You can hear her yelling to another few sisters as she closes the door.[paragraph break]You walk back over to the fraternity house and find yourself on the porch again. The bouncer gives you a smile and says, 'You done good, bro.'";
		remove claire's body from play;
		increase the score by 100;



[Entrance Hall]
The Entrance Hall is north of the Porch. The description of the Entrance Hall is "People are scattered about in conversation, drinking beer. [if the player is not drunk]You can see pledges rushing to and fro, balancing cups of beer and packed bongs.[end if] There are doors to the EAST and WEST, as well as stairs to the NORTH. The exit back to the patio is SOUTH."

There is a pledge in The Entrance Hall."A pledge scurries past you, carrying a beer for someone more important."

[The Kitchen]
The Kitchen is east of the Entrance Hall. The description of the Kitchen is "A Kitchen. There are several fridges, an oven range, as well as a table. On the table, there are full cups of beer. A pair of pledges pours beers from a keg and places them onto the table, keeping it refreshed. To the SOUTH, there is a long line outside of the bathroom. There are also doors to the NORTH and WEST. Line length: [line length]."

Tucker is a bro in the kitchen."[if the player is not drunk]Tucker from one of your GEs freshman year is posted up next to the kegs, downing beer after beer[else]Tucker is here! Bet he's down for a kegstand[end if]."

The line length is a number that varies.

Before going to the Kitchen:
	decrease line length by line length;
	increase line length by a random number from 5 to 10;
	now the bathroom door is locked.

The Bathroom Door is south of the Kitchen and north of the Downstairs Bathroom. The bathroom door is a door. It is closed and locked.

Instead of opening the bathroom door:
	if the player is in the kitchen:
		say "There's someone inside, and an ever-growing line of people giving you dirty looks.";
	otherwise:
		now the player is in the Kitchen.
		
The Bathroom Line is a container in the Kitchen. The Bathroom Line is enterable. It is undescribed. The description is "A line of [if the player is sober][line length] [end if]people patiently waiting to use the bathroom."

After waiting:
	if the player is in the bathroom line:
		if the line length is greater than zero:
			decrease the line length by one;
			if the line length is greater than 4 or the player is drunk:
				say "You take a step forward as the bathroom line shrinks a little bit.";
			otherwise if the line length is greater than 0:
				say "Almost to the front of the line!";
			otherwise:
				say "The person in front of you enters the bathroom. You're next!";
		otherwise:
			now the player is in the downstairs bathroom;
			now the bathroom door is unlocked.
	
[Downstairs Bathroom]
The Downstairs Bathroom is a room. The description of the Downstairs Bathroom is "A [if the player is not drunk]dirty[end if] bathroom. The toilet is [if the player is drunk]full, but usable, no need to flush, best save water.[otherwise]broken, and you can see a swirl of brown and yellow colors in the water.[end if] The floor is [if the player is not smashed]sticky[else]comfortable[end if]. There is a condom on the ground. The door back to the kitchen is NORTH."

[Dining Room]
The Dining Room is north of the Kitchen. The description of the Dining Room is "A dining room that has been converted to a sort of Beer Pong Arena. Teams are playing the game[if the player is not tipsy] at four different tables, which take up the majority of the room. There is an air of intensity from how seriously the players are taking their game[end if]. There are doors to the SOUTH and WEST."

There is a pledge in The Dining Room. "A pledge is hitting on some freshman girl while her boyfriend plays beer pong."

[Patio]
The Patio is west of the Dining Room. The description of the Patio is "An open-aired social area[if the player is not tipsy] with many chairs and tables[end if]. People are sitting about, smoking cigarettes. [if the player is not smashed]You see a pledge with a sign around his neck that says, 'Pack of Smokes: $5'.[end if] Stairs down into the main area of the backyard are to the NORTH. There are doors to the EAST and SOUTH."

Don is a bro in the Patio."[if the player is not drunk]You see Don from intro to chem here, smoking a cigarette with a few people you don't really know[else]Don is over there! You guys should do a kegstand[end if]."
		
[The Backyard]
The Backyard is north of the Patio. The description of the Backyard is "The backyard. More people smoking cigarettes and just chillaxing."
		
[The Living Room]
The Living Room is south of the patio. The Living Room is west of the Entrance Hall. The description of the Living Room is "A living room that has been converted to a dance floor. People are packed into the room, dancing close to each other. The music booms, and you can hear nothing else. There are doors to the EAST and NORTH."

Brock is a bro in the Living Room."[if the player is not drunk]Brock from your theory of checkers lecture is hanging in the corner of the room[else]Your buddy Brock from theory of checkers is looking lonely, dude could probably go for a kegstand right about now[end if]."

There is a pledge in The Living Room. "You keep seeing pledges wearing diapers, wonder what that's all about..."

[The Upstairs Hallway]
The Upstairs Hallway is north of the Entrance Hall. The description of the Upstairs Hallway is "A long hallway, in several parts. You can explore more of the hallway by going EAST and WEST. To the SOUTH are the stairs back to the Entrance Hall. In this part of the Hallway, there is a door[if the player is not tipsy] with a tie wrapped around it[end if] to the NORTH."

[The East Hallway]
The East Hallway is east of the Upstairs Hallway. The description of the East Hallway is "The east part of the hallway. [if the player is not tipsy]This corner of the house takes the longest for cops to reach when parties get rolled, and as such is home to much of the drug consumption in the house. [end if]There is a bathroom to the SOUTH, a room [if the player is not drunk]that reeks of pot [end if]to the NORTH, and a beautiful mahogany door to the EAST."

[The West Hallway]
The West Hallway is west of the Upstairs Hallway. The description of the West Hallway is "The west part of the hallway. This is the filthiest part of the house, and where the pledges are forced to live. The pledge dorm is to the WEST, there's a bathroom to the NORTH, and a door to an unmarked room to the SOUTH."

[Hookup Room]
The Designated Hookup Room is north of the Upstairs Hallway. The description of the Designated Hookup Room is "The first thing you notice upon entering this room is the couple having sex on the bed to your right. There are three beds, evenly spaced out. In one corner of the room, there is a pile of sheets to put on the bed. In the other corner, there is a pile of condoms. The exit is to the SOUTH."

Before going to the Designated Hookup Room:
	if the player has claire's body:
		say "As you enter the room with Claire's unconcious body in tow, you feel a large hand grab your shoulder. You turn to see the bouncer from the front of the house very close to you.[paragraph break]'I  don't think she's givin['] you consent, bro' he says in a complete deadpan voice.[paragraph break]The next thing you know, you're being lifted off of your feet and have dropped Claire. Suddenly, you're down the hall, and then in just as short of a time, you're out the window, hurtling towards the ground. You hit the ground hard, breaking both of your arms, legs, and a femur. You've got a large gash above your right eye, and let's not even get talking about your left eye. Oh, and the shattered kneecaps, can't forget the shattered kneecaps. Yeah, you're probably never walking again. But you know what?[paragraph break]You are a bad person.";
		end the story finally;

[Stoner Den]
The Stoner Den is north of the East Hallway. The description of the Stoner Den is "A dark room. Your vision is obscured by smoke, which clouds the room and fills your lungs. The only light you can use to make your way through the room is the laser-light show projected on the ceiling, captivating the inhabitants of the room. The exit is to the SOUTH."

There are four stoners in the Stoner Den.

[The Presidential Suite]
The Presidential Suite is a room. The description of the Presidential Suite is "As soon as you [if the player is not drunk]step[otherwise if the player is not smashed]stagger[otherwise]burst[end if] through the door, you feel completely taken out of the fraternity house. While everything else in this house is [if the player is not drunk]dirty and uncleaned[else]shitty[end if], this room is [if the player is not drunk]spotless, and feels like a five-star hotel right after a visit from the maids.[else]fancy as fuck![end if]  A bar is in the corner of the room[if the player is not tipsy], with an uncorked bottle of champagne[end if]. The exit is to the WEST."

The Mahogany Door is east of the East Hallway and west of the Presidential Suite. It is a door and scenery. The Mahogany door is closed. The Mahogany door is lockable and unlocked. "By far the nicest door in the house, it looks out of place.[if the player is not drunk] Seems off-limits[otherwise]Wonder what's inside[end if]."

Every turn when the player is in the Presidential Suite:
	say "[if the player is not tipsy]You immediately realize your mistake, you eek out a meager 'eh, sorry.' before dashing back to the hallway. The door clicks locked behind you. Best keep your head low for a little bit[otherwise if the player is not smashed]The president of the fraternity looks up from his scotch and engaging conversation to glare at you. 'Why is he still here?' he asks, and immediately two brothers wearing suits and sunglasses grab you and drag you from the room. The door is slammed and locked behind you as you are thrown out into the hallway[otherwise]A bunch of dudes in suits and shit are sitting about drinkin whiskey, one of them tries to kick you out, but you'll have none of that! You throw a few punches at the assholes that try to escort you out, but you are man handled liked a bitch by the guards and thrown from the room[end if].";
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

[Regions]
Lower Floor is a region. The Living Room, The Dining Room, The Downstairs Bathroom, The Kitchen, and the Entrance Hall are in Lower Floor.

Upper Floor is a region. The Bad Smelling Room, The Pledge Dorm, The Upstairs Bathroom, The Cocaine Den, the Presidential Suite, The Stoner Den, The Designated Hookup Room, The West Hallway, The Upstairs Hallway, and The East Hallway are in Upper Floor.

Outdoors is a region. The Patio, The Porch and The Backyard are in Outdoors.

Section 3B - Random Crap

Instead of taking inventory: 
	say "You're carrying [a list of things carried by the player][if the player wears something]. You are wearing [a list of things worn by the player][end if]." 

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
A cigarette is a kind of thing. A cigarette is edible.

Before eating a cigarette:
	if the player is not smashed:
		instead say "You aren't that drunk.";
	otherwise:
		say "You shove the cigarette in your mouth and chew, it wasn't as good as you hoped it would be, but you've eaten worse."

A Pack of Smokes is a container. A Pack of Smokes usually contains twelve cigarettes.
The carrying capacity of a pack of smokes is 12.

Before inserting something that is not a cigarette into a Pack of Smokes:
	instead say "[if the player is not smashed]That clearly will not fit there[else]You try to shove the [noun] into the Pack, but with limited success[end if].";


Section 3C - Secondary Characters

[The guitar guy, our most blatant animal house reference]
The Guitar Guy is a man in the Upstairs Hallway. The Guitar Guy can be playing or guitarless.
The Guitar Guy is playing. "[if the Guitar Guy is playing]Some dude sits surrounded by drunk girls playing a 'totally original' acoustic cover of [one of]'Wonderwall' by Oasis[or]'Rolling in the Deep' by Adele[or]'I Love College' by Asher Roth[or]'Fireflies' by Owl City[or]'Good Riddance' by Green Day[or]'Fast Car' by Tracy Chapman[or]'Hey Ya' by Outcast[in random order] on his guitar. They are eating this shit up.[otherwise]The Guitar Guy sits alone moping over his shattered guitar.[end if][if the player is not drunk and the Guitar Guy is guitarless] You feel a little bad, at least you said sorry.[otherwise if the Guitar Guy is guitarless] Fucker had it coming.[end if] [if the player is not tipsy and the Guitar Guy is playing]You hate that song...[otherwise if the player is not drunk and the Guitar Guy is playing]He's actually pretty decent.[otherwise if the player is not smashed and the Guitar Guy is playing]You're drunk enough to actually like this song.[otherwise if the Guitar Guy is playing]Must... Smash... Douchebag... Guitar...[end if]"

Before of attacking the Guitar Guy:
	if the Guitar Guy is playing:
		if the player is not smashed:
			instead say "Those girls seem pretty into it, better leave him be.";
		otherwise:
			instead say "You wrench the guitar from his douche hands and smash it against the wall. Everyone stares at you dumbfounded as you hand him back his shattered guitar with a mumbled 'sorry...' Good. Fucking. Riddance.";
			now the Guitar Guy is guitarless;
	otherwise:
		if the player is not smashed:
			instead say "He's probably learned his lesson.";
		otherwise:
			instead say "You charge at the puca-shell necklace wearing prick, bellowing 'GUITAR MAN!' He sees you coming and immediately sprints through the crowd. You'll find him again, this is FAAAAAAAAAR from over.";
			now the Guitar Guy is in a random adjacent room;

[The Cigarette Bitch, Source of all Cigarettes]
The Cigarette Bitch is a Pledge in the Patio. The current mood of Cigarette Bitch is usually angry. The previous mood of Cigarette Bitch is usually angry.  "You see a pledge with a sign around his neck that says, 'Pack of Smokes: $5'. The Cigarette Bitch [one of]looks about aimlessly[or]is selling a few smokes[or]is being berated by a pack of drunken bros[at random]."
The Turn Frequency of the Cigarette Bitch is 4.
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

[The Bouncer, Guardian of the Frathouse]
The bouncer is a man in the Porch. "The biggest frat guy you've ever seen blocks your way into the party. The bouncer [one of]is turning away a few freshmen guys from the party[or]is letting in a crowd of girls[or]stands there, looking intimidating[in random order]."
			
Section 4 - Main Characters

Section 4A - Stacy, Your Girlfriend

[Your Girlfriend, Stacy]
Stacy is a woman in the Living Room.
Stacy is dating the Player. The current mood of Stacy is neutral. The printed name of Stacy is "Your Girlfriend, Stacy". "[Stacy] is talking to a few friends.[if the current mood of Stacy is neutral] She doesn't seem to see you[otherwise if the current mood of Stacy is happy] Stacy smiles and waves at you[otherwise if the current mood of Stacy is angry] She glares at you from across the room[otherwise if the current mood of Stacy is sad] Their conversation seems serious[otherwise if the current mood of Stacy is hammered] You can tell from across the room that she is absolutely smashed[otherwise if the current mood of Stacy is horny] She's giving you hardcore 'fuck me' eyes from across the room[end if]."

[Every turn:
	if the location of the player is the location of Stacy and the player has Claire's body:
		if the current mood of Stacy is not angry:]
			

[Mood Shifting Logic, Copy this for all Main Characters]
Every turn (this is the stacy mood-shifts rule):
	 if the current mood of Stacy is not the previous mood of Stacy:
		 repeat through the Table of Girlfriend Moods:
			 if the last entry is the previous mood of Stacy and the new entry is the current mood of Stacy:
				 say "[if the player is not drunk][Stacy] [description entry][paragraph break][end if]";
				 break.

[Hookup Logic]
Instead of kissing Stacy:
	if Stacy is dating the player:
		if the current mood of Stacy is neutral:
			say "You surprise Stacy with a [if the player is not drunk]well-intentioned, if a bit awkward,[otherwise if the player is not smashed]passionate[otherwise]masterful[end if] kiss. She wasn't expecting your sudden bout of affection, but is happy for it.";
			now the current mood of Stacy is happy;
		otherwise if the current mood of Stacy is happy:
			say "You pull Stacy aside for a [if the player is not drunk]loving kiss[otherwise if the player is not smashed]sloppy kiss[otherwise]hot makeout sesh[end if]. She is [if the player is not drunk]clearly impressed by your affection, who knows, you might actually get laid tonight[otherwise]D to the T to the muthafuckin' F!![end if]!";
			now the current mood of Stacy is horny;
		otherwise if the current mood of Stacy is hammered:
			say "You grab Stacy and [if the player is not drunk]are surprised as she pounces on you, you taste and awful lot of whisky on her tongue[otherwise]the two of you fall over, sloppily making out[end if].";
			now the current mood of Stacy is horny;
		otherwise if the current mood of Stacy is horny:
			say "You didn't need to ask her twice, Stacy is all over you in a heartbeat. Before you know it, she's dragged you up to the Designated Hookup Room. [if the player is not drunk]Sure you lasted like [a random number between three and six] minutes, and that one couple was weirdly watching you the entire time, but its been awhile since you've gotten any so you aren't complaining[otherwise if the player is not smashed]You are a fucking dynamo in the bedroom tonight![otherwise]From the little you remember, it was totally the best sex she's ever had[end if]. The two of you emerge from the room disheveled.";
			now the current mood of Stacy is happy;
			now the Player is in the Upstairs Hallway;
			now Stacy is in the Upstairs Hallway;
			increase the time of day by a random number between three and alcohol content plus five minutes;
		otherwise:
			say "Stacy turns her head as you swoop in for the kiss, hardcore denial.[if the player is not smashed] You hear a few bros in the background laugh at you, calling out 'Ooooooooooooooooooo... Fucking SHUT DOWN!' Fucking embarassing...[end if]";
	otherwise:
		if the player is not smashed:
			say "Yeah, you guys just broke up, probably not the best time.";
		otherwise:
			say "[Stacy] slaps you as you try to kiss her. The giant frat guy she's talking to shoves you back. 'Get lost loser, Stacy doesn't want anything to do with you.' You drunkenly storm off.";
			now the player is in a random room that is not the kitchen.

[Assuming our player is a horrible person.]
Instead of attacking Stacy:
	if the player is smashed:
		if Stacy is dating the player:
			say "The room goes into stunned silence as you slap [Stacy] across the face. Tears well up in her eyes as she says 'We're over, you fucking monster.' and runs off. You better get out of here, this frat doesn't take kind to people who beat on their girlfriends.";
			now Stacy is in the Kitchen;
			now the current mood of Stacy is sad;
			now Stacy does not date the player;
	if Stacy is not dating the player:
		if the player is drunk:
			say "The room goes into stunned silence as you slap [Stacy] across the face. Tears well up in her eyes and flees the room. You better get out of here, this frat doesn't take kind to people who beat on girls, regardless of whether or not they dumped you.";
			now Stacy is in the Kitchen;
			now the current mood of Stacy is sad;
	otherwise:
		say "You would never hit [Stacy]."

[Limit interaction with Stacy post breakup]
Before asking Stacy about something:
	if Stacy is not dating the player:
		say "She really doesn't want to talk to you right now. Best not push it.";

[Change Stacy's name based on her relationship status.]
Every turn:
	if Stacy is not dating the player:
		if the printed name of Stacy is not "Your Ex, Stacy":
			now the printed name of Stacy is "Your Ex, Stacy".

[This is a full mood table. Not everything needs to be filled out, in fact.
Only possible interactions should be. Most characters won't become
coked out or stoned, so I've left it off for now.]
Table of Girlfriend Moods
last	new	description 
neutral	angry	"seems pissed off at you for something..." 
neutral	happy	"smiles at you." 
neutral	sad	"starts to cry, it probably has something to do with you."
neutral	horny	"whispers in your ear 'meet me upstairs...'"
neutral	hammered	"just keeps throwing back shots, she's starting to stagger about."
angry	neutral	"is less mad at you than before, fingers crossed on it staying that way."
angry	happy	""
angry	sad	""
angry	horny	""
angry	hammered	"is drinking angry, this is not going to end well."
happy	neutral	""
happy	angry	""
happy	sad	""
happy	horny	"whispers in your ear 'meet me upstairs...'"
happy	hammered	""
sad	neutral	""
sad	angry	""
sad	happy	""
sad	horny	""
sad	hammered	""
horny	neutral	"doesn't seem to be in the mood anymore. Oh well... business as usual."
horny	angry	""
horny	happy	"is much happier now, maybe she needed to get laid as badly as you did."
horny	sad	""
horny	hammered	""
hammered	neutral	"isn't so drunk anymore."
hammered	angry	"just sobered up through pure rage."
hammered	happy	""
hammered	sad	""
hammered	horny	"grabs your ass. 'Meet me in the fuck room.' she slurs at you with a 'sly' wink. [if the player is drunk]Game muthafuckin ON![otherwise]She seems pretty sloppy right about now, but then again you haven't slept with her in ages...[end if]"

Section 4B - Chad, An Old Friend From High School

[Chad]
Chad is a man in the Dining Room. The current mood of Chad is sad. Chad can be tournamentReady or partnerLess. Chad is partnerLess. The printed name of Chad is "Chad, from High School"."[Chad] is here.[if the current mood of Chad is neutral] He idly sips his beer[otherwise if the current mood of Chad is happy] Chad is excitedly talking to someone else in the frat[otherwise if the current mood of Chad is angry] He refuses to even look your way[otherwise if the current mood of Chad is sad] He looks really disappointed[otherwise if the current mood of Chad is hammered] He seems to have found a fifth of jack[otherwise if the current mood of Chad is horny] He is on, as he has called it since high school, 'babe patrol'[end if][if Chad is partnerLess and the time of day is before 10:30 PM]. He seems to be waiting for someone[end if]."

[Mood Shifting Logic, Copy this for all Main Characters]
Every turn (this is the chad mood-shifts rule):
	if the current mood of Chad is not the previous mood of Chad:
		 repeat through the Table of Buddy Moods:
			if the last entry is the previous mood of Chad and the new entry is the current mood of Chad:
				say "[if the player is not drunk][Chad] [description entry][paragraph break][end if]";
				break.

Before Chad kissing Stacy:
	now Stacy does not date the player;
	now Stacy is dating Chad;
	if the location of Chad is the location of the player:
		if the player is not smashed:
			Now the printed name of Chad is "Chad, Textbook Chode";		
			Now the printed name of Stacy is "Your Slut Ex, Stacy";
		
Every turn:
	if the player is not smashed:
		if Stacy is dating Chad:
			if the location of Chad is the location of the player:
				if the printed name of Chad is not "Chad, Textbook Chode":
					say "You see Chad and Stacy walking through the party holding hands... What the fuck?";
					Now the printed name of Chad is "Chad, Textbook Chode";		
					Now the printed name of Stacy is "Your Slut Ex, Stacy";

[Sudden unexpected romantic twist!?]
Instead of kissing Chad:
	end the story finally saying "There's no use holding back anymore, you grab Chad by his gorgeous head and pull him close. He's surprised by your kiss, and pushes away. You stammer, 'Uh... I didn't mean-' but he puts his finger to your lips to silence you, and whispers 'I never knew you felt the same way. We don't have to live this lie anymore.' The two of you had always had a thing for eachother, but buried it deep down for fear of the other's reaction. You don't know what possessed you to finally take this leap, but you are so happy you did. [if Stacy is dating the player and the player is not smashed]'What!?' Stacy squawks from behind you. You turn to see Stacy standing there, dumbfounded.[otherwise if Stacy is dating Chad and the player is not drunk]You notice Stacy standing behind him, in complete shock.[end if] But you couldn't give a damn about her right now, now that you and Chad have finally found eachother. The two of you leave the party, hand in hand.";

[Chad's mood table]
Table of Buddy Moods
last	new	description 
neutral	angry	"frowns and mutters something under his breath..." 
neutral	happy	"" 
neutral	sad	"looks bummed, but he tries to hide it."
neutral	horny	"is flirting with someone, he's using the same lines as back in high school."
neutral	hammered	"smashes a beer into his forehead 'Fuck yeah!' he shouts."
angry	neutral	"doesn't seem nearly as mad at you anymore."
angry	happy	""
angry	sad	""
angry	horny	""
angry	hammered	"is drinking angry, this is not going to end well."
happy	neutral	""
happy	angry	""
happy	sad	"looks bummed, but he tries to hide it."
happy	horny	"looks over to you, and when the girl he's talking to looks away, makes pelvic thrust gestures towards her while giving you the thumbs up."
happy	hammered	""
sad	neutral	""
sad	angry	""
sad	happy	"pulls you in for a brug* 'you're the best man!' 
*brohug."
sad	horny	""
sad	hammered	""
horny	neutral	""
horny	angry	""
horny	happy	"is beaming, someone's having a good night."
horny	sad	""
horny	hammered	""
hammered	neutral	"shakes his head, he seems to be sobering up."
hammered	angry	""
hammered	happy	""
hammered	sad	""
hammered	horny	""

Section 4C - Claire, a girl from class

[Claire]
Claire is a woman in the Patio.
The current mood of Claire is neutral. The printed name of Claire is "Some girl that you've had classes with (I think her name is Claire?)". "[if Claire is not shadowing the player][Claire] is hanging out, nursing a beer, in the corner of the room.[otherwise][Claire] stays close to you, staring intently at you.[end if] [if the current mood of Stacy is neutral] She seems to take notice of you as you enter the room, and stares in your general direction.[otherwise if the current mood of Stacy is happy] Stacy smiles and waves at you[otherwise if the current mood of Stacy is angry] She glares at you from across the room[otherwise if the current mood of Stacy is sad] Their conversation seems serious[otherwise if the current mood of Stacy is hammered] You can tell from across the room that she is absolutely smashed[otherwise if the current mood of Stacy is horny] She's giving you hardcore 'fuck me' eyes from across the room[end if]."

[Claire Mood Shifts]
Every turn (this is the show Claire mood-shifts rule):
	 if the current mood of Claire is not the previous mood of Claire:
		 repeat through the Table of Girlfriend Moods:
			 if the last entry is the previous mood of Stacy and the new entry is the current mood of Stacy:
				 say "[if the player is not drunk][Claire] [description entry][paragraph break][end if]";
				 break.

Every turn:
	if Claire is shadowing the player:
		[say "[Claire] continues to follow you around.";]
		if the location of Claire is the location of Stacy:
			say "Uh-Oh";
	if the location of the player is the location of Claire and Claire is not shadowing the player and the current mood of Claire is neutral:
		say "[Claire] comes up to you";
		now the current mood of Claire is happy;
		now Claire is shadowing the player;
	if the current mood of Claire is not neutral and the previous mood of Claire is neutral:
		now the printed name of Claire is "Claire";
		
[Hook-up Logic]
Instead of kissing Claire:
	if the player is not drunk and the player is dating Stacy:
		say "Whoa dude, no. You've got a girlfriend, remember Stacy?";
	otherwise if the current mood of Claire is happy or the current mood of Claire is hammered:
		say "You smooch Claire nice and good. Mmmmmmm.";
		now the current mood of Claire is horny;
	otherwise if the current mood of Claire is angry or the current mood of Claire is sad:
		say "You go in for the kiss, but [Claire] keeps turning her head to the opposite side, dodging your advances.";
	otherwise if the current mood of Claire is horny:
		if the player is not drunk:
			say "You kiss [Claire] again, and she's completely sloppily all over you. She [if the player is sober]clearly[end if] wants it, however she is way drunker than you, and that just wouldn't be right.";
		otherwise:
			now the Player is in the Designated Hookup Room;
			
			remove Claire from play;
			move Claire's Body to the Designated Hookup Room;
			if the player is dating Stacy:
				now Stacy is in the Central Hallway;
				now the current mood of Stacy is angry;
			increase the time of day by a random number between three and alcohol content plus five minutes;

	
[Claire's passed out body]
Claire's body is a thing. "The ragdoll body of [Claire], completely passed out." Understand "Claire" or "Body" as Claire's body.

[Getting Claire more drunk]
Instead of giving beer to claire:
	if the current mood of Claire is hammered:
		say "[Claire] drinks it, then drops the cup and falls to the floor with it. Everyone stops and stares for a moment as her body hits the floor, but then everyone goes back to their normal business.";
		remove Claire from play;
		move claire's body to the location of the player;
	otherwise:
		say "[Claire] chugs the beer, [if the current mood of Claire is neutral]and hands you the empty cup.[otherwise if the current mood of Claire is angry]and smashes the empty cup in her hand.[otherwise if the current mood of Claire is sad]and drops the empty cup on the ground, crying.[otherwise if the current mood of Claire is happy]and throws the cup up in the air, then wraps her arms around your neck.[otherwise if the current mood of Claire is horny]and drops the cup, then starts rubbing her hands on your chest.[end if]She belches, and giggles to herself[if the player is not drunk], the booze in that belch alone is enough to make you feel drunker[end if].";
		remove the beer from play;
		increase the alcohol content of the player by 1;
		now the current mood of claire is hammered.
				 
Table of Claire Moods
last	new	description 
neutral	angry	"" 
neutral	happy	"smiles at you as her eyes light up." 
neutral	sad	""
neutral	horny	""
neutral	hammered	"is getting towards being totally trashed."
angry	neutral	""
angry	happy	""
angry	sad	""
angry	horny	""
angry	hammered	""
happy	neutral	""
happy	angry	""
happy	sad	""
happy	horny	""
happy	hammered	"might be getting a little carried away with the booze..."
sad	neutral	""
sad	angry	"looks like she's getting angry[if the player is drunk], and she's not getting any prettier[end if]."
sad	happy	""
sad	horny	""
sad	hammered	"doesn't look so good, maybe you shouldn't feed her more beer."
horny	neutral	""
horny	angry	""
horny	happy	""
horny	sad	""
horny	hammered	""
hammered	neutral	""
hammered	angry	""
hammered	happy	""
hammered	sad	""
hammered	horny	"starts rubbing her hands all over you. Really, all over you. Maybe you should move this somewhere else?"

Section 5 - Scenes

[Base rules for major events]
A scene can be restricted or free. 

Instead of going somewhere during a restricted scene:
	say "Yeah, that's not happening. You're going to have to stay here and sort this shit out."
 
Section 5A - Main Events

Section 5AA - Beer Pong Tournament

[Chad's Missing Partner]

Chad can be answered. Chad is not answered.

Chad's Missing Partner is a scene. Chad's Missing Partner begins when the time of day is after 9:00 PM. Chad's Missing Partner ends when the time of day is after 11:00 PM.

Understand "life" or "beer" or "beer pong" or "pong" or "partner" as "[beer pong]";

Instead of asking Chad about "[beer pong]":
	if the time of day is before 11:00 PM:
		say "[one of]'Well, I was supposed to be in this Beer Pong Tournament at 11, I'm pretty good too... But my buddy flaked out on me! Like a total bitch... Hey man, I know we haven't really hung out in college, but would you do me a huge favor and be my partner tonight?' Chad seems to be pretty amped for this tournament, you feeling like some beer pong?[or]'Did you change your mind? My partner still hasn't shown.'[stopping]";
		if the player consents:
			Now the current mood of Chad is happy;
			Now Chad is tournamentReady;
			Now Chad is not partnerLess;
			Now Chad is answered;
			say "'Awesome!' Chad says, 'Be back here at 11, we're going to kick serious ass!'";
		otherwise:
			Now Chad is answered;
			Now Chad is partnerLess;
			Now the current mood of Chad is sad;
			say "'That's cool man,' he says 'See you around!'";
	otherwise:
		say "'Game of champions bro!'";

When Chad's Missing Partner ends:
	if Chad is not partnerLess:
		say "WHAT TIME IS IT!? ITS BEER PONG TIME!!!";
		now the player is in the dining room;
	if the player is in the dining room:
		if Chad is tournamentReady:
			say "Chad is amped, 'Fuck yeah man! Let's do this!' he shouts as he runs over to your table.";
			[TODO:Finish First Round of Beer Pong Playing, include success or failure.]
		otherwise:
			say "Chad comes up to you[if the player is not smashed], apparently, even if he is bummed that he doesn't get to compete in the beer pong tournament, he is still here to have a good time[end if]. 'Hey man, since neither of us are in this tournament, wanna get fucked up? Never gotten weird with you man!'";
			if the player consents:
				Now the current mood of Chad is hammered;
				now the alcohol content of the player is 9;
				say "The two of you high five, and the next few hours dissolve into a blur of[if the player is not drunk] doing duo kegstands, wreaking havok all over the house, and dancing like muthafuckin maniacs on the dance floor to 'Fight for Your Right (To Party!)' by the Beastie Boyz[otherwise if the player is not smashed] throwing back flaming shots, takin['] fat bong rips, and crowdsurfing while listening to 'Nothin['] but a Good Time' by Poison[otherwise] chugging from a fifth of jack, punching your fists through walls, and sloppily drinking shots out of some sorority chick's belly while listening to 'Let's Get Rocked' by Def Leppard[end if]. Next thing you know both you and Chad are kicking it in the Stoner Den, throwing back a couple beers and bonding over an awesome night so far.";
				if Stacy is dating the player:
					now the current mood of Stacy is angry;
				Now the time of day is 2:00 AM;
				Now Chad is in the Stoner Den;
				Now the player is in the Stoner Den;
			otherwise:
				Now the current mood of Chad is hammered;
				say "'Suit yourself man, Chadster OUT!' [if the player is not smashed]Chad snatches a fifth of jack from a nearby pledges hands, upends it, and wanders off.[end if]";
				Now Chad is in the kitchen;
	if the player is not in the Dining Room:
		Now the current mood of Chad is hammered;
		if Chad is not in the Stoner Den:
			say "[if the player is not smashed]You hear [Chad] shout out 'FUCK BEER PONG, LET'S POUND SHOTS!!!' and the cheers of a crowd charging towards the kitchen.[end if]";
			Now Chad is in the kitchen;

[Round One]

BPT Round One is a scene. BPT Round One begins when Chad's Missing Partner ends.

When BPT Round One begins:
	if location of the player is not the Stoner Den:
		say "Everyone in the Dining Room begins to cheer and taunt as the first round of the Beer Pong Tournament begins."

Section 5B - Time
  
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

test terrible with "n / w / n / e / s / give beer to claire / take beer / give beer to claire / take body / w / n / n".
test goodguy with "n / w / n / e / s / give beer to claire / take beer / give beer to claire / take body / w / s".
