/* File: Challenge-7.k
 ---------------------------
Now that Karel has mastered Halloween, it’s time to celebrate a
different holiday. Karel has decided to deliver beeper valentines
to every student in an elementary school class that is using Karel
to learn about programming. Karel does not remember exactly how
many desks are in each horizontal row but does remember that there
are precisely three rows of desks and the classroom.

Karel can count on the following facts:

• Karel starts at 1st Avenue and 1st Street, facing east, with an
infinite number of beepers in its bag.

• There are exactly three rows of student desks just to the south
of 3rd, 5th, and 7th Streets.

• Karel does not know how many desks are in each row (which may differ),
how many blank spaces there are between the desks, or how many spaces exist
between the desks at the ends of each row and the walls of the classroom.
What Karel does know is that each of the desks is exactly one unit wide
and that there are no desks right up against the wall. 

When Karel is finished, all the desks in the room should have a valentine!
*/

import "turns";

function eastWall() {
	while (frontIsClear()) {
		move();
	}
	turnRight();
}

function oddRows() {
	move();
	if (frontIsClear()) {
		move();
	}
	turnRight();
}

function findDesks() {
	while (frontIsClear()) {
		move();
		if (rightIsBlocked()) {
			putBeeper();
		}
	}
}

function Solve(){
	turnLeft();
	while (frontIsClear()) {
		oddRows();
		findDesks();
		turnAround();
		eastWall();
	}
}
