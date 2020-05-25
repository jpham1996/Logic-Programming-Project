/* 
    COMP3071 LA3 - Prolog introduction
*/

/* insert your clauses here */

student(andy).
student(bobby).
student(chris).

bestFriend(chris,bobby).
bestFriend(bobby,chris).
bestFriend(chris,andy).

brother(andy,chris).
brother(chris,andy).

computeFriends(A,B):- bestFriend(A,B); bestFriend(B,A).

compute(A,B):- brother(A,B), bestFriend(B,A).

computeBrother(A,B):- brother(A,B).

computeBrother1(A,B):- brother(B,A).




/* put your example queries in this comment under your clauses 

compute(andy,chris).
computeFriends(bobby,X).
computeBrother1(andy,chris).

*/