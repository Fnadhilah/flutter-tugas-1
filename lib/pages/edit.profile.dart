import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tugas_1/customs/custom_button.dart';
import 'package:tugas_1/pages/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final globalKey = GlobalKey<ScaffoldState>();

  // TextEditingController itu buat get data dalam textfield
  TextEditingController nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: Container(
        padding: EdgeInsets.only(top: 64, bottom: 64, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Judul
            Container(
              child: Center(
                child: Text(
                  'EDIT PROFILE',
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
              ),
            ),

            //TextField
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),

            //Button
            Container(
              child: CustomButton(
                text: 'Update',
                onPressed: () {
                  if (nameController.text == '') {
                    // showToast('Insert Your Name!');
                    showAlertDialogMaterial('Insert Your Name!');
                  } else {
                    // print(nameController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(
                          name: nameController.text,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  showToast(Text) {
    Fluttertoast.showToast(
        msg: Text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.black.withOpacity(0.5),
        webPosition: "center",
        webBgColor: "linear-gradient(to right, #525151, #525151)",
        textColor: Colors.white,
        fontSize: 16.0);
  }

  // showSnackBar(text) {
  //   final snackbar = SnackBar(
  //     content: Text(text),
  //     action: SnackBarAction(
  //       label: 'Undo',
  //       onPressed: () {
  //         print('Clicked Undo!');
  //       },
  //     ),
  //   );
  //   // globalKey.currentState.showSnackBar(snackbar);
  // }

  showAlertDialogMaterial(text) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Info'),
        content: Text(text),
        actions: [
          TextButton(
              onPressed: () {
                //untuk keluar dari alert ketika klik no
                Navigator.pop(context);
                print('Click No!');
              },
              child: Text('No')),
        ],
        elevation: 8,
        backgroundColor: Colors.yellow,
      ),
      barrierDismissible: false,
    );
  }
}
