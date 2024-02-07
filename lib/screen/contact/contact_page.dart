import 'package:flutter/material.dart';
import 'package:murious_appp/screen/profile/profile.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 80,
          leading: IconButton(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            color: Colors.white,
            iconSize: 45,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 0, 8),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.fromLTRB(40, 20, 10, 10),
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: null,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 20, 10, 10),
                  child: Text(
                    '6942069420',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.fromLTRB(40, 40, 10, 10),
                  icon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: null,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 40, 10, 10),
                  child: Text(
                    'abc@juitsolan.in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.fromLTRB(40, 40, 10, 10),
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: null,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 40, 10, 10),
                  child: SizedBox(
                    // height: 200,
                    // width: 200,
                    child: Text(
                      'Jaypee University of \nInformation Technology,\nWaknaghat, Solan, H.P. , \n173221',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}


// IconButton(
//                 icon: const Icon(
//                   Icons.call,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {},
//                 color: Colors.white,
//                 iconSize: 30,
//               ),

// import 'package:flutter/material.dart';

// class ContactPage extends StatelessWidget {
//   const ContactPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         leading: IconButton(
//           padding: const EdgeInsets.only(left: 10),
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             // Add your onPressed logic here
//           },
//           color: Colors.white,
//           iconSize: 40,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
// body: Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   children: [
//     Container(
//       padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
//       child: const Text(
//         'Contact Us',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 42,
//           fontFamily: 'Poppins',
//           fontWeight: FontWeight.w600,
//           height: 0,
//         ),
//       ),
//     ),
// //   Row(
//     children: [
//       IconButton(
//         icon: const Icon(
//           Icons.call,
//           color: Colors.white,
//         ),
//         onPressed: () {},
//         color: Colors.white,
//         iconSize: 40,
//       ),
//     ],
//   )
// ],
//       ),
//     );
//   }
// }
