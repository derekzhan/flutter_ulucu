import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_ulucu/public.dart';

/*
 * 轮播图
 */
class SwiperView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwiperViewState();
  }

}

class SwiperViewState extends State<SwiperView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: Screen.width,
      height: Screen.height* 1 / 6,
      child: Swiper(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          //return new Image.network("http://via.placeholder.com/288x188",fit: BoxFit.fill,);
          return new Image.asset("img/icon_home_discover_head_bg.jpg", fit: BoxFit.fill,);
        },
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Colors.black54,
              activeColor: Colors.white,
              size: 5,
              activeSize: 5,
            )
        ),
        //control: SwiperControl(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index个'),
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return Container(
      child:  Image.asset("img/icon_home_discover_head_bg.jpg"),
    );
  }
}

