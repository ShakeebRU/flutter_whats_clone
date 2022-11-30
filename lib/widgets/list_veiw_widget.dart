import 'package:flutter/material.dart';
import 'package:whatsapp/models/profile_model.dart';

class ListViewWidget extends StatefulWidget {
  final List<ProfileModel> data;
  const ListViewWidget({super.key, required this.data});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Image(image: AssetImage(widget.data[index].image)),
          ),
          title: Text(
            widget.data[index].title,
            style: const TextStyle(fontSize: 19),
          ),
          subtitle: Text(
            widget.data[index].massage,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
          trailing: Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                color: Color(0xFF075E54),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Text(
              "${widget.data[index].count}",
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        );
      },
    );
  }
}
