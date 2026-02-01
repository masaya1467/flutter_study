// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_app/service.dart';
// import 'firebase_options.dart';


//メイン関数
void main () async {
  const app = MyApp();
  runApp(app);
}

//画面
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final taskTypes = [
        WorkTask(),
        PersonalTask(),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('タスク管理')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: taskTypes.map((task) => task.buildIcon()).toList(),
        ),
      ),
    );
  }
}

// タスク種別の抽象クラス
abstract class TaskType {
  String get name;  // 子クラスで実装必須
  Color get color;  // 子クラスで実装必須
  
  // 共通の機能
  Widget buildIcon() {
    return Container(
      color: color,
      child: Text(name[0]), // 最初の文字をアイコンとして表示
    );
  }
}

// 具体的な実装クラス
class WorkTask extends TaskType {
  @override
  String get name => '仕事';
  
  @override
  Color get color => Colors.blue;
}

class PersonalTask extends TaskType {
  @override
  String get name => 'プライベート';
  
  @override
  Color get color => Colors.green;
}