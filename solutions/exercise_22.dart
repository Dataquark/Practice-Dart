void main() {
  var max;
  int a = 32;
  int b = 12;
  int c = 64;

  if (a > b) {
    max = a;
  } else {
    max = b;
  }

  if (c > max) {
    max = c;
  }
  print(max);

  // Another method, which will work with any length
  List l = [a, b, c, 4, 5, 2, 1];
  l.sort();
  print(l.last);
}
