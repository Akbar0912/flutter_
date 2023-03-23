import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:project2_layout_part2/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier {
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

  void complate(TourismPlace place, bool isDone) {
    isDone
        ? _doneTourismPlaceList.add(place)
        : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}
