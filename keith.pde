int numLines = 500; // Çizgi sayısını arttırdık
float angle = TWO_PI / 1; // Çizgilerin açısını biraz daha küçülttük
color lineColor;

void setup() {
  size(800, 800);
  background(0); // Arka planı siyah yaptık
  noFill();
  
  // Başlangıç noktasını belirle
  float x = width / 2;
  float y = height / 2;
  
  // Başlangıç rengini ayarla
  lineColor = color(255); // Başlangıçta beyaz
  strokeWeight(4); // Çizgi kalınlığını arttırdık
  
  // Çizgileri çizmeye başla
  for (int i = 0; i < numLines; i++) {
    stroke(lineColor); // Rengi ayarla
    float length = random(100, 400); // Çizgi uzunluğunu genişlettik
    float dx = cos(angle * i) * length;
    float dy = sin(angle * i) * length;
    line(x, y, x + dx, y + dy);
    
    // Sonraki çizginin başlangıç noktası
    x += dx;
    y += dy;
    
    // Renk değişimi: beyaz -> kırmızı -> siyah -> beyaz...
    if (lineColor == color(255)) {
      lineColor = color(255, 0, 0); // Kırmızı
    } else if (lineColor == color(255, 0, 0)) {
      lineColor = color(0); // Siyah
    } else {
      lineColor = color(255); // Beyaz
    }
  }
}

void draw() {
  // Çizim sürekli olarak gerçekleşecek şekilde ayarlandı, ama burada ekstra bir şey yapmamıza gerek yok.
}
