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

  String get watchedAndDate => watched > 100000
      ? "${watched / 100000}万次观看 • $date"
      : "$watched次观看 • $date";
}

List<HomeItem> fetchHomeList() {
  return [
    for (int i = 0; i < 1000; i++)
      if (i % 2 == 0)
        HomeItem(
            cover:
                'https://dss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1827386007,1763487904&fm=58&s=75927F974A324E9EE2BBB54C030070F0',
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
                'https://dss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=596138266,858760027&fm=58&s=3ABD75845622875B0EC9C887030070CA',
            avatar: 'https://img3.doubanio.com/icon/u216234476-1.jpg',
            title: "Draggable (Flutter Widget of the Week)",
            author: "flutter.dev",
            duration: "17:06",
            watched: 1020500,
            date: "2周以前")
  ];
}
