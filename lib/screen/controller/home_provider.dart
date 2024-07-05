
import 'dart:convert';

import 'package:api_pratice/screen/helper/home_helper.dart';
import 'package:api_pratice/screen/modal/home_modal.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier
{
  bool isLoading = false;
  late NewsModel newsModal;
  Future<void> fetchData()
  async {
    NewsApiServices newsApiServices = NewsApiServices();
    isLoading = true;
    notifyListeners();
    String? data = await newsApiServices.apiCalling();
    Map json = jsonDecode(data!);
    newsModal = NewsModel(json);
    notifyListeners();
    isLoading = false;
    notifyListeners();
  }

  NewsProvider()
  {
    fetchData();
  }

}
