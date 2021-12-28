import 'Text.dart';

class TextList {
  List<Text> _featuresList = [
    Text(
      Header: 'ALL THE APP ON ONE SINGLE LINE',
      Body:
          'here’s an icon on the top right, tap on it and you’ll create a new note',
    ),
    Text(
      Header: 'THE CIRCLE AND THE DOTS',
      Body:
          'Here at our development studio, we were quite ingenious to let you sort the list how you want, who are we to impose the sorting on you?',
    ),
    Text(
      Header: 'NOTABLY EASY',
      Body:
          'Notes can be as minimal or as eye-catching as you wish. Add emojis or show emphasis with bold text. The editor is your playground.',
    ),
    Text(
      Header: 'NOT EVERYTHING IS TRASH',
      Body:
          'Sometimes even the brightest of us accidentally delete something dear to us, like the number you got the other evening. So your deleted note will always go to ‘trash’ first.',
    ),
  ];

  Text getFeatures({required int at}) {
    return _featuresList[at];
  }
}
