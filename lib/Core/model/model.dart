class Model {
  late String title;
  late String subtitle;
  late String image;
  late String time;
  late String cal;

  Model({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.time,
    required this.cal,
  });
}

final List data = <Model>[
  Model(
    title: 'Body Building',
    subtitle: 'Full body workout',
    image:
        'https://cdn.pixabay.com/photo/2016/03/27/07/08/man-1282232_960_720.jpg',
    time: '35',
    cal: '120',
  ),
  Model(
    title: 'Six Pack',
    subtitle: 'Full body workout',
    image:
        'https://cdn.pixabay.com/photo/2016/03/27/07/08/man-1282232_960_720.jpg',
    time: '20',
    cal: '300',
  ),
  Model(
    title: 'Biseps Muscles',
    subtitle: 'Full body workout',
    image:
        'https://cdn.pixabay.com/photo/2016/03/27/07/08/man-1282232_960_720.jpg',
    time: '35',
    cal: '120',
  ),
];
