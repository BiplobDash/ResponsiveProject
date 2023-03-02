import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast/toast.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      body: LayoutBuilder(builder: (_, size) {
        if (size.maxWidth < 480) {
          return Mobile();
        } else if (size.maxWidth > 480 && size.maxWidth < 800) {
          return Tablet();
        } else {
          return Desktop();
        }
      }),
    );
  }
}

class Mobile extends StatefulWidget {
  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int counter = 0;

  List<String> question = [
    'Loading',
    'What are your favourite family vacation memories?',
    'Did you have a best friend and if so,\nhow did that relationship play out over the course of your life?',
    'How did you enjoy working?',
    'What are some achievements you are most proud of?',
    'What was your favourite childhood holiday tradition?',
    'What do you remember about your parents?',
    'What other family members helped raise you?',
    'Do you still stay in touch with any of your co-workers?',
    'What do you most remember about school?',
    'What was a memorable birthday?',
    'Do you have any fond memories of your co-workers?',
    'Did you receive any special rewards?',
    'Do you have memories of what your parents said you were like as a baby?',
    'What advice would you give young people who are looking for their first jobs?',
    'What was your favourite part of school?',
    'What was a typical day like in your family when you were little?',
    'What was it like growing up in your hometown?',
    'Did you stay late or did you leave on time or early?',
    'What do you still remember from school?',
    'What alternative career do you wish you would\'ve tried?',
    'What did you feel unqualified to do for work?How did you respond to the challenge?'
  ];

  alertDialogue() {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: Container(
              height: 300,
              child: Text(
                "Coped Text",
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/img1.png'),
        elevation: 0,
        actions: [
          ElevatedButton(
            child: Text(
              "Record their answer",
              style: TextStyle(color: Colors.black54),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black26, width: 1)),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Grow closer to your loved ones\n"
              "by asking them this questions",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 900,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  question[counter].toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Copy This Questions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      FlutterClipboard.copy(question[counter].toString());
                      alertDialogue();
                      Toast.show('Copied');
                      FlutterClipboard.paste();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.black26, width: 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Try another Questions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counter < 22) {
                          counter++;
                        }
                        if (counter >= 22) {
                          // Fluttertoast.showToast(msg: "List Finished");
                          Toast.show('List Finished');
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.black26, width: 1)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Tablet extends StatefulWidget {
  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  int counter = 0;

  List<String> question = [
    'Loading',
    'What are your favourite family vacation memories?',
    'Did you have a best friend and if so,\nhow did that relationship play out over the course of your life?',
    'How did you enjoy working?',
    'What are some achievements you are most proud of?',
    'What was your favourite childhood holiday tradition?',
    'What do you remember about your parents?',
    'What other family members helped raise you?',
    'Do you still stay in touch with any of your co-workers?',
    'What do you most remember about school?',
    'What was a memorable birthday?',
    'Do you have any fond memories of your co-workers?',
    'Did you receive any special rewards?',
    'Do you have memories of what your parents said you were like as a baby?',
    'What advice would you give young people who are looking for their first jobs?',
    'What was your favourite part of school?',
    'What was a typical day like in your family when you were little?',
    'What was it like growing up in your hometown?',
    'Did you stay late or did you leave on time or early?',
    'What do you still remember from school?',
    'What alternative career do you wish you would\'ve tried?',
    'What did you feel unqualified to do for work?How did you respond to the challenge?'
  ];

  alertDialogue() {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: Container(
              height: 300,
              child: Text(
                "Coped Text",
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 300,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/img1.png'),
        elevation: 0,
        actions: [
          ElevatedButton(
            child: Text(
              "Record their answer",
              style: TextStyle(color: Colors.black54),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black26, width: 1)),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Grow closer to your loved ones\n"
              "by asking them this questions",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 900,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  question[counter].toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Copy this Questions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      FlutterClipboard.copy(question[counter].toString());
                      alertDialogue();
                      Toast.show('Copied');
                      FlutterClipboard.paste();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.black26, width: 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Try another Questions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counter < 22) {
                          counter++;
                        }
                        if (counter >= 22) {
                          // Fluttertoast.showToast(msg: "List Finished");
                          Toast.show('List Finished');
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.black26, width: 1)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Desktop extends StatefulWidget {
  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  int counter = 0;

  List<String> question = [
    'Loading',
    'What are your favourite family vacation memories?',
    'Did you have a best friend and if so,\nhow did that relationship play out over the course of your life?',
    'How did you enjoy working?',
    'What are some achievements you are most proud of?',
    'What was your favourite childhood holiday tradition?',
    'What do you remember about your parents?',
    'What other family members helped raise you?',
    'Do you still stay in touch with any of your co-workers?',
    'What do you most remember about school?',
    'What was a memorable birthday?',
    'Do you have any fond memories of your co-workers?',
    'Did you receive any special rewards?',
    'Do you have memories of what your parents said you were like as a baby?',
    'What advice would you give young people who are looking for their first jobs?',
    'What was your favourite part of school?',
    'What was a typical day like in your family when you were little?',
    'What was it like growing up in your hometown?',
    'Did you stay late or did you leave on time or early?',
    'What do you still remember from school?',
    'What alternative career do you wish you would\'ve tried?',
    'What did you feel unqualified to do for work?How did you respond to the challenge?'
  ];

  alertDialogue() {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: Container(
              height: 300,
              child: Text(
                "Coped Text",
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 300,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/img1.png'),
        elevation: 0,
        actions: [
          ElevatedButton(
            child: Text(
              "Record their answer",
              style: TextStyle(color: Colors.black54),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shadowColor: Colors.grey,
                side: BorderSide(color: Colors.black26, width: 1)),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Grow closer to your loved ones\n"
              "by asking them this questions",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 900,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  question[counter].toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Copy this Questions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      FlutterClipboard.copy(question[counter].toString());
                      alertDialogue();
                      Toast.show('Copied');
                      FlutterClipboard.paste();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.black26, width: 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Try another Questions",
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counter < 22) {
                          counter++;
                        } else {
                          // Fluttertoast.showToast(msg: "List Finished");
                          counter = 21;
                          Toast.show('List Finished');
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.grey,
                        side: BorderSide(color: Colors.black26, width: 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
