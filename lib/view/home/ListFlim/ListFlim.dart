import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> listFilm = [
  "https://play-lh.googleusercontent.com/5efxbApfVAa9R1fStcVvSHqDhyXI40jLCd78b2NEuqNcC0McWceLAQGYnz0rFKZz7lywTdKNzfsXidP97A",
  "https://toquoc.mediacdn.vn/280518851207290880/2024/4/3/the-grey-1-game4v-1709170292-12-17121193364821395429579.jpg",
  "https://image.bnews.vn/MediaUpload/Org/2024/04/22/lat-mat-20240422111713.jpg",
  "https://cdn.nguyenkimmall.com/images/companies/_1/tin-tuc/review/co-gi-tren-tivi-top-15-phim-bo-han-quoc-hut-fan-nhat-hien-nay-h1.jpg",
];

class ListFilm extends StatelessWidget {
  final String name;
  const ListFilm({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 20 , color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right:20.0),
              child: GestureDetector(
                onTap: () {
                  // Define what happens when 'See more' is tapped
                },
                child: Text(
                  "See All",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
        Scrollbar(
          trackVisibility: true,
          radius: Radius.circular(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListImg(),
          ),
        ),
      ],
    );
  }
}

class ListImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: listFilm.map((url) => buildFilmCard(url)).toList(),
    );
  }

  Widget buildFilmCard(String url) {
    return Padding(
      padding: EdgeInsets.only(right: 12,top: 5),
      child: Column(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Opacity(
                opacity: 1,
                child: Image.network(url, fit: BoxFit.cover),
              ),
            ),
          ),
          // Optional: Add a title or subtitle below the image
          Text(
            'Film Title',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
