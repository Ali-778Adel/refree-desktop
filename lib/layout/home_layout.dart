import 'package:flutter/material.dart';

class Home_Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assests/football.gif',)),
          Container(
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.teal),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'FirstTeam',
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 62,
                          color: Colors.teal,
                        ),
                        Container(
                          child: Image.asset(
                            'assests/authentications_images/login2.jpg',
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                    child: Text(
                        "ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ"),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.teal),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'FirstTeam',
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 62,
                          color: Colors.teal,
                        ),
                        Container(
                          child: Image.asset(
                            'assests/authentications_images/login2.jpg',
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],

      ),
    );
  }
}
