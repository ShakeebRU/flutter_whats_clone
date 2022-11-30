import 'package:flutter/material.dart';
import 'package:whatsapp/models/profile_model.dart';
import 'package:whatsapp/widgets/list_veiw_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ProfileModel> detail = [
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Shakeeb Raza Ullah",
        massage: "Bye",
        count: 5),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "Missing YOu",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "Kaha hooo?",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Shakeeb Raza Ullah",
        massage: "Bye",
        count: 5),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "Missing YOu",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "Kaha hooo?",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Shakeeb Raza Ullah",
        massage: "Bye",
        count: 5),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "Missing YOu",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "Kaha hooo?",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Shakeeb Raza Ullah",
        massage: "Bye",
        count: 5),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "Missing YOu",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "Kaha hooo?",
        count: 50),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListViewWidget(
            data: detail,
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
      floatingActionButton: InkWell(
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
              color: Color(0xFF075E54),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
