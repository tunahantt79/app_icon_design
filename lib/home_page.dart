import 'package:app_icon_design/info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: size.height * 1,
          width: size.width * 1,
          child: Image.asset(
            'assets/images/wpp.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              for (int i = 0; i < icons.length; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < icons.length; i++)
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              height: size.height * 0.075,
                              width: size.width * 0.155,
                              child: Image.asset(icons[i])),
                          Text(
                            appName[i],
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              Row(
                children: [
                  for (int i = 0; i < twoIcons.length; i++)
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: size.height * 0.075,
                            width: size.width * 0.155,
                            child: Image.asset(twoIcons[i])),
                        Text(
                          appNametwo[i],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int i = 0; i < bottomIcons.length; i++)
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                height: size.height * 0.075,
                                width: size.width * 0.153,
                                child: Image.asset(bottomIcons[i])),
                          ],
                        ),
                    ]),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
