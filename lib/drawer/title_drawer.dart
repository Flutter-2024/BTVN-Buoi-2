import 'package:flutter/material.dart';

class TitleDrawer extends StatelessWidget {
  const TitleDrawer({super.key, required this.listTitle});

  final List<String> listTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ExpansionTile(
            title: Text(
              listTitle[index],
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0.0,
            color: Colors.transparent,
          );
        },
        itemCount: listTitle.length,
      ),
    );
  }
}
