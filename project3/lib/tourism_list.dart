import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_layout_part2/model/tourism_place.dart';
import 'package:project2_layout_part2/list_item.dart';
import 'package:project2_layout_part2/DetailScreen.dart';
import 'package:project2_layout_part2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);
  
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/kapal.jpeg',
      deskripsi:
          'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the indonesian Navy at the building beside the submarine.',
      open: 'Open Everday',
      time: '08.00 - 16.00',
      price: 'Rp. 20.000',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpeg',
      deskripsi:
          'Kelenteng Sanggar Agung juga menyediakan acara perayaan tradisional Tionghoa seperti Cap Go Meh dan Imlek yang dapat menjadi pengalaman yang unik bagi para wisatawan. Selain itu, di sekitar kelenteng terdapat banyak pedagang yang menjual berbagai barang tradisional Tionghoa seperti kue keranjang dan lukisan Tionghoa yang dapat menjadi oleh-oleh bagi para wisatawan.',
      open: 'Open Everday',
      time: '08.00 - 20.00',
      price: 'Rp. 10.000',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpeg',
      deskripsi: 'lorem ipsum',
      open: 'Open Everday',
      time: '08.00 - 18.00',
      price: 'Free',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/tugu.jpeg',
      deskripsi: 'lorem ipsum',
      open: 'Open Everday',
      time: '08.00 - 16.00',
      price: 'Rp. 20.000',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/suroboyo.jpeg',
      deskripsi: 'lorem ipsum',
      open: 'Open Everday',
      time: '08.00 - 16.00',
      price: 'Rp. 20.000',
    ),
    TourismPlace(
      name: 'Kebun Bibit',
      location: 'Ngagel',
      imageAsset: 'assets/images/bibit.jpeg',
      deskripsi: 'kebun bibit yang berada di daerah ngagel',
      open: 'Open Everday',
      time: '08.00 - 16.00',
      price: 'Rp. 20.000',
    ),
    TourismPlace(
      name: 'Tugu Bambu',
      location: 'Surabaya',
      imageAsset: 'assets/images/bambu.jpeg',
      deskripsi: 'tugu bambu kuning',
      open: 'Open Everday',
      time: '08.00 - 16.00',
      price: 'Rp. 20.000',
    ),
    TourismPlace(
      name: 'Kapal',
      location: 'Surabaya',
      imageAsset: 'assets/images/kapal2.jpeg',
      deskripsi: 'perahu',
      open: 'Open Everday',
      time: '08.00 - 16.00',
      price: 'Rp. 20.000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget){
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value){
                  setState(() {
                    if(value!=null){
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
