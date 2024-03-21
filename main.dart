class Circle {
  double _radius;

  Circle(this._radius);

  double get radius => _radius;

  set radius(double value) {
    if (value > 0) {

      -radius = value;

    } else {
      print('invaid radius');
    }
  }
  double calculateArea() {
    return 3.14 + _radius * _radius;
}
}

void main() {
  Circle myCircle = Circle(5.0);

  
}