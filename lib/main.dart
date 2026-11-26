import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "my_social_profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),


      body: Column(
        children: [
          // โปรไฟล์และสถิติ
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/a/ACg8ocLAxYg_ZrCcfrXtRbJvSM9SA7_qr_m0m2Ex0X1_NXTRiHyMyuTx=s576-c-no",
                  ),
                ),
              ),


              const Expanded(
                child: Column(
                  children: [
                    Text("24", style: TextStyle(fontSize: 20)),
                    Text("โพสต์"),
                  ],
                ),
              ),


              const Expanded(
                child: Column(
                  children: [
                    Text("1,500", style: TextStyle(fontSize: 20)),
                    Text("ผู้ติดตาม"),
                  ],
                ),
              ),


              const Expanded(
                child: Column(
                  children: [
                    Text("500", style: TextStyle(fontSize: 20)),
                    Text("กำลังติดตาม"),
                  ],
                ),
              ),
            ],
          ),


          // ข้อมูลแนะนำตัว
          const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Prakorn Pattana",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("นักศึกษาแผนกเทคโนโลยีสารสนเทศ"),
                Text(" DM for work 24/7 💙"),
              ],
            ),
          ),


          // ปุ่มติดตามและข้อความ
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("ติดตาม"),
                  ),
                ),
              ),


              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("ข้อความ"),
                  ),
                ),
              ),
            ],
          ),


          // แถบไอคอน
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on, size: 28),
                Icon(Icons.person, size: 28, color: Colors.grey),
              ],
            ),
          ),


          // รูปโพสต์ 3 รูป ชิดด้านบน
          SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.network(
                    "https://cms.dmpcdn.com/ugcarticle/2025/04/30/49decac0-25a3-11f0-b1b7-8d5d00dbf492_webp_original.webp",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),


                Expanded(
                  child: Image.network(
                    "https://cms.dmpcdn.com/ugcarticle/2025/04/30/4ac53320-25a3-11f0-b1b7-8d5d00dbf492_webp_original.webp",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),


                Expanded(
                  child: Image.network(
                    "https://cms.dmpcdn.com/ugcarticle/2025/04/30/4ba755c0-25a3-11f0-b1b7-8d5d00dbf492_webp_original.webp",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}