/* 
    COMP3071 LA3 - Prolog introduction
    trains!
*/

station(hamburg).
station(bremen).
station(hannover).
station(berlin).
station(leipzig).
station(osnabruck).
station(stuttgart).
station(fulda).
station(munich).

adjacent(hamburg, bremen).
adjacent(hamburg, berlin).
adjacent(berlin, hannover).
adjacent(berlin, leipzig).
adjacent(leipzig, fulda).
adjacent(fulda, hannover).
adjacent(hannover, osnabruck).
adjacent(osnabruck, bremen).
adjacent(stuttgart, munich).

/* insert your clauses here */

adjacent_(A,B):- adjacent(A,B); adjacent(B,A).

connected(A,B):- adjacent_(A,B).
 
connected(A,B):- connected(A,C),adjacent_(C,B).