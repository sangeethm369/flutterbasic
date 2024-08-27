import 'package:flutter/material.dart';
import 'package:flutterbasic/catogary.dart';

class HomePg extends StatefulWidget {
  const HomePg({super.key});

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> with SingleTickerProviderStateMixin{
late TabController _tabController;
  @override
  void initState() {
    _tabController=TabController(length: 3, vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        
      });
    }
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0,left: 15),
        child: ListView(
          children: [
            SizedBox(height: 30,),
            Text("Hello Gavriel,"),
            Text("Welcome back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(hintText: "Search",prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 179, 104, 6),),filled: true,fillColor: Colors.white,border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none)),
            ),
            SizedBox(height: 10,),
            TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color.fromARGB(153, 112, 111, 111),
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  indicator: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),color: Color.fromARGB(255, 211, 120, 0)),
                    tabs: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("🍔 Fast food"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("🥗 Health food"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("🍇 Fruit"),
                          ),
                          ]),
                          SizedBox(height: 10,),
                Center(
                  child: [
                    Catogary(),
                    Container(),
                    Container(),
                  ][_tabController.index],
                )
                    

          ],
        ),
      ),
    );
  }
}