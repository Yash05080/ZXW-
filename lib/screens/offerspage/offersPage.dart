import 'package:flutter/material.dart';

class Offerspage extends StatelessWidget {
  // List of offers
  final List<String> offerImages = [
    "assets/images/image2.jpg",
    "assets/images/image4.avif",
    "assets/images/image1.jpeg",
    "assets/images/image5.jpeg",
    "assets/images/image3.jpg",
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: offerImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two items per row
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.75, // Adjust the ratio as needed
          ),
          itemBuilder: (context, index) {
            return OfferItem(imagePath: offerImages[index]);
          },
        ),
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  final String imagePath;

  OfferItem({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle offer tap
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.6),
                  child: Text(
                    'Special Offer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
