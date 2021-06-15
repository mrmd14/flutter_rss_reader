import 'main.dart';
import 'package:localstorage/localstorage.dart';
import './Rss_reader.dart';

import 'package:webfeed/webfeed.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

const String SITE_ITEM_KEY = "siteKey";
const String SITE_FILE_KEY = "siteFileKey";

const String ARCH_ITEM_KEY = "ArchKey";
const String ARCH_FILE_KEY = "ArchFileKey";






class printData {
  bool ready = true;
  Future<void> PData(SaveData saver) async {
    ready = false;
    saver.getData();
    ready = await saver.storage.ready;
    print(ready);
    print('getttinnnnnnnnnnnnnnnnng dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
   // sites = saver.list.items;
  }
}

class site {
  String siteAdress;
  String siteDescription;

  site({this.siteAdress, this.siteDescription}) {
    //numberOfSites++;
  }

  toJSONEncodable() {
    Map<String, String> m = new Map();

    m['siteAdress'] = siteAdress;
    m['siteDescription'] = siteDescription;

    return m;
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class siteList {
  List<site> items = [];
 

  toJSONEncodable() {
    return items.map((item) {
      return item.toJSONEncodable();
    }).toList();
  }
}

class newsList {
   List<RSS_item> items = [];
 

  toJSONEncodable() {
    return items.map((item) {
      return item.toJSONEncodable();
    }).toList();
  }
}

class SaveData {
  final siteList list = new siteList();
  final newsList news_list = new newsList();
  String Key  = 'Key';
  final LocalStorage storage =  new LocalStorage('key') ;
  bool ready = true;
  



  SaveData(String key){
    this.Key = key;
  final  storage  =   new LocalStorage(key);
  }
  void saveToStorage(String _key) {
    if(_key == SITE_ITEM_KEY){
    storage.setItem(_key, list.toJSONEncodable());
    }
    else {
      storage.setItem(_key, news_list.toJSONEncodable());
    }
  }




  RssItem read_rss_from_map(var m){
    return new RssItem( title: m['title'] , link:m['link']
    , pubDate:DateTime.parse(m['pubDate']) );
  }

  Future<void> getNewsData() async {
    ready = false;
    ready = await storage.ready;

    var res_list = storage.getItem(ARCH_ITEM_KEY);
   
   
    news_list.items = List<RSS_item>.from(
      (res_list as List).map(
        (item) => RSS_item(
           read_rss_from_map(item),
          item['site_title'],
        ),
      ),
    );

    
  
  }
      


  Future<void> getData() async {
    ready = false;
    ready = await storage.ready;

    var res_list = storage.getItem(SITE_ITEM_KEY);

    list.items = List<site>.from(
      (res_list as List).map(
        (item) => site(
          siteAdress: item['siteAdress'],
          siteDescription: item['siteDescription'],
        ),
      ),
    );
  }
}

