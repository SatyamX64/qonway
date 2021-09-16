import 'package:flutter/material.dart';
import 'package:qonway/data/models/models.dart';
import 'package:qonway/data/source/data_source.dart';
import 'package:qonway/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: FutureBuilder(
        future: context.read<DataSource>().getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final posts = snapshot.data as List<Post>;
            return Center(
              child: CardCarousel(
                aspectRatio: 5.5 / 9,
                height: size.height * 0.8,
                width: size.width,
                viewport: orientation == Orientation.portrait ? 1 : 0.33,
                enlargeCenterPage: true,
                children: [1, 2, 3, 4, 5]
                    .map(
                      (item) => PostCard(post: posts[0]),
                    )
                    .toList(),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Something went wrong :/'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
