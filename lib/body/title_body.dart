import 'package:flutter/material.dart';
import 'package:trunglq/model/title_text.dart';

class TitleBody extends StatelessWidget {
  const TitleBody({super.key, required this.listTitle});

  final List<TitleText> listTitle;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return _itemTitle(listTitle[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 0.0,
          color: Colors.transparent,
        );
      },
      itemCount: listTitle.length,
    );
  }

  Widget _itemTitle(TitleText title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          title.image,
        ),
        const SizedBox(height: 24.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Image.asset(
            title.icon,
            height: 80,
            width: 80,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0, bottom: 24.0),
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            title.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, indexContent) {
            return _itemTitleContent(title.content[indexContent]);
          },
          separatorBuilder: (context, indexContent) {
            return const Divider(
              height: 0.0,
              color: Colors.transparent,
            );
          },
          itemCount: listTitle.length,
        ),
        const SizedBox(height: 24.0,),
      ],
    );
  }

  Widget _itemTitleContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.turned_in,
            color: Colors.black,
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}
