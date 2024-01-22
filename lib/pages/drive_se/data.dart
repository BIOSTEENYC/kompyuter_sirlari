import 'package:flutter/material.dart';
import 'database.dart';
//Disk managment oynasining asosiy qismlari ushbu widgetda joylashgan
class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  //bu database.dart faylidagi ro'yxatni o'qiydi
  final List<DataItem> dataList = Database.getData();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _loadMoreItems();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  void _loadMoreItems() {
    setState(() {
      // Elementlarni dataListga qo'shing
      dataList.addAll(dataList);
    });
  }

  @override
  Widget build(BuildContext context) {
    //ro'xat, Ro'yxatniKo'rish.quruvchi. orqali ko'rsatadi.
    return ListView.builder(
      controller: _scrollController,
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return FittedBox(
          fit: BoxFit.fitWidth,
          child: Column(
            children: <Widget>[
              Text(dataList[index].text),
              InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return Dialog(
                        child: AspectRatio(
                          aspectRatio: 3/4,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset('assets/${dataList[index].image}',fit: BoxFit.fitWidth,),
                              Positioned(
                                bottom: 10,right: 10,
                                child: MaterialButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  color: Colors.red,
                                  child: Row(children: [Text("yopish",style: TextStyle(color: Colors.white),),Icon(Icons.close,color: Colors.white,)],),),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
                  },
                  child: Image.asset('assets/${dataList[index].image}',width: MediaQuery.of(context).size.width/2,)),
            ],
          ),
        );
      },
    );
  }
}