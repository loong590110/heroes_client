class HomeItem {
  final String cover;
  final String avatar;
  final String title;
  final String author;
  final String duration;
  final String date;
  final int watched;

  HomeItem(
      {this.cover,
      this.avatar,
      this.title,
      this.author,
      this.duration,
      this.watched,
      this.date});
}

List<HomeItem> fetchHomeList() {
  return [
    for (int i = 0; i < 1000; i++)
      if (i % 2 == 0)
        HomeItem(
            cover:
                'https://i.ytimg.com/an_webp/ACdraZRANaU/mqdefault_6s.webp?du=3000&sqp=COrE1_YF&rs=AOn4CLAUwtA7djj-8c9a8R6S7tfXg3abBg',
            avatar:
                'https://yt3.ggpht.com/a-/AOh14Gi9VfjJiYooUQ6CMlO1Ulw02dQN9cEfYWF8=s68-c-k-c0x00ffffff-no-rj-mo',
            title: "eBook Online Book Reading App - Flutter UI - Speed Code",
            author: "flutter",
            duration: "1:26:06",
            watched: 73630,
            date: "1个月前")
      else if (i % 2 == 1)
        HomeItem(
            cover:
                'https://i.ytimg.com/an_webp/FCyoHclCqc8/mqdefault_6s.webp?du=3000&sqp=CNC51_YF&rs=AOn4CLBgF_sIhN9V-xLAnPcfXCdoxStL9w',
            avatar:
                'https://yt3.ggpht.com/a-/AOh14Ghe-enl4XqtZ2U-FocaqVc9uQ0dTplYgupyQA=s68-c-k-c0x00ffffff-no-rj-mo',
            title: "Draggable (Flutter Widget of the Week)",
            author: "flutter.dev",
            duration: "17:06",
            watched: 1020500,
            date: "2周以前")
  ];
}
