// // // import 'package:aura_well/Utils/colours.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:gradient_borders/gradient_borders.dart';

// // // class Textfieldcustam extends StatefulWidget {
// // //   final String hinttext;
// // //   final String? labeltext;
// // //   final Widget? starticon;
// // //   final Widget? lasticon;
// // //   final bool? obscur;
// // //   final VoidCallback? fun;
// // //   final bool? focus;
// // //   final TextInputType? keyboardType;
// // //   final TextEditingController? controller;

// // //   Textfieldcustam({
// // //     required this.hinttext,
// // //     this.controller,
// // //     this.labeltext,
// // //     this.lasticon,
// // //     this.obscur = false,
// // //     this.starticon,
// // //     this.keyboardType,
// // //     this.fun,
// // //     this.focus = false,
// // //   });

// // //   @override
// // //   _TextfieldcustamState createState() => _TextfieldcustamState();
// // // }

// // // class _TextfieldcustamState extends State<Textfieldcustam> {
// // //   bool isFocused = false;
// // //   bool isTapped = false;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return GestureDetector(
// // //       onTap: () {
// // //         setState(() {
// // //           isTapped = true; // Set isTapped to true when the TextField is tapped
// // //         });
// // //       },
// // //       child: Focus(
// // //         onFocusChange: (focus) {
// // //           setState(() {
// // //             isFocused = focus;
// // //             if (!focus) isTapped = false; // Reset isTapped when focus is lost
// // //           });
// // //         },
// // //         child: Padding(
// // //           padding: const EdgeInsets.only(top: 0),
// // //           child: TextField(
// // //             autofocus: widget.focus!,
// // //             obscureText: widget.obscur!,
// // //             keyboardType: widget.keyboardType,
// // //             style: const TextStyle(
// // //               fontSize: 14,
// // //             ),
// // //             controller: widget.controller,
// // //             decoration: InputDecoration(
// // //               filled: true,
// // //               fillColor: (isFocused || isTapped)
// // //                   ? Colors.white
// // //                   : Color(0xffF6F6F6), // Set fill color based on focus or tap
// // //               contentPadding: const EdgeInsets.all(20),

// // //               hintText: widget.hinttext,
// // //               hintStyle:const TextStyle(
// // //                   color:  Color(0xff626262), fontWeight: FontWeight.w500),
// // //               labelText: widget.labeltext,
// // //               prefixIcon: widget.starticon,
// // //               suffixIcon: widget.lasticon,
// // //               enabledBorder: OutlineInputBorder(
// // //                 borderRadius: BorderRadius.circular(10),
// // //                 borderSide: const BorderSide(color: Color(0xffF6F6F6)),
// // //               ),
// // //               focusedBorder: GradientOutlineInputBorder(
// // //                 gradient: const LinearGradient(colors: [
// // //                   AppColours.gradient1,
// // //                   AppColours.gradient2,
// // //                 ]),
// // //                 width: 2,
// // //                 borderRadius:
// // //                     BorderRadius.circular(10), // Set circular radius of 10
// // //               ),
// // //               disabledBorder: OutlineInputBorder(
// // //                 borderRadius: BorderRadius.circular(10),
// // //                 borderSide: const BorderSide(color: Color(0xffE5E7EB)),
// // //               ),
// // //               errorBorder: OutlineInputBorder(
// // //                 borderRadius: BorderRadius.circular(10),
// // //                 borderSide: const BorderSide(color: Colors.red),
// // //               ),
// // //               focusedErrorBorder: OutlineInputBorder(
// // //                 borderRadius: BorderRadius.circular(10),
// // //                 borderSide: const BorderSide(color: Colors.red),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:chats/utils/colours.dart';
// // import 'package:flutter/material.dart';
// // import 'package:gradient_borders/gradient_borders.dart';

// // class Textfieldcustam extends StatefulWidget {
// //   final String hinttext;
// //   final String? labeltext;
// //   final Widget? starticon;
// //   final Widget? lasticon;
// //   final bool? obscur;
// //   final VoidCallback? fun;
// //   final bool? focus;
// //   final TextInputType? keyboardType;
// //   final TextEditingController? controller;
// //   final int? maxLines; // Add maxLines property

// //   Textfieldcustam({
// //     required this.hinttext,
// //     this.controller,
// //     this.labeltext,
// //     this.lasticon,
// //     this.obscur = false,
// //     this.starticon,
// //     this.keyboardType,
// //     this.fun,
// //     this.focus = false,
// //     this.maxLines = 1, // Default to 1 line if not specified
// //   });

// //   @override
// //   _TextfieldcustamState createState() => _TextfieldcustamState();
// // }

// // class _TextfieldcustamState extends State<Textfieldcustam> {
// //   bool isFocused = false;
// //   bool isTapped = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           isTapped = true; // Set isTapped to true when the TextField is tapped
// //         });
// //       },
// //       child: Focus(
// //         onFocusChange: (focus) {
// //           setState(() {
// //             isFocused = focus;
// //             if (!focus) isTapped = false; // Reset isTapped when focus is lost
// //           });
// //         },
// //         child: Padding(
// //           padding: const EdgeInsets.only(top: 0),
// //           child: TextField(
// //             autofocus: widget.focus!,
// //             obscureText: widget.obscur!,
// //             keyboardType: widget.keyboardType,
// //             style: const TextStyle(
// //               fontSize: 14,
// //             ),
// //             controller: widget.controller,
// //             maxLines: widget.maxLines, // Set maxLines from the widget property
// //             decoration: InputDecoration(
// //               filled: true,
// //               fillColor: (isFocused || isTapped)
// //                   ? Colors.white
// //                   : Color(0xffF6F6F6), // Set fill color based on focus or tap
// //               contentPadding: const EdgeInsets.all(19),
// //               hintText: widget.hinttext,
// //               hintStyle: const TextStyle(
// //                   color: Color(0xff626262), fontWeight: FontWeight.w500),
// //               labelText: widget.labeltext,
// //               prefixIcon: widget.starticon,
// //               suffixIcon: widget.lasticon,
// //               enabledBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Color(0xffF6F6F6)),
// //               ),
// //               focusedBorder: GradientOutlineInputBorder(
// //                 gradient: const LinearGradient(colors: [
// //                   AppColours.gradient1,
// //                   AppColours.gradient2,
// //                 ]),
// //                 width: 2,
// //                 borderRadius:
// //                     BorderRadius.circular(10), // Set circular radius of 10
// //               ),
// //               disabledBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Color(0xffE5E7EB)),
// //               ),
// //               errorBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Colors.red),
// //               ),
// //               focusedErrorBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Colors.red),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:chats/utils/colours.dart';
// import 'package:chats/utils/common/custamContainer.dart';
// import 'package:flutter/material.dart';
// import 'package:gradient_borders/gradient_borders.dart';

// class Textfieldcustam extends StatefulWidget {
//   final String hinttext;
//   final String? labeltext;
//   final Widget? starticon;
//   final Widget? lasticon;
//   final bool? obscur;
//   final VoidCallback? fun;
//   final bool? focus;
//   final TextInputType? keyboardType;
//   final TextEditingController? controller;
//   final int? maxLines; // Add maxLines property

//   Textfieldcustam({
//     required this.hinttext,
//     this.controller,
//     this.labeltext,
//     this.lasticon,
//     this.obscur = false,
//     this.starticon,
//     this.keyboardType,
//     this.fun,
//     this.focus = false,
//     this.maxLines = 1, // Default to 1 line if not specified
//   });

//   @override
//   _TextfieldcustamState createState() => _TextfieldcustamState();
// }

// class _TextfieldcustamState extends State<Textfieldcustam> {
//   bool isFocused = false;
//   bool isTapped = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isTapped = true; // Set isTapped to true when the TextField is tapped
//         });
//       },
//       child: Focus(
//         onFocusChange: (focus) {
//           setState(() {
//             isFocused = focus;
//             if (!focus) isTapped = false; // Reset isTapped when focus is lost
//           });
//         },
//         child: Padding(
//           padding: const EdgeInsets.only(top: 0),
//           child: CustamContainer(
//             shado: (isFocused || isTapped) ? true : false,
//             child: TextField(
//               autofocus: widget.focus!,
//               obscureText: widget.obscur!,
//               keyboardType: widget.keyboardType,
//               style: const TextStyle(
//                 fontSize: 14,
//               ),
//               controller: widget.controller,
//               maxLines:
//                   widget.maxLines, // Set maxLines from the widget property
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: (isFocused || isTapped)
//                     ? Colors.white
//                     : Color(0xffF6F6F6), // Set fill color based on focus or tap
//                 contentPadding: const EdgeInsets.all(19),
//                 hintText: widget.hinttext,
//                 hintStyle: const TextStyle(
//                     color: Color(0xff626262), fontWeight: FontWeight.w500),
//                 labelText: widget.labeltext,
//                 prefixIcon: widget.starticon,
//                 suffixIcon: widget.lasticon,
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: Color(0xffF6F6F6)),
//                 ),
//                 focusedBorder: GradientOutlineInputBorder(
//                   gradient: const LinearGradient(colors: [
//                     AppColours.gradient1,
//                     AppColours.gradient2,
//                   ]),
//                   width: 2,
//                   borderRadius:
//                       BorderRadius.circular(10), // Set circular radius of 10
//                 ),
//                 disabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: Color(0xffE5E7EB)),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: Colors.red),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: Colors.red),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:aura_well/Utils/colours.dart';
// // import 'package:flutter/material.dart';
// // import 'package:gradient_borders/gradient_borders.dart';

// // class Textfieldcustam extends StatefulWidget {
// //   final String hinttext;
// //   final String? labeltext;
// //   final Widget? starticon;
// //   final Widget? lasticon;
// //   final bool? obscur;
// //   final VoidCallback? fun;
// //   final bool? focus;
// //   final TextInputType? keyboardType;
// //   final TextEditingController? controller;

// //   Textfieldcustam({
// //     required this.hinttext,
// //     this.controller,
// //     this.labeltext,
// //     this.lasticon,
// //     this.obscur = false,
// //     this.starticon,
// //     this.keyboardType,
// //     this.fun,
// //     this.focus = false,
// //   });

// //   @override
// //   _TextfieldcustamState createState() => _TextfieldcustamState();
// // }

// // class _TextfieldcustamState extends State<Textfieldcustam> {
// //   bool isFocused = false;
// //   bool isTapped = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           isTapped = true; // Set isTapped to true when the TextField is tapped
// //         });
// //       },
// //       child: Focus(
// //         onFocusChange: (focus) {
// //           setState(() {
// //             isFocused = focus;
// //             if (!focus) isTapped = false; // Reset isTapped when focus is lost
// //           });
// //         },
// //         child: Padding(
// //           padding: const EdgeInsets.only(top: 0),
// //           child: TextField(
// //             autofocus: widget.focus!,
// //             obscureText: widget.obscur!,
// //             keyboardType: widget.keyboardType,
// //             style: const TextStyle(
// //               fontSize: 14,
// //             ),
// //             controller: widget.controller,
// //             decoration: InputDecoration(
// //               filled: true,
// //               fillColor: (isFocused || isTapped)
// //                   ? Colors.white
// //                   : Color(0xffF6F6F6), // Set fill color based on focus or tap
// //               contentPadding: const EdgeInsets.all(20),

// //               hintText: widget.hinttext,
// //               hintStyle:const TextStyle(
// //                   color:  Color(0xff626262), fontWeight: FontWeight.w500),
// //               labelText: widget.labeltext,
// //               prefixIcon: widget.starticon,
// //               suffixIcon: widget.lasticon,
// //               enabledBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Color(0xffF6F6F6)),
// //               ),
// //               focusedBorder: GradientOutlineInputBorder(
// //                 gradient: const LinearGradient(colors: [
// //                   AppColours.gradient1,
// //                   AppColours.gradient2,
// //                 ]),
// //                 width: 2,
// //                 borderRadius:
// //                     BorderRadius.circular(10), // Set circular radius of 10
// //               ),
// //               disabledBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Color(0xffE5E7EB)),
// //               ),
// //               errorBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Colors.red),
// //               ),
// //               focusedErrorBorder: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(10),
// //                 borderSide: const BorderSide(color: Colors.red),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:chats/utils/colours.dart';
// import 'package:flutter/material.dart';
// import 'package:gradient_borders/gradient_borders.dart';

// class Textfieldcustam extends StatefulWidget {
//   final String hinttext;
//   final String? labeltext;
//   final Widget? starticon;
//   final Widget? lasticon;
//   final bool? obscur;
//   final VoidCallback? fun;
//   final bool? focus;
//   final TextInputType? keyboardType;
//   final TextEditingController? controller;
//   final int? maxLines; // Add maxLines property

//   Textfieldcustam({
//     required this.hinttext,
//     this.controller,
//     this.labeltext,
//     this.lasticon,
//     this.obscur = false,
//     this.starticon,
//     this.keyboardType,
//     this.fun,
//     this.focus = false,
//     this.maxLines = 1, // Default to 1 line if not specified
//   });

//   @override
//   _TextfieldcustamState createState() => _TextfieldcustamState();
// }

// class _TextfieldcustamState extends State<Textfieldcustam> {
//   bool isFocused = false;
//   bool isTapped = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isTapped = true; // Set isTapped to true when the TextField is tapped
//         });
//       },
//       child: Focus(
//         onFocusChange: (focus) {
//           setState(() {
//             isFocused = focus;
//             if (!focus) isTapped = false; // Reset isTapped when focus is lost
//           });
//         },
//         child: Padding(
//           padding: const EdgeInsets.only(top: 0),
//           child: TextField(
//             autofocus: widget.focus!,
//             obscureText: widget.obscur!,
//             keyboardType: widget.keyboardType,
//             style: const TextStyle(
//               fontSize: 14,
//             ),
//             controller: widget.controller,
//             maxLines: widget.maxLines, // Set maxLines from the widget property
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: (isFocused || isTapped)
//                   ? Colors.white
//                   : Color(0xffF6F6F6), // Set fill color based on focus or tap
//               contentPadding: const EdgeInsets.all(19),
//               hintText: widget.hinttext,
//               hintStyle: const TextStyle(
//                   color: Color(0xff626262), fontWeight: FontWeight.w500),
//               labelText: widget.labeltext,
//               prefixIcon: widget.starticon,
//               suffixIcon: widget.lasticon,
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: const BorderSide(color: Color(0xffF6F6F6)),
//               ),
//               focusedBorder: GradientOutlineInputBorder(
//                 gradient: const LinearGradient(colors: [
//                   AppColours.gradient1,
//                   AppColours.gradient2,
//                 ]),
//                 width: 2,
//                 borderRadius:
//                     BorderRadius.circular(10), // Set circular radius of 10
//               ),
//               disabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: const BorderSide(color: Color(0xffE5E7EB)),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: const BorderSide(color: Colors.red),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: const BorderSide(color: Colors.red),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:chats/utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Textfieldcustam extends StatefulWidget {
  final String hinttext;
  final String? labeltext;
  final Widget? starticon;
  final Widget? lasticon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final int? maxLines; // Add maxLines property

  Textfieldcustam({
    required this.hinttext,
    this.controller,
    this.labeltext,
    this.lasticon,
    this.obscur = false,
    this.starticon,
    this.keyboardType,
    this.fun,
    this.focus = false,
    this.maxLines = 1, // Default to 1 line if not specified
  });

  @override
  _TextfieldcustamState createState() => _TextfieldcustamState();
}

class _TextfieldcustamState extends State<Textfieldcustam> {
  bool isFocused = false;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = true; // Set isTapped to true when the TextField is tapped
        });
      },
      child: Focus(
        onFocusChange: (focus) {
          setState(() {
            isFocused = focus;
            if (!focus) isTapped = false; // Reset isTapped when focus is lost
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: TextField(
            autofocus: widget.focus!,
            obscureText: widget.obscur!,
            keyboardType: widget.keyboardType,
            style: const TextStyle(
              fontSize: 14,
            ),
            controller: widget.controller,
            maxLines: widget.maxLines, // Set maxLines from the widget property
            decoration: InputDecoration(
              // filled: true,
              // fillColor: (isFocused || isTapped)
              //     ? Colors.white
              //     : Color(0xffF6F6F6), // Set fill color based on focus or tap
              contentPadding: const EdgeInsets.all(19),
              hintText: widget.hinttext,
              hintStyle: const TextStyle(
                  color: Color(0xff626262), fontWeight: FontWeight.w500),
              labelText: widget.labeltext,
              prefixIcon: widget.starticon,
              suffixIcon: widget.lasticon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColours.lightgray),
              ),
              focusedBorder: GradientOutlineInputBorder(
                gradient: const LinearGradient(colors: [
                  AppColours.gradient1,
                  AppColours.gradient3,
                  AppColours.gradient2,
                ]),
                width: 2,
                borderRadius:
                    BorderRadius.circular(10), // Set circular radius of 10
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
