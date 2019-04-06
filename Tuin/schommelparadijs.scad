terrasAfstand    = 20;
schuttingAfstand = 20;

//Balk Informatie
balkBreedte =   10;
balkDikte   =   10;
balkHoogte  =  350;
balkDiepte  = -150;

//Constructie informatie
schommelBreedte = 150;
totalelengte    = 500;

//Lengte Plank Informatie
lengtePlankLengte = 500 + terrasAfstand * 2 ;
lengtePlankHoogte =  20;
lengtePlankDikte  =   2;

//Dwars Plank Informatie
dwarsPlankLengte = schommelBreedte + schuttingAfstand * 2 + balkBreedte *2;
dwarsPlankHoogte     = 20;
dwarsPlankDikte      =  2; 
dwarsPlankVerzinking = -8; 

//NOTITIE: ACHTERSTE PALEN STAAN TE VER, KOMT DOOR TOTALE LENGTE MOET ZIJN TOTALE LENGTE - TERAASAFSTAND

//Eerste 2 Palen
color("DarkGoldenrod")
translate([schuttingAfstand,terrasAfstand,balkDiepte]) cube([balkBreedte, balkDikte, balkHoogte]);
color("DarkGoldenrod")
translate([schuttingAfstand + schommelBreedte + balkDikte,terrasAfstand,balkDiepte]) cube([balkBreedte, balkDikte, balkHoogte]);

//Middelste Palen
color("DarkGoldenrod")
translate([schuttingAfstand,terrasAfstand + totalelengte/2,balkDiepte]) cube([balkBreedte, balkDikte, balkHoogte]);
color("DarkGoldenrod")
translate([schuttingAfstand + schommelBreedte + balkDikte,terrasAfstand + totalelengte/2,balkDiepte]) cube([balkBreedte, balkDikte, balkHoogte]);

//Achterste Palen
color("DarkGoldenrod")
translate([schuttingAfstand,terrasAfstand + totalelengte,balkDiepte]) cube([balkBreedte, balkDikte, balkHoogte]);
color("DarkGoldenrod")
translate([schuttingAfstand + schommelBreedte + balkDikte,terrasAfstand + totalelengte,balkDiepte]) cube([balkBreedte, balkDikte, balkHoogte]);

//Lengte Latten
translate ([schuttingAfstand,0,balkHoogte + balkDiepte])
rotate([90,180,180]) color("Brown") cube([lengtePlankDikte, lengtePlankHoogte, lengtePlankLengte]);
translate ([schuttingAfstand + balkDikte,0,balkHoogte + balkDiepte])
rotate([90,180,180]) color("Brown") cube([lengtePlankDikte, lengtePlankHoogte, lengtePlankLengte]);

translate ([schuttingAfstand + schommelBreedte + balkDikte,0,balkHoogte + balkDiepte])
rotate([90,180,180]) color("Brown") cube([lengtePlankDikte, lengtePlankHoogte, lengtePlankLengte]);
translate ([schuttingAfstand + balkDikte + schommelBreedte + balkDikte,0,balkHoogte + balkDiepte])
rotate([90,180,180]) color("Brown") cube([lengtePlankDikte, lengtePlankHoogte, lengtePlankLengte]);

//DwarsLatten
//translate ([schuttingAfstand + schommelBreedte + balkDikte,0,balkHoogte + balkDiepte])
color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);
color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + balkDikte,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);

color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + totalelengte/3,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);
color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + balkDikte + totalelengte/3,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);


color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + totalelengte/3*2,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);
color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + balkDikte + totalelengte/3*2,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);


color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + totalelengte,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);
color("BurlyWood") rotate([90,0,90]) 
translate([terrasAfstand + balkDikte + totalelengte,balkHoogte + balkDiepte + dwarsPlankVerzinking,0])cube([dwarsPlankDikte, dwarsPlankHoogte, dwarsPlankLengte]);
