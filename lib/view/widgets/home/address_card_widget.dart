import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String title;
  final bool isMainAddress;
  final String name;
  final String phone;
  final String address;

  const AddressCard({
    required this.title,
    required this.isMainAddress,
    required this.name,
    required this.phone,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        color: Colors.white,
        elevation: 2.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      if (isMainAddress)
                        Container(
                          margin: EdgeInsets.only(left: 8.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 61, 172, 135)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "Main Address",
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 172, 135)),
                          ),
                        ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.share_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(
                thickness: 0.6,
                endIndent: 5,
                indent: 5,
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "$name  ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text(
                    "($phone)",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 4.0),
              Text(
                address,
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 16.0,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 4.0),
                  Text("Pinpoint already",
                      style: TextStyle(color: Colors.black54)),
                ],
              ),
              SizedBox(height: 16.0),
              Center(
                child: isMainAddress
                    ? OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Color.fromARGB(255, 61, 172, 135)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: SizedBox(
                          width: 250,
                          child: Center(
                            child: Text(
                              "Change Address",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 61, 172, 135)),
                            ),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color.fromARGB(255, 61, 172, 135)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: SizedBox(
                              width: 190,
                              child: Center(
                                child: Text(
                                  "Change Address",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 61, 172, 135)),
                                ),
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: null,
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color.fromARGB(255, 61, 172, 135)),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                              ),
                              minimumSize: Size(40, 40),
                              padding: EdgeInsets.all(0),
                            ),
                            child: PopupMenuButton<String>(
                              color: Colors.white,
                              icon: Icon(
                                Icons.more_vert_outlined,
                                size: 20,
                                color: Color.fromARGB(255, 61, 172, 135),
                              ),
                              onSelected: (value) {},
                              itemBuilder: (BuildContext context) => [
                                PopupMenuItem(
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          color: Colors.black54),
                                      SizedBox(width: 8),
                                      Text("Set As Primary Address"),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  child: Row(
                                    children: [
                                      Icon(Icons.delete, color: Colors.red),
                                      SizedBox(width: 8),
                                      Text(
                                        "Delete Address",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
