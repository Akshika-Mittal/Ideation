// import 'package:flutter/material.dart';
// import 'package:polls/polls.dart';
// import 'package:tiffin/utils/AppColors.dart';
// import 'package:tiffin/utils/constants.dart';
// class CreatePolls extends StatefulWidget {
//   final String question;
//   final String value1,value2,value3,value4;
//   const CreatePolls({
//     required this.question,
//     required this.value1,
//     required this.value2,
//     required this.value3,
//     required this.value4
//   });
//
//   @override
//   State<CreatePolls> createState() => _CreatePollsState(
//   this.question,this.value1,this.value2,this.value3,this.value4);
// }
// class _CreatePollsState extends State<CreatePolls> {
//   final String question;
//   final String value1,value2,value3,value4;
//   _CreatePollsState(
//   this.question,
//   this.value1,
//   this.value2,
//   this.value3,
//   this.value4
//   );
//
//
//   double option1 = 1.0;
//   double option2 = 0.0;
//   double option3 = 1.0;
//   double option4 = 1.0;
//
//   String user = "king@mail.com";
//   Map usersWhoVoted = {'sam@mail.com': 3, 'mike@mail.com' : 4, 'john@mail.com' : 1, 'kenny@mail.com' : 1};
//   String creator = "eddy@mail.com";
//   @override
//   Widget build(BuildContext context) {
//     return Polls(
//       children: [
//         // This cannot be less than 2, else will throw an exception
//         Polls.options(title: value1, value: option1),
//         Polls.options(title: value2, value: option2),
//         Polls.options(title: value3, value: option3),
//         Polls.options(title: value4, value: option4),
//       ],
//       question: Text(question),
//       currentUser: this.user,
//       creatorID: this.creator,
//       voteData: usersWhoVoted,
//       userChoice: usersWhoVoted[this.user],
//       onVoteBackgroundColor: kPrimaryColor,
//       leadingBackgroundColor: Colors.blue,
//       backgroundColor: Colors.white,
//       onVote: (choice) {
//         print(choice);
//         setState(() {
//           this.usersWhoVoted[this.user] = choice;
//         });
//         if (choice == 1) {
//           setState(() {
//             option1 += 1.0;
//           });
//         }
//         if (choice == 2) {
//           setState(() {
//             option2 += 1.0;
//           });
//         }
//         if (choice == 3) {
//           setState(() {
//             option3 += 1.0;
//           });
//         }
//         if (choice == 4) {
//           setState(() {
//             option4 += 1.0;
//           });
//           // }
//           // if (choice == 5) {
//           //   setState(() {
//           //     option5 += 1.0;
//           //   });
//           // }
//           // if (choice == 6) {
//           //   setState(() {
//           //     option6 += 1.0;
//           //   });
//           // }
//           // if (choice == 7) {
//           //   setState(() {
//           //     option7 += 1.0;
//           //   });
//           // }
//           // if (choice == 8) {
//           //   setState(() {
//           //     option8 += 1.0;
//           //   });
//           // }
//         };
//       }
//     );
//   }
// }
//
