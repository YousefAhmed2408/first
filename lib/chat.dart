import 'package:flutter/material.dart';



class chat extends StatelessWidget {
  chat ({super.key});

  final List<String> names=[
    "KOK","Geha"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Chat")
      ),
      body:
      ListView.separated(
        itemCount:5,

        itemBuilder: (context,index)=>chatItem(names[index]),
        separatorBuilder: (context,index)=>SizedBox(
          height: 20,
        ),
      ),

    );
  }
}
Widget chatItem(String name)=>Container(
    color:Colors.blue,
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('Screenshot 2024-10-13 092324.png') ,
          radius: 20,
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Text(name,style: const TextStyle(fontWeight: FontWeight.bold),),

          ],
        ),
        const Spacer(),
        const Icon(
          Icons.check_circle,
          color: Colors.grey,
        )
      ],
    )

);
