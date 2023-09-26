import 'package:flutter/material.dart';
import 'package:hospital_app/core/colors/custom-color.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/backgound.png'),
                    fit: BoxFit.cover),
              ),
            )
       ),
        const Expanded(
        flex: 1,
        child: Text('Doctor Channeling',style: TextStyle(fontSize: 40
            ,color: CustomColor.primaryColor, fontWeight: FontWeight.bold),)),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.primaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(350, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: Container(
              child: OutlinedButton(
                onPressed: () {

                },
                style: OutlinedButton.styleFrom(
                  primary: CustomColor.primaryColor,
                  minimumSize: Size(350, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: const BorderSide(
                    color: CustomColor.primaryColor,
                    width: 2.0,
                  ),
                ),
                child: const Text(
                  'Loggin',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}
