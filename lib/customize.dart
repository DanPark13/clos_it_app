import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Customize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Expanded(
            child: new Swiper(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  'http://via.placeholder.com/350x150',
                  fit: BoxFit.fill,
                );
              },
              layout: SwiperLayout.STACK,
              itemWidth: 300.0,
              pagination:
                  new SwiperPagination(builder: SwiperPagination.fraction),
              control: new SwiperControl(),
            ),
          ),
          Expanded(
            child: new Swiper(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  'http://via.placeholder.com/350x150',
                  fit: BoxFit.fill,
                );
              },
              layout: SwiperLayout.STACK,
              itemWidth: 300.0,
              pagination:
                  new SwiperPagination(builder: SwiperPagination.fraction),
              control: new SwiperControl(),
            ),
          ),
        ],
      ),
    );
  }
}
