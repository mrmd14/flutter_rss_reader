
import 'package:webfeed/webfeed.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;



class Pair<T1, T2> {
  final T1 a;
  final T2 b;

  Pair(this.a, this.b);
}


class site {
  String siteAdress;
  String siteDescription;

  site(this.siteAdress,this.siteDescription) {}

}



class RSS_item{
  RssItem  item;
  String site_title;

   RSS_item(_item, _site_title) {
     item  = _item;
     site_title = _site_title;  
   }

   toJSONEncodable() {
    Map<String, String> m = new Map();

    m['site_title'] = site_title;
    m['title'] = item.title;
    m['link'] = item.link;
    m['pubDate'] = item.pubDate.toString();



    return m;
  }

}



class RSS_reader{

  
  
 Future< String>  Get_response( String _url, String path) async {
   
   
   
    var  url =  Uri.http(_url, path);
  
      // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
   
  return response.body;
  } else {
      print('Request failed with status: ${response.statusCode}.');
    return '${response.statusCode}';
  }
  }



  Future<dynamic> Get_web_feed_items(String _rss_adr )  async{
     final uri = Uri.parse(_rss_adr);
      var raw = await Get_response(uri.host,uri.path); 
      var channel = RssFeed.parse(raw);
      return (channel.items);


  }


   


  String Get_rss(String _raw_html){
     String  Href =  'href="';
     var  index = _raw_html.indexOf('rss+xml"'); 
      if(index == -1){
        return '-1';
      }
      //found 
    var raw_cut  =    _raw_html.substring(index);
    var begin  =  raw_cut.indexOf(Href)  + Href.length ;
    var end = begin;
    while( end <raw_cut.length   && raw_cut[end] != '"' ) end = end + 1;
    return raw_cut.substring(begin,end   );
  }




  String get_title_from_raw(String _raw_html ){
    String title = '<title>';
    String end_title = '</title>';
     var  index = _raw_html.indexOf(title); 
      if(index == -1){
        return '-1';
      }
      
     return    _raw_html.substring( index  + title.length  , _raw_html.indexOf(end_title)   );


  }


  Future<String>  get_site_title(String adr) async {
      var raw = await Get_response(adr,''); 
      return  this.get_title_from_raw(raw) ;
  }




  Future<dynamic>  Get_website_rss_items(String add) async{
     var raw = await Get_response(add,''); 
      var rss_adr = this.Get_rss(raw) ;
     
      if(rss_adr != '-1' ){
       // return this.Get_web_feed_items(rss_adr);
       var feed_items = await Get_web_feed_items(rss_adr );
       return( feed_items);
      }
  }


  Future<dynamic>  Get_items(List<site> _adr_list) async{
          var res = List<dynamic>();
          
           for(var   site_adr  in _adr_list){
              var site_items = await Get_website_rss_items(site_adr.siteAdress);
              for(var item in  site_items   ){
              res.add(RSS_item(item,site_adr.siteDescription  )  );
              }
           }
           //sort res 
           res.sort(   (a,b) => b.item.pubDate.compareTo(a.item.pubDate)  );
           return res;
      }
  }








/*
void main()  async {
 RSS_reader rss_reader  = new RSS_reader();
  List<site> sites = new List<site>();

  sites.add( site( 'www.varzesh3.com', 'Varzesh3' ));
  sites.add( site ( 'www.wordpress.org', 'wordpress' ) );
  sites.add( site ( 'www.zoomg.ir', 'Zoomg' ) );
  var res = await  rss_reader.Get_items(sites);
  for(var val in res ){
    print('********Site:' + val.site_title + '****Date' +  val.item.pubDate.toString() );
    print(val.item.title);
    print('\n\n');
  }

  
}

*/



/*
void main()  async {
 RSS_reader rss_reader  = new RSS_reader();
  List<site> sites = new List<site>();

  sites.add( site( 'www.yjc.ir', 'YJC' ));
  sites.add( site ( 'www.wordpress.org', 'wordpress' ) );
  sites.add( site ( 'www.zoomg.ir', 'Zoomg' ) );

  for(var val in sites ){
      var res = await  rss_reader.get_site_title(val.siteAdress);
    print('********Site:' + res );
    print(val.siteAdress);
    print('\n\n');
  }

  
}
*/