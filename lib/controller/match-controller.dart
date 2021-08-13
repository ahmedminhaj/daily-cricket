import 'dart:ffi';

import 'package:daily_cricket/service/remote-service.dart';
import 'package:get/state_manager.dart';
import 'package:daily_cricket/model/match.dart';

class MatchController extends GetxController{
  var matchList = List<Item>().obs;
  var internationalMatches = List<Item>().obs;
  var domesticMatches = List<Item>().obs;

  @override
    void onInit() {
      // TODO: implement onInit
      fetchMatches();
      super.onInit();
    }

  void fetchMatches() async{
    var matches = await RemoteService.fetchMatchs();
    if(matches != null){
      matchList.value = matches.response.items;
    }
    // print(matchList.length);
    for(int i = 0;  i < matchList.length; i ++){
      if(matchList[i].competition.category == "international"){
        internationalMatches.add(matchList[i]) ;
      }
    }
    for(int i = 0;  i < matchList.length; i ++){
      if(matchList[i].competition.category == "domestic"){
        domesticMatches.add(matchList[i]) ;
      }
    }
    
  }
}