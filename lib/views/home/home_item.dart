import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heroes_client/models/home_list.dart';

class HomeItemWidget extends AspectRatio {
  HomeItemWidget(
      int gridCount, HomeItem item, double itemRatio, double coverRatio)
      : super(
            aspectRatio: itemRatio,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  margin: EdgeInsets.only(bottom: 5),
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: coverRatio,
                        child: Image.network(
                          item.cover,
                          scale: 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: coverRatio,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                            child: Text(
                              item.duration,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(item.avatar),
                      backgroundColor: Colors.grey,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                item.title,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black87),
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                              gridCount > 1
                                  ? item.author
                                  : "${item.author} • ${item.watchedAndDate}",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black45),
                              maxLines: 1,
                            ),
                            if (gridCount > 1)
                              Text(
                                item.watchedAndDate,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black45),
                                maxLines: 1,
                              ),
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ));
}
