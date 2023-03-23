class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String deskripsi;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.deskripsi,
  });
}


var tourismPlaceList = [
  TourismPlace(
    name: 'Surabaya Submarine Monument',
    location: 'Jl Pemuda',
    imageAsset: 'assets/images/kapal.jpeg',
    deskripsi: 'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the indonesian Navy at the building beside the submarine.',
  ),
  TourismPlace(
    name: 'Kelenteng Sanggar Agung',
    location: 'Kenjeran',
    imageAsset: 'assets/images/klenteng.jpeg',
    deskripsi: 'Kelenteng Sanggar Agung juga menyediakan acara perayaan tradisional Tionghoa seperti Cap Go Meh dan Imlek yang dapat menjadi pengalaman yang unik bagi para wisatawan. Selain itu, di sekitar kelenteng terdapat banyak pedagang yang menjual berbagai barang tradisional Tionghoa seperti kue keranjang dan lukisan Tionghoa yang dapat menjadi oleh-oleh bagi para wisatawan.',
  ),
  TourismPlace(
    name: 'House of Sampoerna',
    location: 'Krembangan Utara',
    imageAsset: 'assets/images/sampoerna.jpeg',
    deskripsi: 'lorem ipsum',
  ),
  TourismPlace(
    name: 'Tugu Pahlawan',
    location: 'Alun-alun contong',
    imageAsset: 'assets/images/tugu.jpeg',
    deskripsi: 'lorem ipsum',
  ),
  TourismPlace(
    name: 'Patung Suro Boyo',
    location: 'Wonokromo',
    imageAsset: 'assets/images/suroboyo.jpeg',
    deskripsi: 'lorem ipsum',
  ),
  TourismPlace(
      name: 'Kebun Bibit',
      location: 'Ngagel',
      imageAsset: 'assets/images/bibit.jpeg',
      deskripsi: 'kebun bibit yang berada di daerah ngagel',
  ),
  TourismPlace(
      name: 'Tugu Bambu',
      location: 'Surabaya',
      imageAsset: 'assets/images/bambu.jpeg',
      deskripsi: 'tugu bambu kuning',
  ),
  TourismPlace(
    name: 'Kapal',
    location: 'Surabaya',
    imageAsset: 'assets/images/kapal2.jpeg',
    deskripsi: 'perahu',
  ),
];

