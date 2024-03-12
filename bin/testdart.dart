import 'package:testdart/testdart.dart' as testdart;

void main() {
  bool isTrue = true;
  bool isFalse = false;
  bool andResult = isTrue && isFalse; // false karena kedua nilai tidak true
  bool orResult = isTrue || isFalse; // true karena salah satu nilai adalah true
  bool notResult = !isTrue; // false karena nilai awal isTrue adalah tru
}
