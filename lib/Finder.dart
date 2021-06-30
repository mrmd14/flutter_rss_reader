  
import 'package:flutter/material.dart';
import './SPRK_default_preset_name_custom1.dart';
import './Rss_reader.dart';





class Finder{

  
  Future<dynamic> Find_in_news( dynamic news,String key) async{
    key = key.toLowerCase();
    List<RSS_item> res  = new List<RSS_item>();
    for(var val in news ){
      
    if(val.item.title.toLowerCase().contains(key) ){
      res.add(val);
     
    }

  }

  return res;

  }


  Future<dynamic> Find_in_sites( dynamic news,String key) async{
    key = key.toLowerCase();
    List<RSS_item> res  = new List<RSS_item>();
    for(var val in news ){
      
    if(val.site_title.toLowerCase().contains(key) ){
      res.add(val);
     
    }

  }

  return res;

  }

}




/*
void main()  async {
 RSS_reader rss_reader  = new RSS_reader();
  List<site> sites = new List<site>();
  Finder finder = new Finder();

  sites.add( site( 'www.varzesh3.com', 'Varzesh3' ));
  sites.add( site ( 'www.wordpress.org', 'wordpress' ) );
 // sites.add( site ( 'www.zoomg.ir', 'Zoomg' ) );
  var res = await  rss_reader.Get_items(sites);
   print("FINDING   " + "استقلال in news ");
 var find_res = await finder.Find_in_news(res,"استقلال");
 
  for(var val in find_res ){
    print('********Site:' + val.site_title + '****Date' +  val.item.pubDate.toString() );
    print(val.item.title);
    print('\n\n');
  }
  print("FINDING   " + "wordpress in sites ");

  var find_site = await finder.Find_in_sites(res,"wordpress");
 
  for(var val in find_site ){
    print('********Site:' + val.site_title + '****Date' +  val.item.pubDate.toString() );
    print(val.item.title);
    print('\n\n');
  }



  
}
*/

