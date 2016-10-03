    int i=0;
    int texter = 5;
    //int dec = 100;
    float bucket=0f;
    int strip=0;

    public void setup(){

        size(600,400);
        background(0xFAFAF0);
        strokeWeight(2);
        stroke(127);
        line(90, 350, 90, 50);
        //line(90,330,70,330);
        frameRate(5);
        //noLoop();

    }

    public void draw(){

        background(0xFAFAF0);
        fill(127);
        for (i=330; i >30 ; i-=20) {

            stroke(127);
            //strokeWeight(2);
            line(90,i,70,i);
            text(texter,50,i+7);
            texter+=5;
        }
        if (texter>75) {
            texter=5;
        }
        bucket = map(mouseY,0,400,350,50);
        //System.out.println("dec = " + dec);
        //System.out.println("bucket = " + bucket);
        strokeWeight(0);
        rectMode(CORNERS);
        fill(100, 50);

        rect(100, 350, 150, 50, 10);
        rect(200, 350, 250, 50, 10);
        rect(300, 350, 350, 50, 10);
        rect(400, 350, 450, 50, 10);
        // max height 350 -> 50 , -20 increment
        fill(220, 0, 0, 100);                    //red
        rect(100, 350, 150, bucket, 10);
        fill(0, 100, 0, 100);                    // green
        rect(200, 350, 250, 200, 10);
        fill(0, 0, 100, 100);                   // blue
        rect(300, 350, 350, 200, 10);
        fill(0, 150, 150, 100);
        rect(400, 350, 450, 200, 10);

        //---------------------------------

        for (strip=330; strip >50 ; strip-=20) {

            //strokeCap(ROUND);
            strokeWeight(2);
            stroke(250,250,240);
            line(100,strip,150,strip);

        }
    }

    // define this function for Processing 3
    void settings(){

        size(600,400);
    }