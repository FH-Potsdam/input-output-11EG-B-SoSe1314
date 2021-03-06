

//Was geschiecht hier überhaupt?
// 1.) Uhrzeit XX:XX Aufspalten in ab:cd
// 2.) d Kreise nach Rechts zeichnen. Mindestens jedoch 4.
// 3.) Ab dem zweiten Kreis, jeden zweiten Kreis ausmalen
// 4.) Die letzten Beiden Kreise bilden die Grundseite von einem Gleichschenkligen Dreieck.
// 5.) Die Spitze des Dreiecks zeigt abhängig von c nach unten
// 6.) Die Spitze zeichnet einen neuen Kreis
// 7.) Es werden a*3 Kreise nach links gezeichnet. Mindestens jedoch 3.
// 8.) Der Mittlere Kreis aus der unteren Reihe wird gefärbt und bildet mit der Grundform des alten Dreiecks ein neues.
//     Bzw. die beiden Mittleren gefärbten Kreise aus der unteren Reihe werden gefärbt und bilden mit der Grundform des alten Dreiecks ein Viereck.


// Uhrzeit
int a = int(random(0, 3)); //0-2 Stunden
int b = 4; //0-9 Stunden //macht im Moment nichts.
int c = int(random(0, 6)); //0-5 Minuten
int d = int(random(0, 10)); //0-9 Minuten

// Kreise Reihe 1
int CircleX01 = 400;
int CircleY01 = 200;
int Radius01 = 60;
int ColorR01 = int(random(0, 256));
int ColorG01 = int(random(0, 256));
int ColorB01 = int(random(0, 256));
int ColorA01 = 100;



void setup() {
  size(1280, 720);
  background(250);
} // End Void Setup

void draw() { 
  
  // Erste Reihe Kreise Zeichnen
// Erste Reihe Kreise if d <= 4
boolean Kreise01A = true;
if (d <= 4) {
  //Zeichne Kreise
  fill(0, 0);
  ellipse(CircleX01 + 0 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 1 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 1 *1
  fill(0, 0);
  ellipse(CircleX01 + 2 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 3 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 2 *3
  // Zeichne Dreieck
  fill(0, 0);
  triangle(CircleX01 + 1 * Radius01, CircleY01, CircleX01 + 3 * Radius01, CircleY01,
  (((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01, CircleY01 + 300 - (c * 40));
        // Zeichne Kreise
  boolean Kreise02A = true;
if (a <= 1) {
  fill(0, 0);
  ellipse( (((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p1
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p2
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  quad(CircleX01 + 1 * Radius01, CircleY01, 
       CircleX01 + 3 * Radius01, CircleY01,
   ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40),
   ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  boolean Kreise02B = true;
if (a == 2) {
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( (((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Dreick 2
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 4 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 5 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 6 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  // Zeichne Dreieck
triangle(CircleX01 + 1 * Radius01, CircleY01, 
         CircleX01 + 3 * Radius01, CircleY01, 
     ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  
} else {}

// Erste Reihe Kreise if d == 5
boolean Kreise01B = true;
if (d == 5) {
  //Zeichne Kreise
  fill(0, 0);
  ellipse(CircleX01 + 0 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 1 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 1 *1
  fill(0, 0);
  ellipse(CircleX01 + 2 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 3 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 2 *3
  fill(0, 0);
  ellipse(CircleX01 + 4 * Radius01, CircleY01, Radius01, Radius01);
  // Zeichne Dreieck
  fill(0, 0);
  triangle(CircleX01 + 1 * Radius01, CircleY01, CircleX01 + 3 * Radius01, CircleY01,
  (((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01, CircleY01 + 300 - (c * 40));
      // Zeichne Kreise
  boolean Kreise02A = true;
if (a <= 1) {
  fill(0, 0);
  ellipse( (((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p1
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p2
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  quad(CircleX01 + 1 * Radius01, CircleY01, 
       CircleX01 + 3 * Radius01, CircleY01,
   ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40),
   ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  boolean Kreise02B = true;
if (a == 2) {
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( (((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Dreick 2
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 4 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 5 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 6 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  // Zeichne Dreieck
triangle(CircleX01 + 1 * Radius01, CircleY01, 
         CircleX01 + 3 * Radius01, CircleY01, 
     ((((CircleX01 + 3 * Radius01)-(CircleX01 + 1 * Radius01))/2)+CircleX01+1*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  
} else {}

// Erste Reihe Kreise if d == 6
boolean Kreise01C = true;
if (d == 6) {
  //Zeichne Kreise
  fill(0, 0);
  ellipse(CircleX01 + 0 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 1 * Radius01, CircleY01, Radius01, Radius01);
  fill(0, 0);
  ellipse(CircleX01 + 2 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 3 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 1 *3
  fill(0, 0);
  ellipse(CircleX01 + 4 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 5 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 2 *5
  // Zeichne Dreieck
  fill(0, 0);
  triangle(CircleX01 + 3 * Radius01, CircleY01, CircleX01 + 5 * Radius01, CircleY01,
  (((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01, CircleY01 + 300 - (c * 40));
      // Zeichne Kreise
  boolean Kreise02A = true;
if (a <= 1) {
  fill(0, 0);
  ellipse( (((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p1
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p2
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  quad(CircleX01 + 3 * Radius01, CircleY01, 
       CircleX01 + 5 * Radius01, CircleY01,
   ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40),
   ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  boolean Kreise02B = true;
if (a == 2) {
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( (((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Dreick 2
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 4 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 5 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 6 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  // Zeichne Dreieck
triangle(CircleX01 + 3 * Radius01, CircleY01, 
         CircleX01 + 5 * Radius01, CircleY01, 
     ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  
} else {}

// Erste Reihe Kreise if d == 7
boolean Kreise01D = true;
if (d == 7) {
  //Zeichne Kreise
  fill(0, 0);
  ellipse(CircleX01 + 0 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 1 * Radius01, CircleY01, Radius01, Radius01);
  fill(0, 0);
  ellipse(CircleX01 + 2 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 3 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 1 *3
  fill(0, 0);
  ellipse(CircleX01 + 4 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 5 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 2 *5
  fill(0, 0);
  ellipse(CircleX01 + 6 * Radius01, CircleY01, Radius01, Radius01);
  // Zeichne Dreieck
  fill(0, 0);
  triangle(CircleX01 + 3 * Radius01, CircleY01, CircleX01 + 5 * Radius01, CircleY01,
  (((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01, CircleY01 + 300 - (c * 40));
    // Zeichne Kreise
  boolean Kreise02A = true;
if (a <= 1) {
  fill(0, 0);
  ellipse( (((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p1
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p2
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  quad(CircleX01 + 3 * Radius01, CircleY01, 
       CircleX01 + 5 * Radius01, CircleY01,
   ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40),
   ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  boolean Kreise02B = true;
if (a == 2) {
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( (((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Dreick 2
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 4 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 5 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 6 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  // Zeichne Dreieck
triangle(CircleX01 + 3 * Radius01, CircleY01, 
         CircleX01 + 5 * Radius01, CircleY01, 
     ((((CircleX01 + 5 * Radius01)-(CircleX01 + 3 * Radius01))/2)+CircleX01+3*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  
} else {}

// Erste Reihe Kreise if d == 8
boolean Kreise01E = true;
if (d == 8) {
  //Zeichne Kreise
  fill(0, 0);
  ellipse(CircleX01 + 0 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 1 * Radius01, CircleY01, Radius01, Radius01);
  fill(0, 0);
  ellipse(CircleX01 + 2 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 3 * Radius01, CircleY01, Radius01, Radius01);
  fill(0, 0);
  ellipse(CircleX01 + 4 * Radius01, CircleY01, Radius01, Radius01); 
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 5 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 1 *5
  fill(0, 0);
  ellipse(CircleX01 + 6 * Radius01, CircleY01, Radius01, Radius01); 
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 7 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 2 *7
  // Zeichne Dreieck
  fill(0, 0);
  triangle(CircleX01 + 5 * Radius01, CircleY01, CircleX01 + 7 * Radius01, CircleY01, 
  (((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01, CircleY01 + 300 - (c * 40));
    // Zeichne Kreise
  boolean Kreise02A = true;
if (a <= 1) {
  fill(0, 0);
  ellipse( (((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p1
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p2
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  quad(CircleX01 + 5 * Radius01, CircleY01, 
       CircleX01 + 7 * Radius01, CircleY01,
   ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40),
   ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  boolean Kreise02B = true;
if (a == 2) {
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( (((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Dreick 2
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 4 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 5 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 6 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  // Zeichne Dreieck
triangle(CircleX01 + 5 * Radius01, CircleY01, 
         CircleX01 + 7 * Radius01, CircleY01, 
     ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40));
} else {}

} else {}

// Erste Reihe Kreise if d == 9
boolean Kreise01F = true;
if (d == 9) {
  //Zeichne Kreise
  fill(0, 0);
  ellipse(CircleX01 + 0 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 1 * Radius01, CircleY01, Radius01, Radius01);
  fill(0, 0);
  ellipse(CircleX01 + 2 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 3 * Radius01, CircleY01, Radius01, Radius01);
  fill(0, 0);
  ellipse(CircleX01 + 4 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 5 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 1 *5
  fill(0, 0);
  ellipse(CircleX01 + 6 * Radius01, CircleY01, Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse(CircleX01 + 7 * Radius01, CircleY01, Radius01, Radius01); // Dreieck Punkt 2 *7
  fill(0, 0);
  ellipse(CircleX01 + 8 * Radius01, CircleY01, Radius01, Radius01);
  // Zeichne Dreieck
  fill(0, 0);
  triangle(CircleX01 + 5 * Radius01, CircleY01, CircleX01 + 7 * Radius01, CircleY01, 
  (((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01, CircleY01 + 300 - (c * 40));
  // Zeichne Kreise
  boolean Kreise02A = true;
if (a <= 1) {
  fill(0, 0);
  ellipse( (((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p1
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Viereck p2
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  quad(CircleX01 + 5 * Radius01, CircleY01, 
       CircleX01 + 7 * Radius01, CircleY01,
   ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40),
   ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40));
} else {}
  boolean Kreise02B = true;
if (a == 2) {
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( (((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 1 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 2 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(ColorR01, ColorG01, ColorB01, ColorA01);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01); //Dreick 2
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 4 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 5 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  fill(0, 0);
  ellipse( ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 6 * Radius01, CircleY01 + 300 - (c * 40), Radius01, Radius01);
  // Zeichne Dreieck
triangle(CircleX01 + 5 * Radius01, CircleY01, 
         CircleX01 + 7 * Radius01, CircleY01, 
     ((((CircleX01 + 7 * Radius01)-(CircleX01 + 5 * Radius01))/2)+CircleX01+5*Radius01) - 3 * Radius01, CircleY01 + 300 - (c * 40));
} else {}

} else {}


} //End Void Draw


















