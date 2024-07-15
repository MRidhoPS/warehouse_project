import 'package:flutter/material.dart';

import 'default_container.dart';
import 'text_widget.dart';

class ContainerTotal extends StatelessWidget {
  const ContainerTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultContainer(
            width: 3.3,
            height: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: "Total Auth",
                  colors: Colors.black54,
                  size: 16,
                ),
                TextWidget(
                  text: "3",
                  colors: Colors.black,
                  size: 24,
                ),
              ],
            ),
          ),
          DefaultContainer(
            width: 3.3,
            height: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: "Total Foto",
                  colors: Colors.black54,
                  size: 16,
                ),
                TextWidget(
                  text: "5",
                  colors: Colors.black,
                  size: 24,
                ),
              ],
            ),
          ),
          DefaultContainer(
            width: 3.3,
            height: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: "Total Warehouse",
                  colors: Colors.black54,
                  size: 16,
                ),
                TextWidget(
                  text: "15",
                  colors: Colors.black,
                  size: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
