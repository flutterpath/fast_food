import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(initialPage: 0, viewportFraction: 1.0,);
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  int currentPage = 0;

  _onPageViewChange(int page) {
    print("Current Page: " + page.toString());
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: height*0.1,),

            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: _onPageViewChange,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.05),
                        child: MyText24(
                          text: "All Favourite Food\nin One Place",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      SizedBox(height: height*0.06),

                      Container(
                        height: MediaQuery.of(context).size.height*0.43,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/slider1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.05),
                        child: MyText24(
                          text: "Order From Your\nNearest Rastaurent",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      SizedBox(height: height*0.06),

                      Container(
                        height: MediaQuery.of(context).size.height*0.43,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/slider2.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.05),
                        child: MyText24(
                          text: "Enjoy Our Free\nDelivery",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      SizedBox(height: height*0.06),

                      Container(
                        height: MediaQuery.of(context).size.height*0.43,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/slider3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.05),
                        child: MyText24(
                          text: "Esily Track Your\nOrder",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      SizedBox(height: height*0.06),

                      Container(
                        height: MediaQuery.of(context).size.height*0.43,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/slider4.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: height*0.1),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    padding: EdgeInsets.zero,
                    minWidth: 50,
                    onPressed: currentPage == 3 ? (){
                      controller.previousPage(duration: _kDuration, curve: _kCurve);
                    }
                    : (){
                      setState(() {
                        controller.jumpToPage(3);
                      });
                    },
                    child: MyText14(
                      text: currentPage == 3 ? "Back" : "Skip",
                      color: MyColors.textDark425060,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),

                  Container(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: MyColors.lightGrey,
                        activeDotColor: MyColors.yellowMainFFD250,
                        expansionFactor: 3,
                        spacing: 15
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 45,
                    width: 45,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      color: MyColors.yellowMainFFD250,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      onPressed: currentPage == 3 ? (){
                        Navigator.pushNamed(context, "/signUpFirst");
                      }
                      : (){
                        controller.nextPage(duration: _kDuration, curve: _kCurve);
                      },
                      child: currentPage == 3 ? Icon(Icons.check) : Icon(Icons.arrow_forward_outlined),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: height*0.1),

          ],
        ),
      ),
    );

  }
}
