class BlogViewModel {
  BlogView? blogView;

  BlogViewModel({this.blogView});

  BlogViewModel.fromJson(Map<String, dynamic> json) {
    blogView = json['BlogView'] != null
        ? new BlogView.fromJson(json['BlogView'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.blogView != null) {
      data['BlogView'] = this.blogView!.toJson();
    }
    return data;
  }
}

class BlogView {
  bool? autoPlay;
  String? aspectRatio;
  bool? enableInfiniteScroll;
  String? autoPlayAnimationDuration;
  int? viewportFraction;
  String? viewType;
  String? activeColor;
  String? colorDots;
  List<Items>? items;

  BlogView(
      {this.autoPlay,
      this.aspectRatio,
      this.enableInfiniteScroll,
      this.autoPlayAnimationDuration,
      this.viewportFraction,
      this.viewType,
      this.activeColor,
      this.colorDots,
      this.items});

  BlogView.fromJson(Map<String, dynamic> json) {
    autoPlay = json['AutoPlay'];
    aspectRatio = json['AspectRatio'];
    enableInfiniteScroll = json['EnableInfiniteScroll'];
    autoPlayAnimationDuration = json['AutoPlayAnimationDuration'];
    viewportFraction = json['ViewportFraction'];
    viewType = json['ViewType'];
    activeColor = json['ActiveColor'];
    colorDots = json['ColorDots'];
    if (json['Items'] != null) {
      items = <Items>[];
      json['Items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AutoPlay'] = this.autoPlay;
    data['AspectRatio'] = this.aspectRatio;
    data['EnableInfiniteScroll'] = this.enableInfiniteScroll;
    data['AutoPlayAnimationDuration'] = this.autoPlayAnimationDuration;
    data['ViewportFraction'] = this.viewportFraction;
    data['ViewType'] = this.viewType;
    data['ActiveColor'] = this.activeColor;
    data['ColorDots'] = this.colorDots;
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? title;
  String? description;
  String? date;
  String? imagePath;
  String? textTitleColor;
  String? textDescriptionColor;
  String? backgroundColor;

  Items(
      {this.title,
      this.description,
      this.date,
      this.imagePath,
      this.textTitleColor,
      this.textDescriptionColor,
      this.backgroundColor});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    description = json['Description'];
    date = json['Date'];
    imagePath = json['ImagePath'];
    textTitleColor = json['TextTitleColor'];
    textDescriptionColor = json['TextDescriptionColor'];
    backgroundColor = json['BackgroundColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Description'] = this.description;
    data['Date'] = this.date;
    data['ImagePath'] = this.imagePath;
    data['TextTitleColor'] = this.textTitleColor;
    data['TextDescriptionColor'] = this.textDescriptionColor;
    data['BackgroundColor'] = this.backgroundColor;
    return data;
  }
}