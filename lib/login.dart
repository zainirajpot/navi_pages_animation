import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Stack(
              children: [
                SizedBox(
                  height: height * 0.3,
                  width: width,
                  child: const Image(
                    image: AssetImage('images/l1.jpg'),
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.09,
          ),
          const Text(
            'WellCome',
            style: TextStyle(
                color: Color.fromARGB(255, 45, 136, 91),
                fontWeight: FontWeight.bold,
                fontSize: 33,
                letterSpacing: 2),
          ),
          const Text(
            'Login to Your Account',
            style: TextStyle(
              color: Color.fromARGB(255, 154, 190, 168),
              fontSize: 10,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          SizedBox(
            width: width * 0.8,
            height: height * 0.07,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Full Name',
                labelStyle: TextStyle(
                  color: Color.fromARGB(
                    193,
                    8,
                    122,
                    79,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 222, 236, 229),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          SizedBox(
            width: width * 0.8,
            height: height * 0.07,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Full Name',
                labelStyle: TextStyle(
                  color: Color.fromARGB(
                    193,
                    8,
                    122,
                    79,
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 222, 236, 229),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'Rembeber',
                style: TextStyle(
                  color: Color.fromARGB(193, 77, 183, 143),
                ),
              ),
              Text(
                'Forgott Password',
                style: TextStyle(
                  color: Color.fromARGB(193, 8, 122, 79),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>GridView(),),),
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                193,
                8,
                122,
                79,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              fixedSize: Size(
                width * 0.7,
                height * 0.01,
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}
