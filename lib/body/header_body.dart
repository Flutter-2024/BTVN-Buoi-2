import 'package:flutter/material.dart';
import 'package:trunglq/model/header.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody({super.key, required this.listHeader});

  final List<Header> listHeader;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return _itemHeader(listHeader[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 0.0,
          color: Colors.transparent,
        );
      },
      itemCount: listHeader.length,
    );
  }

  Widget _itemHeader(Header header) {
    return Container(
      color: const Color(0xFF0d1520),
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            header.image,
            height: 80,
            width: 80,
          ),
          const SizedBox(height: 24.0),
          Text(
            header.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24.0),
          Text(
            header.content,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
