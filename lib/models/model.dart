class ImageData {
  final String image;

  const ImageData({this.image});
}

class DiscoverData {
  final String title, items;
  final String image;

  const DiscoverData({this.items, this.title, this.image});
}

const discoverData = [
  DiscoverData(
      image: 'assets/images/chair1.png', items: '1128 items', title: 'Chairs'),
  DiscoverData(
      image: 'assets/images/table1.png', items: '522 items', title: 'Tables'),
  DiscoverData(
      image: 'assets/images/sofa.png', items: '1624 items', title: 'Sofas'),
  DiscoverData(
      image: 'assets/images/lamp.png', items: '454 items', title: 'Lamps'),
  // 'assets/images/chair1.png',
  // 'assets/images/table1.png',
  // 'assets/images/sofa.png',
];

class TrendingData {
  final String title, price;
  final String image;

  const TrendingData({this.title, this.price, this.image});
}

const treandingData = [
  TrendingData(
      image: 'assets/images/chair1.png',
      price: '\$29.00',
      title: 'Comfortable cusion chair'),
  TrendingData(
      image: 'assets/images/chair2.png',
      price: '\$29.00',
      title: 'Long Neck chair'),
  TrendingData(
      image: 'assets/images/chair3.png',
      price: '\$29.00',
      title: 'Wooden Crissross chair'),
];

class CollecData {
  final String title, sub;
  final String image;

  const CollecData({this.sub, this.title, this.image});
}

const collectionData = [
  CollecData(
      image: 'assets/images/lamp2.png',
      title: 'New Arrivals\nWinter',
      sub: 'Collection'),
  CollecData(
      image: 'assets/images/chair2.png',
      title: 'New Arrivals\nWinter',
      sub: 'Collection'),
  CollecData(
      image: 'assets/images/sofa.png',
      title: 'New Arrivals\nWinter',
      sub: 'Collection'),
];

const bestSellingData = [
  TrendingData(
      image: 'assets/images/chair4.png',
      price: '\$29.00',
      title: 'Wooden Comfy Chair'),
  TrendingData(
      image: 'assets/images/chair5.png',
      price: '\$29.00',
      title: 'Comfortable cusion chair'),
  TrendingData(
      image: 'assets/images/chair6.png',
      price: '\$29.00',
      title: 'Wooden chair'),
];
