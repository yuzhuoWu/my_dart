//导入包
import 'dart:html';
import 'package:lib2/lib2.dart' as lib2;

//函数
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//for循环
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
// while 和 do-while
printSomethings() {
  while (!isDone()) {
    doSomething();
  }
  do {
    printLine();
  } while (!atEndOfPage());
}

// break 和 continue
pauseSomethings(){
  while (true) {
    if (shutDownRequested()) break;
    processIncomingRequests();
  }
  // 执行yearsExperience大于等于5的元素
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }
  // 如果candidate对象实现了Iterable接口, 可以调用如下方式
  candidates
      .where((c) => c.yearsExperience >= 5)
      .forEach((c) => c.interview());
}

// switch 和 case
judgeType() {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      break;
    case 'PENDING':
      executePending();
      break;
    case 'APPROVED':
      executeApproved();
      break;
    case 'DENIED': // 当command为该种情况时,由于该分支没有break语句会继续执行下一个分支,直到遇到break停止执行。
      executeDenied();
    case 'OPEN':
      executeOpen();
      break;
    default:
      executeUnknown();
  }
}
// assert 判断是否成立
judgeEquals() {
  // 确认变量值不为空。
  assert(text != null);
  
  // 确认变量值小于100。
  assert(number < 100);
  
  // 确认 URL 是否是 https 类型。
  assert(urlString.startsWith('https'));
  // assert 的第二个参数可以为其添加一个字符串消息。
  assert(urlString.startsWith('https'), 'URL ($urlString) should start with "https".');
}

//异常处理
throw FormatException('Expected at least 1 section');
throw 'Out of llamas!';
// 完整的try catch finally代码
try {
  // 代码块
} on Exception catch (e) {
  // 捕获到异常走这里
} finally {
  // 无论是否捕获异常, 最终都会走这里
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

//异步
Future<bool> downLoad(String url) async {
  val result = await down();
  return result;
}

// 单行注释

/*
多行注释
多行注释
多行注释
 */

/// 文档注释
/// 文档注释

/**
* 文档注释
*/
