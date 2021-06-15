
import 'package:flutter/material.dart';
import './Rss_reader.dart';
import './fileFunctions.dart' as FileFunction;
import 'package:webfeed/webfeed.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ArchiveSaver{


    Future<void> Add(RSS_item item) async{
     var archSaver =     FileFunction.SaveData(FileFunction.ARCH_FILE_KEY);
    archSaver.getNewsData();
    var  ready = await archSaver.storage.ready;
  

   archSaver.news_list.items.add(item);
   archSaver.saveToStorage(FileFunction.ARCH_ITEM_KEY);
     ready = await archSaver.storage.ready;
     return;

    }


    Future<List<RSS_item>> ReadItems() async{
    var archSaver =     FileFunction.SaveData(FileFunction.ARCH_FILE_KEY);
    archSaver.getNewsData();
    var  ready = await archSaver.storage.ready;
  

     return  archSaver.news_list.items;

    }


}

/*
void main()  async {


    //SAVE EXAMPLE 

   var archSaver =     FileFunction.SaveData(FileFunction.ARCH_FILE_KEY);
  // archSaver.storage.clear();
   ArchiveSaver arsave = new ArchiveSaver();
   arsave.Add( RSS_item( RssItem(title : 'news title' ,pubDate : DateTime.now()  ) , 'Site ' ));


    // READ EXAMPLE 
   var res = await arsave.ReadItems();
   for (var val in res ){
     print(val.item.title);
   }

  }
  




*/
