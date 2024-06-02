import 'dart:html';
import 'package:lib2/lib2.dart' as lib2;

String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

text(){
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('---$i!');
  }
  // for ... in ...
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }
  // forEach
  collection.forEach((item) => print(item));
}

void main() {
  var s1 = "我是字符串1";
  String s2 = "我是字符串2";
  var s3 = '我是'
      '字符串'
      '3';
  // s4为多行字符串
  var s4 = """
   我是
   字符串
   4
   哈哈哈
  """;
  print(s1);
  print(s2);
  print(s3);
  print(s4);

  say('Bob', 'Howdy'); //不使用可选参数
  say('Bob', 'Howdy', 'smoke signal'); //使用可选参数

  text()
}
