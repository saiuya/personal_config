// dir2/dir2_exports.dart
export 'file3.dart';
import 'file3.dart';
export 'file4.dart';

void mmm(List<String> arguments) {
  print(greetFromFile3()); // 输出: Hello from File 3
}
