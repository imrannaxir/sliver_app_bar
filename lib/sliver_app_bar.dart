import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({super.key});

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  // final list = List.generate(20, (index) => 'To Kaise Hain Ap Log $index');

  List names = [
    '.',
    'Zohaib',
    'Adeel',
    'Saim',
    'Momin',
    'Sufyan',
    'Hamza',
    'Faizan',
    'Abdullah',
    'Ahsan',
    'Dilshad',
    'Amir',
    'Imran Nazeer',
    'Imran',
    'Jagu',
    'Mani',
    'Ha Di',
    'Rehan',
    'Shoaib',
    'Umair',
  ];
  List mgs = [
    'Morning',
    'Kya Kr Rhe Ho ?',
    'Hy',
    'Have A Nice Day !!!',
    '? ',
    'Jani',
    'Oy',
    'Ya ALLAH Khair',
    'Hlw',
    ' Developer',
    '?',
    'Project Manager',
    'Hellow',
    'How Are you ?',
    'Ummmah',
    'Pagl',
    'Bhai Jan',
    'Hlw',
    'Hy',
    'By',
  ];
  List time = [
    '2:35 am',
    '6:02 pm',
    '12:15 am',
    '11:05 pm',
    '1:09 am',
    '3:30 pm',
    '2:35 am',
    '6:02 pm',
    '7:07 am',
    '9:29 pm',
    '3:44 am',
    '12:15 am',
    '11:05 pm',
    '1:09 am',
    '3:30 pm',
    '2:35 am',
    '6:02 pm',
    '7:07 am',
    '9:29 pm',
    '3:44 am',
  ];
  List images = [
    'assets/images/mani.jpg',
    'assets/images/asdf.jpg',
    'assets/images/image.jpg',
    'assets/images/img.jpg',
    'assets/images/jagu.jpg',
    'assets/images/img.jpg',
    'assets/images/mani.jpg',
    'assets/images/police.jpg',
    'assets/images/qwerty.jpg',
    'assets/images/ready.jpg',
    'assets/images/mani.jpg',
    'assets/images/xyz.jpg',
    'assets/images/mani.jpg',
    'assets/images/asdf.jpg',
    'assets/images/image.jpg',
    'assets/images/img.jpg',
    'assets/images/jagu.jpg',
    'assets/images/img.jpg',
    'assets/images/mani.jpg',
    'assets/images/police.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mySliverAppBar(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget mySliverAppBar() {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          floating: false,
          snap: false,
          backgroundColor: Colors.green,
          shadowColor: Colors.amber,
          //  title: Text('Sliver App Bar'),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            title: Center(
              child: Text(
                'SLIVER APP BAR',
              ),
            ),
            background: Image(
              image: AssetImage(
                'assets/images/mani.jpg',
              ),
              fit: BoxFit.cover,
            ),
            centerTitle: true,
          ),
        ),
        // const SliverToBoxAdapter(
        //   child: Text(''),
        // ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: names.length,
            (context, index) {
              return Container(
                height: size.height * 0.15,
                width: size.width * double.infinity,
                color: Colors.white70,
                child: Card(
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  child: Row(
                    //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                images[index],
                              ),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 130,
                              child: Text(
                                names[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
                              child: SizedBox(
                                height: 30,
                                width: 150,
                                child: Text(
                                  mgs[index],
                                  style: const TextStyle(
                                    color: Colors.black45,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text(
                          time[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /*
    Widget mySliverAppBar() {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          floating: false,
          snap: false,
          backgroundColor: Colors.green,
          shadowColor: Colors.amber,
          //  title: Text('Sliver App Bar'),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            title: Center(
              child: Text(
                'SLIVER APP BAR',
              ),
            ),
            background: Image(
              image: AssetImage(
                'assets/images/mani.jpg',
              ),
              fit: BoxFit.cover,
            ),
            centerTitle: true,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.black,
              ),
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.pink,
              ),
              Container(
                height: 200,
                color: Colors.purple,
              ),
            ],
          ),
        )
      ],
    );
  }

   */

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                //  backgroundColor: Colors.orange,
                radius: 20,
                foregroundImage: AssetImage(
                  'assets/images/mani.jpg',
                ),
                // child: Icon(Icons.person),
              ),
              title: Text(
                'Name : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'Imran Nazeer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 20,
                child: Icon(Icons.email),
              ),
              title: Text(
                'imrannazeer2015804@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                // backgroundImage: AssetImage(
                //   'assets/images/img.jpg',
                // ),
                child: Icon(Icons.password),
              ),
              title: Text(
                'Password : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'jagu@804',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Decrement',
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.camera,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}


/*
 
   // import 'package:flutter/material.dart';

// class MyPracticeListView extends StatefulWidget {
//   const MyPracticeListView({required this.title, Key? key}) : super(key: key);

//   final String title;

//   @override
//   State<MyPracticeListView> createState() => _MyPracticeListViewState();
// }

// class _MyPracticeListViewState extends State<MyPracticeListView> {
  // List names = [
  //   'Imran',
  //   'j@Gu',
  //   'M@Ni',
  //   'H@shMi',
  //   'B@Gu',
  //   'Mithu',
  //   'Imran',
  //   'j@Gu',
  //   'M@Ni',
  //   'H@shMi',
  //   'B@Gu',
  //   'Mithu',
  //   'Imran Nazeer',
  //   'Imran',
  //   'j@Gu',
  //   'M@Ni',
  //   'Imran Nazeer',
  //   'Imran',
  //   'j@Gu',
  //   'M@Ni',
  // ];
  // List mgs = [
  //   'Hy',
  //   'Kya Kr Rhe Ho ?',
  //   'Morning',
  //   'Have A Nice Day !!!',
  //   'Lub u ',
  //   'Miss u',
  //   'Oy',
  //   'Ya ALLAH Khair',
  //   'Hlw',
  //   ' Developer',
  //   '?',
  //   'Project Manager',
  //   'Hellow',
  //   'How Are you ?',
  //   'Ummmah',
  //   'Pagl',
  //   'Bhai Jan',
  //   'Hlw',
  //   'Hy',
  //   'By',
  // ];
  // List time = [
  //   '2:35 am',
  //   '6:02 pm',
  //   '12:15 am',
  //   '11:05 pm',
  //   '1:09 am',
  //   '3:30 pm',
  //   '2:35 am',
  //   '6:02 pm',
  //   '7:07 am',
  //   '9:29 pm',
  //   '3:44 am',
  //   '12:15 am',
  //   '11:05 pm',
  //   '1:09 am',
  //   '3:30 pm',
  //   '2:35 am',
  //   '6:02 pm',
  //   '7:07 am',
  //   '9:29 pm',
  //   '3:44 am',
  // ];
  // List images = [
  //   'assets/images/mani.jpg',
  //   'assets/images/jani.jpg',
  //   'assets/images/bagu.jpg',
  //   'assets/images/bhalu.jpg',
  //   'assets/images/dil.jpg',
  //   'assets/images/img.jpg',
  //   'assets/images/mani.jpg',
  //   'assets/images/jani.jpg',
  //   'assets/images/imran.jpg',
  //   'assets/images/jagu.jpg',
  //   'assets/images/mani.jpg',
  //   'assets/images/jan.jpg',
  //   'assets/images/jind.jpg',
  //   'assets/images/jani.jpg',
  //   'assets/images/me.jpg',
  //   'assets/images/my.jpg',
  //   'assets/images/mani.jpg',
  //   'assets/images/bagu.jpg',
  //   'assets/images/bhalu.jpg',
  //   'assets/images/imran.jpg',
  // ];

// //  final myList = List<String>.generate(30, (index) => 'J@Gu $index');

//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           widget.title,
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('Searching ........'),
//                 ),
//               );
//             },
//             icon: const Icon(
//               Icons.search,
//               size: 32,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: IconButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text('One Man Army !!!'),
//                   ),
//                 );
//               },
//               icon: const Icon(
//                 Icons.person,
//                 size: 32,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: myListViewCustom(),
//       drawer: myDrawer(),
//       floatingActionButton: myFloatingActionButton(),
//       bottomNavigationBar: myBottomNavigationBar(),
//     );
//   }

//   Widget myListViewCustom() {
//     var size = MediaQuery.of(context).size;

//     return ListView.builder(
//         itemCount: 20,
//         itemBuilder: (BuildContext context, int index) {
          // return Container(
          //   height: size.height * 0.15,
          //   width: size.width * double.infinity,
          //   color: Colors.white70,
          //   child: Card(
          //     elevation: 5.0,
          //     shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(0),
          //       ),
          //     ),
          //     child: Row(
          //       //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left: 10),
          //           child: Container(
          //             height: 60,
          //             width: 60,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                 fit: BoxFit.cover,
          //                 image: AssetImage(
          //                   images[index],
          //                 ),
          //               ),
          //               borderRadius: const BorderRadius.all(
          //                 Radius.circular(30),
          //               ),
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 20),
          //           child: Column(
          //             children: [
          //               SizedBox(
          //                 height: 30,
          //                 width: 130,
          //                 child: Text(
          //                   names[index],
          //                   style: const TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 24,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(top: 10, left: 20),
          //                 child: SizedBox(
          //                   height: 30,
          //                   width: 150,
          //                   child: Text(
          //                     mgs[index],
          //                     style: const TextStyle(
          //                       color: Colors.black45,
          //                       fontSize: 16,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left: 150),
          //           child: Text(
          //             time[index],
          //             style: const TextStyle(
          //               color: Colors.black,
          //               fontSize: 18,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // );
//         });
//   }

//   Widget myFloatingActionButton() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         FloatingActionButton(
//           onPressed: _incrementCounter,
//           tooltip: 'Increment',
//           child: const Icon(
//             Icons.add,
//             size: 32,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: _decrementCounter,
//           tooltip: 'Decrement',
//           child: const Icon(
//             Icons.remove,
//             size: 32,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget myBottomNavigationBar() {
//     return SizedBox(
//       height: 70,
//       child: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         // Fixed
//         backgroundColor: Colors.black,
//         // <-- This works for fixed
//         selectedItemColor: Colors.greenAccent,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             backgroundColor: Colors.blue,
//             icon: Icon(
//               Icons.camera_alt_rounded,
//               size: 32,
//             ),
//             label: 'Camera',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.blue,
//             icon: Icon(
//               Icons.chat,
//               size: 32,
//             ),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.blue,
//             icon: Icon(
//               Icons.group,
//               size: 32,
//             ),
//             label: 'Group',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.blue,
//             icon: Icon(
//               Icons.stacked_bar_chart,
//               size: 32,
//             ),
//             label: 'Status',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.green,
//             icon: Icon(
//               Icons.call,
//               size: 32,
//             ),
//             label: 'Call',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget myDrawer() {
//     return Drawer(
//       child: Column(
//         children: [
//           Container(
//             color: Colors.green,
//             child: const DrawerHeader(
//               child: Center(
//                 child: Text(
//                   'Drawer Header',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 30),
//             child: ListTile(
//               leading: Icon(
//                 Icons.person,
//                 size: 32,
//               ),
//               title: Text(
//                 'M@Ni',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               trailing: Icon(
//                 Icons.account_circle,
//                 size: 32,
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 30),
//             child: ListTile(
//               leading: Icon(
//                 Icons.person,
//                 size: 32,
//               ),
//               title: Text(
//                 'J@Gu',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               trailing: Icon(
//                 Icons.account_circle,
//                 size: 32,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Searching ........'),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('One Man Army !!!'),
                  ),
                );
              },
              icon: const Icon(
                Icons.person,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: myStaggeredGridView(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myStaggeredGridView() {
    var size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: false,
          snap: false,
          floating: false,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Center(
              child: Text(
                'Sliver App Bar',
              ),
            ),
            background: FlutterLogo(),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: Container(
        //     color: Colors.purpleAccent,
        //     height: 30,
        //     child: const Center(
        //       child: Text(
        //         'Scroll to see the SliverAppBar\'s effects.',
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 18,
        //           fontWeight: FontWeight.normal,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white70 : Colors.amber,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // Fixed
        backgroundColor: Colors.black,
        // <-- This works for fixed
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.camera_alt_rounded,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Call',
          ),
        ],
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 32,
              ),
              title: Text(
                'M@Ni',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.account_circle,
                size: 32,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 32,
              ),
              title: Text(
                'J@Gu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.account_circle,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MySliverPersistantHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String title;

  MySliverPersistantHeaderDelegate({required this.title});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.grey,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  @override
  double get maxExtent {
    return 70;
  }

  @override
  double get minExtent {
    return 20;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    throw true;
  }
}

 
 */
