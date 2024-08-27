import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterbasic/item_detail.dart';

class Catogary extends StatefulWidget {
  const Catogary({super.key});

  @override
  State<Catogary> createState() => _CatogaryState();
}

class _CatogaryState extends State<Catogary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Favorite"),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
                  height: 160,width: 120,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetail("https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?size=626&ext=jpg&ga=GA1.1.237311014.1723722920&semt=ais_hybrid", "5.0", "15", "Cheese Burger", "Fresh Patty"),));
                      },
                        child: Container(height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage("https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?size=626&ext=jpg&ga=GA1.1.237311014.1723722920&semt=ais_hybrid"),fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Cheese Burger",style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text("Fresh patty",style: TextStyle(color: const Color.fromARGB(211, 255, 255, 255),fontSize: 12)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0,right: 5),
                        child: Row(children: [
                          Row(
                            children: [
                              for(int i=0;i<5;i++)
                              Icon(Icons.star,color: Colors.deepOrange,size: 10,)
                            ],
                          ),Spacer(),
                          Text("\$15.00",style: TextStyle(color: Colors.white,fontSize: 11))
                        ],),
                      )
                
                    ],
                  ),
                  ),Spacer(),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
                  height: 160,width: 120,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage("https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?size=626&ext=jpg&ga=GA1.1.237311014.1723722920&semt=ais_hybrid"),fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Latina Pasta",style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text("Fresh Vegetables",style: TextStyle(color: const Color.fromARGB(211, 255, 255, 255),fontSize: 12)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0,right: 5),
                        child: Row(children: [
                          Row(
                            children: [
                              for(int i=0;i<5;i++)
                              Icon(Icons.star,color: Colors.deepOrange,size: 10,)
                            ],
                          ),Spacer(),
                          Text("\$12.00",style: TextStyle(color: Colors.white,fontSize: 11))
                        ],),
                      )
                
                    ],
                  ),
                  ),
              ],
            ),SizedBox(height: 10,),
            Row(
              children: [
                Text("More restaurents"),Spacer(),
                Text("See all",style: TextStyle(color: Color.fromARGB(255, 179, 104, 6)),)
              ],
            ),
            SizedBox(height: 10,),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
              child: Row(
                children: [
                  Container(margin: EdgeInsets.all(8),
                    height: 60,width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Colors.black,image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/view-delicious-burger-with-buns-cheese_23-2150887905.jpg?ga=GA1.1.237311014.1723722920&semt=ais_hybrid"),fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Burger Queen"),
                        RatingBar.builder(
                          itemCount: 5,
                          itemSize: 15,
                          unratedColor: Color.fromARGB(139, 255, 81, 29),
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          initialRating: 4.5,
                          itemBuilder: (context, index) => Icon(Icons.star,color: Colors.deepOrange,), 
                          onRatingUpdate: (rating){
                    
                          }),
                          Text("2,2 km")
                      ],
                    ),
                  ),Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Container(
                      height: 60,width: 60,
                      child: Center(child: Text("\$12.00",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                      ),
                  ),
              ],
              ),
              
            ),
            SizedBox(height: 10,),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
              child: Row(
                children: [
                  Container(margin: EdgeInsets.all(8),
                    height: 60,width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Colors.black,image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/vertical-shot-delicious-pizza-black-surface_181624-56212.jpg?ga=GA1.1.237311014.1723722920&semt=ais_hybrid"),fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Delicious Pizza"),
                        RatingBar.builder(
                          itemCount: 4,
                          itemSize: 15,
                          unratedColor: Color.fromARGB(139, 255, 81, 29),
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          initialRating: 4,
                          itemBuilder: (context, index) => Icon(Icons.star,color: Colors.deepOrange,), 
                          onRatingUpdate: (rating){
                    
                          }),
                          Text("3,1 km")
                      ],
                    ),
                  ),Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Container(
                      height: 60,width: 60,
                      child: Center(child: Text("\$14.00",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                      ),
                  ),
              ],
              ),
              
            )
        ],
      ),
    );
  }
}