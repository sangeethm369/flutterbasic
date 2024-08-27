import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
  String imag,star,price,itemName,subItemName;
  ItemDetail(this.imag,this.star,this.price, this.itemName,this.subItemName,{super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(height: 400,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.imag),fit: BoxFit.fill)),),
            ),
            Positioned(bottom: 0,left: 0,right: 0,
              child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [Icon(Icons.star,color: Colors.deepOrange,),Text("  ${widget.star}  ",style: TextStyle(color: Colors.white),)],),
                          ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(onPressed: (){
                                  setState(() {
                                    total--;
                                  });
                                }, icon: Icon(Icons.minimize)),
                                Text("${total}"),
                                IconButton(onPressed: (){
                                  setState(() {
                                    total++;
                                  });
                                }, icon: Icon(Icons.add)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                    
                  ],
                  
                  ),
                ),
              ))
        
            
          ],
        ),
      ),
    );
  }
}
