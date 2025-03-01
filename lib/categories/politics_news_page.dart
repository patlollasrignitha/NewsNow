import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';

class PoliticsNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Politics News'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 1,
          itemCount: politicsNews.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                launch(politicsNews[index].newsUrl);
              },
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.network(
                        politicsNews[index].imageUrl,
                        fit: BoxFit.cover,
                        height: 150.0,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        politicsNews[index].title,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
      ),
    );
  }
}

class NewsItem {
  final String title;
  final String imageUrl;
  final String newsUrl;

  NewsItem({
    required this.title,
    required this.imageUrl,
    required this.newsUrl,
  });
}

final List<NewsItem> politicsNews = [
  NewsItem(
    title: 'PM Modi in Jammu, will inaugurate the worlds highest railway bridge',
    imageUrl: 'https://images.indianexpress.com/2024/02/pm-modi-2.jpg?w=640',
    newsUrl: 'https://indianexpress.com/article/political-pulse/pm-modi-jammu-inaugurate-worlds-highest-railway-bridge-9170232/',
  ),
  NewsItem(
    title: 'In Kamal Nath, BJP sees a chance to strike deep at Congress heart, and pocket',
    imageUrl: 'https://images.indianexpress.com/2024/02/kamal-nath-cong-1.jpg?w=640',
    newsUrl: 'https://indianexpress.com/article/political-pulse/in-kamal-nath-bjp-sees-a-chance-to-strike-deep-at-congress-heart-and-pocket-9167144/',
  ),
  NewsItem(
    title: 'Rahul Gandhi visits Kashi Vishwanath, maintains silence on Gyanvapi',
    imageUrl: 'https://images.indianexpress.com/2024/02/Rahul_0ac31e.jpg?w=640',
    newsUrl: 'https://indianexpress.com/article/political-pulse/rahul-gandhi-bharat-jodo-yatra-modi-constituency-varanasi-up-9167050/',
  ),
  NewsItem(
    title: 'In fresh jolt to INDIA, Akhilesh skips Rahul Yatra in Amethi as SP raises seat-sharing heat on Cong',
    imageUrl: 'https://images.indianexpress.com/2024/02/akhilesh_de1efc.jpg?w=640',
    newsUrl: 'https://indianexpress.com/article/political-pulse/india-akhilesh-rahul-yatra-amethi-raebareli-seat-sharing-9169278/',
  ),
  NewsItem(
    title: 'New TN Cong chief K Selvaperunthagai: Tamil nationalism to Dalit activism to Kharges pick',
    imageUrl: 'https://images.indianexpress.com/2024/02/feb-45.jpg?w=640',
    newsUrl: 'https://indianexpress.com/article/political-pulse/tamil-nadu-congress-chief-selvaperunthagai-dalit-activism-kharge-chief-9167996/',
  ),
];

void main() {
  runApp(MaterialApp(
    home: PoliticsNewsPage(),
  ));
}
