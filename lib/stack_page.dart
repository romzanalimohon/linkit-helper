import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:draggable_home/draggable_home.dart';
String read_more = "In the wake of their first home burning down, Nasa and Tsukasa Yuzaki are seeking temporary shelter at the Arisugawas' bathhouse. Though they have only been married for a short time, their relationship has only become sweeter by the day.";
class StackPage extends StatelessWidget {
   StackPage({Key? key}) : super(key: key);

  bool moreThanTwoLines = false;
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: Text("Writing", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),

      headerWidget: headerWidget(context),
      //headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      fullyStretchable: true,
      //expandedBody:  Container(),
      //backgroundColor: Colors.white,
      appBarColor: Colors.white,
    );
  }

  // Row headerBottomBarWidget() {
  //   return Row(
  //     mainAxisSize: MainAxisSize.max,
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: const [
  //       Icon(
  //         Icons.settings,
  //         color: Colors.white,
  //       ),
  //     ],
  //   );
  // }

  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          child: Center(
            // child: Text(
            //   "Title",
            //   style: Theme.of(context)
            //       .textTheme
            //       .headline2!
            //       .copyWith(color: Colors.white70),
            // ),
            child: Image.network("https://imgix.ranker.com/user_node_img/3168/63352038/original/jiji-photo-u3?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375", fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height*.4,
            ),
          ),
        ),
        Positioned(
          top: 30,
            left: 20,
            child: Container(
              height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white
          ),
              child: Icon(Icons.chevron_left_sharp, size: 30,),
        )),
        Positioned(
            top: 100,
            left: 20,
            child: Text("Writing", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
        Positioned(
          top: 110,
          left: 20,
          child: Text("_____", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green),),
        ),
        Positioned(
          top: 150,
          left: 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width*.8,
            child: ReadMoreText(
              read_more, style: TextStyle(color: Colors.white),
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
              callback: (bool value){
                moreThanTwoLines = value;
              },
            ),
          )
        ),
      ],
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.white70,
        child: ListTile(
          leading: CircleAvatar(
            child: Text("$index"),
          ),
          title: const Text("Title"),
          subtitle: const Text("Subtitile"),
        ),
      ),
    );
  }
}