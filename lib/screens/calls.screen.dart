import 'package:flutter/material.dart';
import 'package:whatsapp/models/profile_model.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<ProfileModel> data = [
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Shakeeb Raza Ullah",
        massage: "9 minutes ago",
        count: 5),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "22 minutes ago",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "46 minutes ago",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "22 minutes ago",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "46 minutes ago",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "46 minutes ago",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "22 minutes ago",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "46 minutes ago",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "46 minutes ago",
        count: 50),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Darling",
        massage: "22 minutes ago",
        count: 30),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Janu",
        massage: "46 minutes ago",
        count: 50),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                  color: Color(0xFF075E54),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Icon(
                Icons.attach_file,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Create call link",
              style: TextStyle(fontSize: 19),
            ),
            subtitle: const Text(
              "Share a link for your WhatsApp call",
              maxLines: 1,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Text(
                "Recent",
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Image(image: AssetImage(data[index].image)),
                ),
                title: Text(
                  data[index].title,
                  style: const TextStyle(fontSize: 19),
                ),
                subtitle: Text(
                  data[index].massage,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.call,
                    size: 25,
                    color: Color(0xFF075E54),
                  ),
                ),
              );
            },
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
            Icons.call,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
