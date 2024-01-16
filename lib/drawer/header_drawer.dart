import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key, required this.listHeader});

  final List<String> listHeader;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Text(
            listHeader[index],
            style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.transparent,
            height: 24.0,
          );
        },
        itemCount: listHeader.length,
      ),
    );
  }
}
