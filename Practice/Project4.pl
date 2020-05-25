/*
    Student:  Yong Chen
	Partner:  Jamie Pham
	
	Project:  Relationship Between European Countries
*/

/* insert your clauses here */

/* Base on:  
https://upload.wikimedia.org/wikipedia/commons/1/1a/Supranational_European_Bodies-en.svg
*/


/* Facts */

/* Region:  Eastern Europe */
country(Russia). 
country(Belarus). 
country(Ukraine). 
country(Armenia). 
country(Azerbaijan). 
country(Georgia). 
country(Moldova). 
country(Estonia). 
country(Latvia). 
country(Lithuania). 
country(Kazakhstan). 

/* Region:  Central Europe */
country(Germany). 
country(Switzerland). 
country(Poland). 
country(Austria). 
country(Hungary). 
country(Czech_Republic). 
country(Slovakia). 
country(Liechtenstein). 
country(Italy). 
country(San_Marino). 
country(Vatican_City). 
country(Malta). 

/* Region:  Western Europe */
country(United_Kingdom). 
country(Ireland). 
country(Netherlands). 
country(Belgium). 
country(Luxembourg). 
country(France). 
country(Andorra). 
country(Monaco). 
country(Spain). 
country(Portugal). 

/* Region:  Balkan */
country(Romania). 
country(Bulgaria). 
country(Greece). 
country(Turkey). 
country(Cyprus). 
country(Albania). 
country(Serbia). 
country(Slovenia). 
country(Croatia). 
country(Bosnia_and_Herzegovina). 
country(Montenegro). 
country(Macedonia). 

/* Region:  Scandinavia */
country(Denmark). 
country(Norway). 
country(Sweden). 
country(Finland). 
country(Iceland). 

/* Regions */
region(Eastern_Europe). 
region(Central_Europe). 
region(Western_Europe). 
region(Balkan). 
region(Scandinavia). 

/* Smaller Organizations */
organization(Common_Travel_Area). 
/* European_Union -> EU_Customs_Union -> Council_of_Europe.  */
organization(Nordic_Council). 
/* Schengen_Area -> Council_of_Europe, 
EEA -> Council_of_Europe.  */
organization(Visegrad_Group). 
/* European_Union -> EU_Customs_Union -> Council_of_Europe.  */
organization(EFTA). 
/* Schengen_Area -> Council_of_Europe.  */
organization(Baltic_Assembly). 
/* Schengen_Area -> Council_of_Europe, 
EEA -> Council_of_Europe, 
Eurozone -> European_Union -> EU_Customs_Union.  */
organization(Benelux). 
/* Schengen_Area -> Council_of_Europe, 
EEA -> Council_of_Europe, 
Eurozone -> European_Union -> EU_Customs_Union.  */
organization(GUAM). 
/* BSEC -> Council_of_Europe.  */
organization(Union_State). 
organization(CEFTA). 
organization(Monetary_Agreement_with_the_EU). 
organization(No_Organization). 

/* Larger Organizations */
organization(BSEC). 
organization(EEA). 
organization(Schengen_Area). 
organization(Eurozone). 
organization(European_Union). 
organization(EU_Customs_Union). 
organization(Council_of_Europe). 