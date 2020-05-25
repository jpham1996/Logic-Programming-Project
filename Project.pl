/*
  Student 1:  Yong Chen
  Student 2:  Jamie Pham
  Project 4:  Computer Science Department
*/

/* Functions:
1.  Check if the subject contains the major.
2.  Find the most important subject in major.
3.  Expert system:  find my major.  */

/* Facts:  Majors.  */
major(computer_science).
major(computer_engineering).
major(computer_information_system).
major(computer_networking).
major(information_technology).

/* Facts:  Subjects.  */
subject(hardware).
subject(software).
subject(networking).
subject(troubleshooting).
subject(mathematics).
subject(business).

/*Facts:  Majors (X) contains Subjects (X).  */
contains(computer_science, software).
contains(computer_science, networking).
contains(computer_science, mathematics).
contains(computer_engineering, hardware).
contains(computer_engineering, software).
contains(computer_engineering, mathematics).
contains(computer_information_system, networking).
contains(computer_information_system, business).
contains(computer_networking, software).
contains(computer_networking, networking).
contains(information_technology, troubleshooting).
contains(information_technology, business).
/* Check if the subject contains the major,
enter:  contains(major, subject).
For example, contains(computer_science, software). -> true.  */

/*Facts:  Finding the most important subject in the major.  */
most_important_subject(computer_science, software).
most_important_subject(computer_engineering, hardware).
most_important_subject(computer_information_system, business).
most_important_subject(computer_networking, networking).
most_important_subject(information_technology, business).
/* To find the most important subject, enter:
most_important_subject(major, Y).  Y = subject.
For example, most_important_subject(computer_science, Y). -> Y = software.  */

/* Start with ?- find_my_major. */
find_my_major :- hypothesize(Computer_Major),
      write('Let me help you to find your computer related major:  '),
      write(Computer_Major),
      nl,
      undo.

/* Hypotheses to be tested.  */
hypothesize(computer_science)   :- computer_science, !.
hypothesize(computer_engineering)     :- computer_engineering, !.
hypothesize(computer_information_systems)   :- computer_information_systems, !.
hypothesize(computer_networking) :- computer_networking, !.
hypothesize(information_technology) :- information_technology, !.
hypothesize(unknown).             /* No diagnosis.  */

/* Computer Related Major Rules */
computer_science :- computer, programming.
computer_engineering :- computer, engineer.
computer_information_systems :- computer, business.
computer_networking :- computer, networking.
information_technology :- computer, technology.

/* Computer Classification Rules */
computer :- verify('subjects related to computers in general'), !.
programming :- verify('loves coding'), !.
engineer :- verify('loves hardware and software design'), !.
networking :- verify('loves internet and routers'), !.
business :- verify('loves business and management'), !.
technology :- verify('loves computer technology'), !.

/* how to ask questions */
ask(Question) :-
    write('Do you like of these subject:  '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.






























