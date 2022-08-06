import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({required this.imageAssetPath,required this.title,required this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel(title: '', desc: '', imageAssetPath: '');

  //1
  sliderModel.setDesc("يمكنك البحث عن نوع العقار الذي تحتاجه");
  sliderModel.setTitle("بحث");
  sliderModel.setImageAssetPath("assets/illustration.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(title: '', desc: '', imageAssetPath: '');

  //2
  sliderModel.setDesc("يمكنك ايضا ان تتواصل مع مالك العقار مباشره");
  sliderModel.setTitle("كيفيه التواصل");
  sliderModel.setImageAssetPath("assets/illustration2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(title: '', desc: '', imageAssetPath: '');

  //3
  sliderModel.setDesc("يمكنك رفع عقارك بكل سهوله وذلك عن طريق فتح حساب داخل التطبيق");
  sliderModel.setTitle("رفع عقار");
  sliderModel.setImageAssetPath("assets/illustration3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(title: '', desc: '', imageAssetPath: '');

  return slides;
}