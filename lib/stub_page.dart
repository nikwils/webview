import 'package:flutter/material.dart';
import 'package:test_webview/news.dart';
import 'package:test_webview/news_provider.dart';

class StubPage extends StatelessWidget {
  const StubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mockdata = NewsProvider().fetchNews();

    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 20),
          itemCount: mockdata.length,
          itemBuilder: (BuildContext context, int i) {
            Article event = mockdata[i];
            return Card(
              key: ValueKey('card_key_$i'),
              child: Column(
                children: [
                  SizedBox(
                    child: Image.network(
                      (event.urlToImage).toString(),
                      height: 100,
                      width: 500.0,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
                          height: 170,
                          color: Colors.grey[300],
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                event.content,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
