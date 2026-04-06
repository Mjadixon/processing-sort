import java.util.Arrays;

float[] numbers = new float[100];

void setup() {
  size(600, 400);
  frameRate(60);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();
    
  for(int i = 0; i<numbers.length-1;i++){ 
    int min = i;
    for(int j = i+1; j<numbers.length;j++){
        if(numbers[j]<numbers[min]){
            min = j;
       float temp = numbers[i] ;
        numbers[i] = numbers[min];
        numbers[min] = temp;
    }
    
    }
  }
  // sorting algorithm here (just one step)
}

void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length; 
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}
