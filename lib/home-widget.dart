import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool isLoading = false;

  _onTap() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(isLoading ? 40 : 10),
              ),
              width: isLoading ? 50 : 200,
              height: 50,
              alignment: Alignment.center,
              child: AnimatedCrossFade(
                crossFadeState: isLoading
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Duration(milliseconds: 100),
                firstChild: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Butãozin",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 34,
                    ),
                  ],
                ),
                secondChild: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              )
              // isLoading
              //     ? Center(
              //         child: CircularProgressIndicator(
              //           valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              //         ),
              //       )
              //     : Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: <Widget>[
              //           Text(
              //             "Butãozin",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 18),
              //           ),
              //           Icon(
              //             Icons.arrow_forward,
              //             color: Colors.white,
              //             size: 34,
              //           ),
              //         ],
              //       ),
              ),
        ),
      ),
    );
  }
}
