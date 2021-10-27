import 'package:fire_service/Strings/strings.dart';
import 'package:fire_service/onboard/unbording.dart';
import 'package:fire_service/login/login.dart';
import "package:flutter/material.dart";

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}




class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController controller= PageController(initialPage: 0);

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: contents.length,
                onPageChanged: (int index){
                  setState((){
                    currentIndex = index;
                  });
                },
                itemBuilder: (_,i){
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: height*0.10),
                        Column(
                          children: [
                            Image.asset(contents[i].image),
                            SizedBox(height: 10),
                            Text(contents[i].title, style: boldBlack),
                            SizedBox(height: 10),
                            Text(contents[i].description,
                              style: normalGrey,
                              textAlign: TextAlign.center,),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length,
                        (index) => buildDot(index, context))
            ),
          ),
          SizedBox(height: height*0.06),
          FlatButton(
            child: Text(currentIndex == contents.length -1 ? 'Continue':'Next', style: buttonWhite,),
            onPressed: (){
              if(currentIndex == contents.length -1){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Login()));
              }
              controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
            },
            color: red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000)
            ),
          ),
          SizedBox(height: height*0.10,),
        ],
      ),
    );
  }
  Container buildDot(int index , BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height*0.01,
      width: currentIndex == index? 25:height*0.01,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: red,
      ),
    );
  }
}
