import 'package:flutter/material.dart';
import 'package:noviindus/widget/constants/app_colors.dart';

class TwoSeatContainer extends StatelessWidget {
  const TwoSeatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kWhite,
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(
            Icons.chair,
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.chair,
                      color: bgRed,
                      size: 40,
                    );
                  },
                ),
              ),
              SizedBox(
                width: 100,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.chair,
                      color: bgRed,
                      size: 40,
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
