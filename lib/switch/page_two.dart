import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // const SecondPage({Key? key}) : super(key: key);
  List pageOneDetails = [
    [
      "ID:#79",
      "\$14.50",
      "writing skill",
      "42, Dhaka, Dhaka District, Dhaka Division, Bangladesh, 1216",
      "Saturday, 04-02-2023/ 10:51 PM",
      "Completed"
    ],
    [
      "ID:#79",
      "\$14.50",
      "reading skill",
      "42, Dhaka, Dhaka District, Dhaka Division, Bangladesh, 1216",
      "Saturday, 04-02-2023/ 10:51 PM",
      "Completed"
    ],
    [
      "ID:#79",
      "\$14.50",
      "reading skill",
      "42, Dhaka, Dhaka District, Dhaka Division, Bangladesh, 1216",
      "Saturday, 04-02-2023/ 10:51 PM",
      "Completed"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: pageOneDetails.length,
            itemBuilder: (context, index) {
              return pageOneDetails.isEmpty
                  ? Container(
                height: 220,
                width: 350,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://img.freepik.com/free-vector/flat-young-businessman-sitting-huge-red-question-mark_126523-2881.jpg?size=626&ext=jpg',
                          height: 200,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                ),
              )
                  : Column(
                children: [
                  Container(
                    height: 230,
                    width: 350,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                    child: Text(pageOneDetails[index][0],
                                        style:
                                        TextStyle(color: Colors.white))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(pageOneDetails[index][1]),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                        BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'i',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(
                            indent: 5,
                            thickness: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.add_box),
                              Text(pageOneDetails[index][2])
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(
                                width: 300,
                                child: Text(pageOneDetails[index][3]),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.schedule),
                              Text(pageOneDetails[index][4])
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(Icons.check),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(pageOneDetails[index][5]),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.chevron_right_sharp),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              );
            })],
      ),
    );

  }
}