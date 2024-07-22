import 'package:flutter/material.dart';

class Discription extends StatelessWidget {
  const Discription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('discription Page'),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Container(
              height: 195,
              width: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/discription.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.download_outlined),
                  Icon(Icons.bookmark_add_outlined),
                  Icon(Icons.favorite_border_outlined),
                  Icon(Icons.photo_filter),
                  Icon(Icons.star_border),
                  Icon(Icons.share),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.bookmark_add_outlined),
                const Text('1034'),
                const SizedBox(width: 10),
                //
                const Icon(Icons.heart_broken_outlined),
                const Text('1034'),
                const SizedBox(width: 10),

                //
                Container(
                  height: 30,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 173, 169, 169),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.lightBlue,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.lightBlue,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.lightBlue,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 112, 198, 238),
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("3.5")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Actors Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Indian Actress'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.lock_clock),
                    Text(
                      '  Duration  20 Mins',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.wallet),
                    Text("  Total Average Fees Rs.9,999"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis varius metus, id malesuada odio eleifend a. Nulla facilisi. Vivamus vehicula lacus vitae massa condimentum, id luctus tortor vehicula. Donec auctor varius nunc, vel cursus nulla efficitur eu. Quisque sed condimentum est. Integer eu pellentesque nisl. Duis a risus ac enim,'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
