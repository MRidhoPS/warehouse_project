import 'package:flutter/material.dart';

import 'default_container.dart';
import 'text_widget.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
            const SizedBox(width: 15,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: "R` Garage",
                  size: 20,
                ),
                TextWidget(
                  text: "Overview of Customers and Currently Activity",
                  size: 14,
                  colors: Colors.black54,
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 11),
          child: DefaultContainer(height: 20, width: 10, child: Text("Account"),),
        ),
      ],
    );
  }
}
