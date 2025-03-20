import 'package:flutter/material.dart';

import '../../../../core/core.dart';

void chooseCategory(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          color: Colors.grey.shade800,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Choose Category'),
              Divider(),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        color: Colors.grey.shade400,
                        child: Center(
                          child: Text("Category $index"),
                        ),
                      ),
                      Text("Category $index"),
                    ],
                  );
                },
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Add Category'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
