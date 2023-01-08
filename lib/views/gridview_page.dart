import 'package:flutter/material.dart';
class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  // const GridViewPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("About GridView Widget"),
      ),
      body: const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
        child: MyCustomGridView(),
      ),
    );
  }

  // State<StatefulWidget> createState() => InitState();
}
class MyCustomGridView extends StatelessWidget {
  const MyCustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.8,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      children: List.generate(50, (index) {
        return DemoItemCard(
          coverImgPath: 'https://picsum.photos/200?image=$index',
          title: 'Macbook pro 2023',
        );
      }),
    );
  }
}

class DemoItemCard extends StatelessWidget {
  const DemoItemCard({
    Key? key,
    required this.title,
    required this.coverImgPath,
  }) : super(key: key);

  final String title;
  final String coverImgPath; // https://picsum.photos/200/300

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(coverImgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 100,
                ),
                // add favorite icon
                Positioned(
                  top: -5,
                  right: 5,
                  child: IconButton(
                    onPressed: () {
                      print('Favorite');
                    },

                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,

                    ),
                  ),
                ),
                //add to wishlist icon
                Positioned(
                  top: 5,
                  left: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
                // transparent container
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.0), // transparent
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(title),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  '\$ 100',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // discount
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    '10% off',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Description
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consecrate disciplining elite, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}