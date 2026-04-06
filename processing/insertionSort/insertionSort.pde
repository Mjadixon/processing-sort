import java.util.Arrays;

float[] numbers = new float[100];
int count = 0;
void setup() {
  size(600, 400);
  frameRate(24);

  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }

  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();
if(count<numbers.length){
 float temp = numbers[count];
 int j = count-1;
    while ( j>=0&&numbers[j]>temp) {
      numbers[j + 1] = numbers[j];
      j = j - 1;
    }
    numbers[j+1]=temp;
    count++;
// sorting algorithm here (just one step)
}
}

void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length;
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}

