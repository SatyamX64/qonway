import 'package:flutter/material.dart';
import 'package:qonway/data/models/models.dart';

class PostCard extends StatelessWidget {
  PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final double px = (constraints.maxHeight - 24) / 900;

      return Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 25 * px),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12 * px),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(3.0, 3.0),
                blurRadius: 8),
          ],
        ),
        child: Column(
          children: [
            _userInfo(px),
            _topic(px),
            _question(px),
            _votes(px),
            _options(px),
            Container(
              color: Colors.white,
              height: 63 * px,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/icons/chat.png'),
                  ),
                  Text(
                    '${post.comments.length} Comments',
                    style: TextStyle(
                      fontSize: 12 * px * 1.44,
                      color: Color(0xFF999999),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/icons/whatsapp.png'),
                  ),
                  Text(
                    'Share on WhatsApp',
                    style: TextStyle(
                      fontSize: 12 * px * 1.44,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Container _options(double px) {
    return Container(
      height: 225 * px,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _optionButton(px, post.poll.options[0]),
          _optionButton(px, post.poll.options[1]),
          _optionButton(px, post.poll.options[2]),
          _optionButton(px, post.poll.options[3]),
        ],
      ),
    );
  }

  Container _votes(double px) {
    return Container(
      height: 27 * px,
      alignment: Alignment.center,
      child: Row(
        children: [
          Text(
            '14 Votes',
            style:
                TextStyle(fontSize: 12 * px * 1.44, color: Color(0xFF999999)),
          ),
          Text(
            ' • ${post.poll.timeLeft}',
            style:
                TextStyle(fontSize: 12 * px * 1.44, color: Color(0xFF999999)),
          )
        ],
      ),
    );
  }

  Container _question(double px) {
    return Container(
      height: 90 * px,
      alignment: Alignment.center,
      child: Text(
        post.poll.question,
        style: TextStyle(color: Colors.black, fontSize: 14 * px * 1.44),
      ),
    );
  }

  Container _topic(double px) {
    return Container(
      color: Colors.yellow,
      height: 405 * px,
      child: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: Image.asset(
              'assets/images/${post.topic.thumbnail}',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Spacer(),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  padding: EdgeInsets.all(8 * px),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  child: Text(
                    post.topic.title,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14 * px * 1.44,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _optionButton(double px, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 45 * px,
        width: double.maxFinite,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color(0xFFEDF0F3), borderRadius: BorderRadius.circular(4)),
        padding: EdgeInsets.only(left: 12),
        child: Text(text, style: TextStyle(fontSize: 16 * px * 1.44)),
      ),
    );
  }

  Container _userInfo(double px) {
    return Container(
      height: 90 * px,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10 * px),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage:
                  ExactAssetImage('assets/images/${post.user.image}'),
            ),
          ),
          SizedBox(
            width: 4 * px,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: TextStyle(
                  color: Color(0xFF2C363F),
                  fontSize: 16.0 * px * 1.44,
                ),
              ),
              Text(
                post.date,
                style: TextStyle(
                  color: Color(0xFF2C363F),
                  fontSize: 12 * px * 1.44,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
