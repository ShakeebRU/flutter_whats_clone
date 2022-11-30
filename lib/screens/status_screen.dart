import 'package:flutter/material.dart';
import 'package:whatsapp/models/profile_model.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
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
            const ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Image(image: AssetImage("assets/images/Layer 0@2x.png")),
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontSize: 19),
              ),
              subtitle: Text(
                "Tap to add status update",
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
                  "Recent updates",
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
                );
              },
            ),
            const SizedBox(
              height: 110,
            )
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 77, 76, 76),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Icon(
                Icons.edit,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: Color(0xFF075E54)),
              child: const Icon(
                Icons.add_a_photo_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
