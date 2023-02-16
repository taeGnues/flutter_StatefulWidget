import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget{
//   final Color color;
//
//   const HomeScreen({
//     required this.color,
//     Key? key,
// }) : super(key: key); // constructor 생성자. 딱 한번 실행.
//
//   @override
//   State<StatefulWidget> createState() { // Stateful Widget의 State를 돌려준다.
//     return _HomeScreenState(); // State는 private하게 만들어준다.
//   }
//
//
// }
//
// class _HomeScreenState extends State<HomeScreen>{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50.0,
//       height: 50.0,
//       color: widget.color, // parameter를 state에서 받아옴. state에 있는 color를 가져옴.
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key) {
    print('Widget Constructor 실행!');
  } // 컨스트럭트 생성하자마자 바로 실행

  @override
  State<HomeScreen> createState() {
    print('CreateState 실행');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('initState실행');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print('didChangeDependecies 실행');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

    print('deactivate 실행');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    print('dispose 실행');
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    print('didUpdateWidget 실행');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('build 실행');
    return GestureDetector(
      onTap: (){
        setState(() {
          number++;
        });
        },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
          child: Text(
            number.toString(),
          ),
        ),
      ),
    );
  }
}
