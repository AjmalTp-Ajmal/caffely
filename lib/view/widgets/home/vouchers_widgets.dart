import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailsWidget extends HookWidget {
  final String title;
  final String description;
  final String validUntil;
  final String minTransaction;
  final String buttonSelectedTxt;
  final String buttonUnSelectedTxt;

  const DetailsWidget({
    super.key,
    required this.title,
    required this.description,
    required this.validUntil,
    required this.minTransaction,
    required this.buttonSelectedTxt,
    required this.buttonUnSelectedTxt,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = useState(false);

    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              // Description
              Text(
                description,
                style: TextStyle(fontSize: 13),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              // Row for details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.watch_later_outlined, size: 16),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Valid until",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Text(
                        validUntil,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.money, size: 15),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Min transaction",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Text(
                        minTransaction,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
                  // Divider
                  Container(
                    height: 40,
                    color: Colors.black12,
                    width: 1,
                  ),
                  SizedBox(width: 10),
                  // Button
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                      onPressed: () => (() => isSelected.value = !isSelected.value),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isSelected.value ? Colors.white : Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: isSelected.value ? Colors.black12 : Colors.green,
                          ),
                        ),
                      ),
                      child: FittedBox(
                        child: Text(
                          isSelected.value ? buttonSelectedTxt : buttonUnSelectedTxt,
                          style: TextStyle(
                            fontSize: 13,
                            color: isSelected.value ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              )
            ]
          )
        )
      )
          );
  }
}