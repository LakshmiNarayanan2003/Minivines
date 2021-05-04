import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:minivines/repository/fake_repository.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    _buildSearchContainer(sizingInformation),
                    SizedBox(
                      height: 15,
                    ),
                    _buildCarouselSlider(sizingInformation),
                    SizedBox(height: 15),
                    _buildTrendHeading(sizingInformation,
                        title: "Travel Diaries", descrition: "Trending"),
                    SizedBox(
                      height: 10,
                    ),
                    _buildListView(),
                    SizedBox(height: 20),
                    _buildTrendHeading(sizingInformation,
                        title: "PetFam", descrition: "Trending"),
                    SizedBox(
                      height: 10,
                    ),
                    _buildCandids(),
                    SizedBox(height: 20),
                    _buildTrendHeading(sizingInformation,
                        title: "Abstract", descrition: "Trending"),
                    SizedBox(
                      height: 10,
                    ),
                    _buildAbstract(),
                    SizedBox(height: 20),
                    _buildTrendHeading(sizingInformation,
                        title: "Architecture", descrition: "Trending"),
                    SizedBox(
                      height: 10,
                    ),
                    _buildArch(),
                    SizedBox(
                      height: 10,
                    ),
                    _buildTrendHeading(sizingInformation,
                        title: "Couple Goals", descrition: "Trending"),
                    SizedBox(
                      height: 10,
                    ),
                    _buildcouple(),
                    SizedBox(
                      height: 10,
                    ),
                    _buildTrendHeading(sizingInformation,
                        title: "Candids", descrition: "Trending"),
                    SizedBox(
                      height: 10,
                    ),
                    _buildcandidlist(),
                    SizedBox(height: 20),
                  ],
                )),
          ),
        );
      },
    );
  }

  Container _buildcandidlist() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.candidList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.network(FakeRepository.candidList[index]),
              ),
            );
          }),
    );
  }

  Container _buildcouple() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.couple.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.network(FakeRepository.couple[index]),
              ),
            );
          }),
    );
  }

  Container _buildListView() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.travel.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.network(FakeRepository.travel[index]),
              ),
            );
          }),
    );
  }

  Container _buildArch() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.arch.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.network(FakeRepository.arch[index]),
              ),
            );
          }),
    );
  }

  Container _buildCandids() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.candids.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.network(FakeRepository.candids[index]),
              ),
            );
          }),
    );
  }

  Container _buildAbstract() {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FakeRepository.abstract.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Image.network(FakeRepository.abstract[index]),
              ),
            );
          }),
    );
  }

  Container _buildTrendHeading(SizingInformation sizingInformation,
      {String title, String descrition, String range}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Text(
              "#",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print('Pressed');
                  },
                  child: Container(
                    width: sizingInformation.localWidgetSize.width * 0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(title),
//                      IconButton(
//                        padding: EdgeInsets.only(top: 0, bottom: 0, left: 100),
//                        color: Colors.transparent,
//                        icon: Icon(
//                          Icons.arrow_forward_ios,
//                          color: Colors.white,
//                          size: 12,
//                        ),
//                      ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 2.0),
                  child: Text(descrition),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildCarouselSlider(SizingInformation sizingInformation) {
    return Container(
      height: 150,
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 2.0,
          aspectRatio: 0.10,
          autoPlay: true,
          height: 150,
        ),
        items: FakeRepository.imageData.map((imageUlr) {
          return Image.network(
            imageUlr,
            fit: BoxFit.cover,
            width: sizingInformation.screenSize.width,
            loadingBuilder: (context, child, loading) {
              if (loading == null) return child;
              return Padding(
                padding: const EdgeInsets.all(60),
                child: FittedBox(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Container _buildSearchContainer(SizingInformation sizingInformation) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 45,
//            color: Colors.grey,
            width: sizingInformation.localWidgetSize.width * 0.88,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrange,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
