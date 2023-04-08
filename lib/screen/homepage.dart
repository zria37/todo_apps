import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_apps/main.dart';
// cara memanggil semua menggunakan stf
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  bool varSementara = true;
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("To-Do App"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
    // ini untuk menentukan ukuran body biar responsive
    double heightBody = MediaQuery.of(context).size.height - myAppbar.preferredSize.height - MediaQuery.of(context).padding.top;
    double widthBody = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: myAppbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: widthBody,
              height: heightBody * 0.15,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Yout task..."
                ),
                ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: heightBody * 0.85,
              width: widthBody,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                      secondary: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.delete, color: Colors.red,),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                            "Title", 
                            style: TextStyle(fontSize: 18),),
                      subtitle: Text("Sub Title"),
                      value: varSementara,
                      onChanged: (value) {},
                    );
                },
              ),
            )
          ],
        ),
      ),
    //    body: Center(
    //     child: Text(
    //       // untuk menampikan text
    //       // 'Height: $heightBody, Width: $widthBody',
    //       style: TextStyle(fontSize: 30),
    //     ),
    // ),
    );
  }
}