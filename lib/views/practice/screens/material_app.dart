// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     )
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class todoItem{
//   String title;
//   bool item;
//
//   todoItem({required this.title,required this.item});
//
//   static tojsonEncodeble(){
//     Map<String,dynamic> m = Map();
//
//     m['title'];
//     m['item'];
//
//     return m;
//   }
// }
//
// class TodoList {
//   List<todoItem> items = [];
//
//   toJSONEncodable() {
//     return items.map((item) {
//       return todoItem.tojsonEncodeble();
//     }).toList();
//   }
// }
//
// class _MyAppState extends State<MyApp> {
//
//   final TodoList list = new TodoList();
//   final LocalStorage storage = new LocalStorage('todo_app.json');
//   bool initialized = false;
//   TextEditingController controller = new TextEditingController();
//
//   _toggleItem(TodoItem item) {
//     setState(() {
//       item.done = !item.done;
//       _saveToStorage();
//     });
//   }
//
//   _addItem(String title) {
//     setState(() {
//       final item = new TodoItem(title: title, done: false);
//       list.items.add(item);
//       _saveToStorage();
//     });
//   }
//
//   _saveToStorage() {
//     storage.setItem('todos', list.toJSONEncodable());
//   }
//
//   _clearStorage() async {
//     await storage.clear();
//
//     setState(() {
//       list.items = storage.getItem('todos') ?? [];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         alignment: Alignment.center,
//         child: const Text("Material App"),
//       ),
//     );
//   }
// }
