// import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:paitiew/constant/background.dart';
import 'package:paitiew/constant/constants.dart';
import 'package:paitiew/pages/Login/login_background.dart';
import 'package:paitiew/pages/home/home_screen.dart';
import 'package:paitiew/pages/home/main_screen.dart';
import 'package:paitiew/util/post.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  Uint8List? _file;
  bool isLoading = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pop(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });

    return !isLiked;
  }

  _selectImage(BuildContext parentContext) async {
    return showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Create a Post'),
          children: <Widget>[
            SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Take a photo'),
                onPressed: () async {
                  Navigator.pop(context);
                  Uint8List file = await pickImage(ImageSource.camera);
                  setState(() {
                    _file = file;
                  });
                }),
            SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Choose from Gallery'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  Uint8List file = await pickImage(ImageSource.gallery);
                  setState(() {
                    _file = file;
                  });
                }),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  void postImage(String title, String country, String place) async {
    setState(() {
      isLoading = true;
    });
    try {
      // save image
      await ImageGallerySaver.saveImage(_file!);

      Post.posts.add({
        "userId": "3",
        "username": "Alice",
        "userImage": "assets/images/profile/rabbit.jpg",
        "image": "assets/images/post/windmil.jpg",
        "country": country,
        "city": "New York",
        "postId": "7",
        "title": title,
        "place": place,
        "like": "0",
        "comment": "0",
        "press": () {},
      });
      setState(() {
        isLoading = false;
      });
      showSnackBar(
        context,
        'Posted!',
      );
      clearImage();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    } catch (err) {
      setState(() {
        isLoading = false;
      });
      showSnackBar(
        context,
        err.toString(),
      );
    }
  }

  void clearImage() {
    setState(() {
      _file = null;
    });
  }

  @override
  void dispose() {
    super.dispose();

    _titleController.dispose();
    _countryController.dispose();
    _placeController.dispose();
  }

  // for picking up image from gallery
  pickImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);
    if (_file != null) {
      return await _file.readAsBytes();
    }
    print('No Image Selected');
  }

  // for displaying snackbars
  showSnackBar(BuildContext context, String text) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Stack(
        children: [
          const LoginBackground(),
          Positioned(
            top: 40,
            left: 20,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: LikeButton(
                      onTap: onLikeButtonTapped,
                      size: 20,
                      circleSize: 12,
                      circleColor: const CircleColor(
                          start: Color.fromARGB(255, 183, 61, 79),
                          end: Color.fromARGB(255, 235, 114, 98)),
                      bubblesColor: const BubblesColor(
                          dotPrimaryColor: Color(0xfff69c6d),
                          dotSecondaryColor: Color(0xfff57c73),
                          dotThirdColor: Color(0xfff6bc66)),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.arrow_back,
                          color: isLiked
                              ? BackgroundConstants.iconClick
                              : Colors.grey,
                          size: 22,
                        );
                      },
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                _file == null
                    ? Positioned(
                        right: MediaQuery.of(context).size == null
                            ? 0
                            : MediaQuery.of(context).size.width * 0.22,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(3, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color:
                                        Colors.grey.shade400.withOpacity(0.8)),
                              ]),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add_a_photo,
                              size: 50,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              _selectImage(context);
                            },
                          ),
                        ),
                      )
                    : Positioned(
                        right: MediaQuery.of(context).size == null
                            ? 0
                            : MediaQuery.of(context).size.width * 0.22,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                image: MemoryImage(_file!),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(3, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color:
                                        Colors.grey.shade400.withOpacity(0.8)),
                              ]),
                        ),
                      ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Text('Post',
                                  style: TextStyle(
                                      fontSize: 28, fontWeight: FontWeight.bold)),
                                TextField(
                                  controller: _titleController,
                                  decoration: const InputDecoration(
                                    labelText: 'Title',
                                  ),
                                ),
                                TextField(
                                  controller: _countryController,
                                  decoration: const InputDecoration(
                                    labelText: 'Country',
                                  ),
                                ),
                                TextField(
                                  controller: _placeController,
                                  decoration: const InputDecoration(
                                    labelText: 'Place',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.28),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green[200]!.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff2FC4B2),
                          Color(0xff22e2ab),
                        ],
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32,
                      ),
                      onPressed: () => postImage(_titleController.text,
                          _countryController.text, _placeController.text),
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.bottomLeft,
                    icon: const Icon(
                      Icons.add_a_photo,
                    ),
                    onPressed: () => _selectImage(context),
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    ));
  }
}
