"FratQuest" by Robert Giusti and Ryan Anderson

[Extensions]
Include Mood Variations by Emily Short.

Section 1 - Alcohol

A person has a number called alcohol content.

Definition: A person is sober if its alcohol content is 2 or less.

Definition: A person is tipsy if its alcohol content is 3 or more.

Definition: A person is drunk if its alcohol content is 6 or more.

Definition: A person is smashed if its alcohol content is 10 or more.

A beverage is a kind of object.

Instead of drinking:
  say "You chug the drink, and feel a little bit drunker.";
  increase the alcohol content of the player by 1.
  
Sobriety Testing is an action applying to one visible thing. Understand "sobriety test [something]" as sobriety testing.

Check sobriety testing:
  if the noun is not a person, say "Inanimated objects can't be as drunk as you can be."
  
Carry out sobriety testing:
  say "Whoa, you can't just do that to anybody!"
  
Instead of sobriety testing the player:
  say "You think you've had about [alcohol content] drinks tonight."
  
Section 2 - People

[General interaction and Conversation Rules]

[Relationships]

Dating relates one person to another (called the date). 

Friendship relates various people to one person (called a friend).

Hatred relates various people to one person (called a frenemy).

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

A Bro is a kind of person.

The current mood of a bro is usually hammered.
The previous mood of a bro is usually hammered.

A Sorority Chick is a kind of person.

The current mood of a Sorority Chick is usually hammered.
The previous mood of a Sorority Chick is usually hammered.

A Cokehead is a kind of person.

The current mood of a cokehead is usually coked-out.
The previous mood of a cokehead is usually coked-out.

A Pledge is a kind of person.

Instead of asking a pledge about something:
	say "He's a pledge, what's he gonna know?"
	
Section 3 - The Fraternity House

[Porch]
The Porch is a room.  The description of the Porch is "You are outside of the fraternity house. Two large, swinging doors block the path into the house. On the side of the building are large, red metal letters, spelling out BRO. A door leading inside is to the NORTH."

[Entrance Hall]
The Entrance Hall is north of the Porch. The description of the Entrance Hall is "People are scattered about in conversation, drinking beer. You can see pledges rushing to and fro, balancing cups of beer and packed bongs. There are doors to the EAST and WEST, as well as stairs to the NORTH. The exit back to the porch is SOUTH."

[The Kitchen]
The Kitchen is east of the Entrance Hall. The description of the Kitchen is "A Kitchen. There are several fridges, an oven range, as well as a table. On the table, there are full cups of beer. A pair of pledges pours beers from a keg and places them onto the table, keeping it refreshed. To the SOUTH, there is a long line outside of the bathroom. There are also doors to the NORTH and WEST."

[Downstairs Bathroom]
The Downstairs Bathroom is south of the Kitchen. The description of the Downstairs Bathroom is "A dirty bathroom. The toilet is broken, and you can see a swirl of brown and yellow colors in the water. The floor is sticky. There is a used condom on the ground. The door back to the kitchen is NORTH."

[Dining Room]
The Dining Room is north of the Kitchen. The description of the Dining Room is "A dining room that has been converted to a sort of beer pong arena. Teams are playing the game at four different tables, which take up the majority of the room. There is an air of intensity from how seriously the players are taking their game. There are doors to the SOUTH and WEST."

[Patio]
The Patio is west of the Dining Room. The description of the Patio is "An open-aired social area with many chairs and tables. People are sitting about, smoking cigarettes. You see a pledge with a sign around his neck that says, 'Pack of Smokes: $5'. Stairs down into the main area of the backyard are to the NORTH. There are doors to the EAST and SOUTH."

[Cigarettes]
A cigarette is a kind of thing.

A Pack of Smokes is a container. A Pack of Smokes usually contains twelve cigarettes.

[The Cigarette Bitch, Source of all Cigarettes]
Cigarette Bitch is a Pledge in the Patio. The current mood of Cigarette Bitch is usually happy. The previous mood of Cigarette Bitch is usually angry.

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
		
[The Living Room]
The Living Room is south of the patio. The Living Room is west of the Entrance Hall. The description of the Living Room is "A living room that has been converted to a dance floor. People are packed into the room, dancing close to each other. The music booms, and you can hear nothing else. There are doors to the EAST and NORTH."

[The Central Hallway]
The Central Hallway is north of the Entrance Hall. The description of the Central Hallway is "A long hallway, in several parts. You can explore more of the hallway by going EAST and WEST. To the SOUTH are the stairs back to the Entrance Hall. In this part of the Hallway, there is a door to the NORTH."

[The East Hallway]
The East Hallway is east of the Central Hallway. The description of the East Hallway is "The east part of the hallway. There are doors to the NORTH, EAST, and SOUTH."

[The West Hallway]
The West Hallway is west of the Central Hallway. The description of the West Hallway is "The west part of the hallway. There are doors to the NORTH, WEST, and SOUTH."

[Hookup Room]
The Designated Hookup Room is north of the Central Hallway. The description of the Designated Hookup Room is "The first thing you notice upon entering this room is the couple having sex on the bed to your right. There are three beds, evenly spaced out. In one corner of the room, there is a pile of sheets to put on the bed. In the other corner, there is a pile of condoms. The exit is to the SOUTH."

[Stoner Den]
The Stoner Den is north of the East Hallway. The description of the Stoner Den is "A dark room. Your vision is obscured by smoke, which clouds the room and fills your lungs. The only light you can use to make your way through the room is the laser-light show projected on the ceiling, captivating the inhabitants of the room. The exit is to the SOUTH."

[The Presidential Suite]
The Presidential Suite is east of the East Hallway. The description of the Presidential Suite is "As soon as you enter the suite, you feel completely taken out of the fraternity house. While everything else in this house is dirty and uncleaned, this room is spotless, and feels like a five-star hotel right after a visit from the maids.  A bar is in the corner of the room, with an uncorked bottle of champagne. The exit is to the WEST."

[The Coke Den]
The Cocaine Den is south of the East Hallway.  The description of the Cocaine Den is "You enter to find several people with bloodshot eyes. Everyone stares at you intensely, like a pride of lions coming upon a single zebra. Several lines of white powder are on a table in the middle of the room. The exit is NORTH."

[Upstairs Bathroom]
The Upstairs Bathroom is north of the West Hallway. The description of the Upstairs Bathroom is "The first thing that hits you is the stench; absolutely putrid, like a dead cow that has been decomposing for weeks. Just stepping in the room, you know that you'll smell bad for the rest of the night. Vomit lines the walls, and what looks like fecal matter is smeared across the cracked mirror on the wall. You hear flies buzzing around in the small shower, and wonder how anyone might feel clean after using it. The exit is SOUTH."

[The Pledge Dorm]
The Pledge Dorm is west of the West Hallway. The description of the Pledge Dorm is "You find yourself in a large bedroom, lined with many triple bunk beds. The pledges all must share this room until they can become official members of the fraternity. No one is here, as all the pledges are running about the party, making it run smoothly."

[Smelly Room]
The Bad Smelling Room is south of the West Hallway. The description of the Bad Smelling Room is "The player should never be able to get in here, but it smells really really bad, even from the outside."

The player is in the Porch. The player carries a beer.
