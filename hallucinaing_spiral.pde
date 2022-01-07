/* 

  spiral in the canvas that rotates

*/

 

final int NUM_LINES = 500;  //How many lines are drawn to make the spiral

float maxRadius=10;            //Distance to the corners of the window (needs width/height)

final int NUM_TURNS = 10;   //How many times around to get to that size

float Start_Theta = 0;       //The Start_Theta to use to start the spiral

final float START_Start_Theta_CHANGE = 0.0002; //Change in startStart_Theta each frame

float x_prev, y_prev;

float x_first, y_first;

 

void setup()

{

  size(500, 500);

  maxRadius = sqrt(sq(width/2)+sq(height/2)); //Distance to the corners from the centre

}

 

void draw()

{

  background(255);

  x_first=width/2;

  y_first=height/2;

 

  for (int i=0; i<NUM_LINES; i++)

  {

    x_prev = (i/float(NUM_LINES-1))*maxRadius*cos(Start_Theta+(i/float(NUM_LINES-1))*NUM_TURNS*2*PI)+width/2;

    y_prev = (i/float(NUM_LINES-1))*maxRadius*sin(Start_Theta+(i/float(NUM_LINES-1))*NUM_TURNS*2*PI)+height/2;

 

    line(x_prev, y_prev, x_first, y_first);

    x_first=x_prev;

    y_first=y_prev;

    Start_Theta+=START_Start_Theta_CHANGE;

  }

}
