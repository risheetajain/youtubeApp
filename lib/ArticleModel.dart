class Article {
  String link;
  Title title;
  int featuredMedia;
  BetterFeaturedImage betterFeaturedImage;

  Article(
      {this.link, this.title, this.featuredMedia, this.betterFeaturedImage});

  Article.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    featuredMedia = json['featured_media'];
    betterFeaturedImage = json['better_featured_image'] != null
        ? new BetterFeaturedImage.fromJson(json['better_featured_image'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    data['featured_media'] = this.featuredMedia;
    if (this.betterFeaturedImage != null) {
      data['better_featured_image'] = this.betterFeaturedImage.toJson();
    }
    return data;
  }
}

class Title {
  String rendered;

  Title({this.rendered});

  Title.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}

class BetterFeaturedImage {
  MediaDetails mediaDetails;

  BetterFeaturedImage({this.mediaDetails});

  BetterFeaturedImage.fromJson(Map<String, dynamic> json) {
    mediaDetails = json['media_details'] != null
        ? new MediaDetails.fromJson(json['media_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mediaDetails != null) {
      data['media_details'] = this.mediaDetails.toJson();
    }
    return data;
  }
}

class MediaDetails {
  Sizes sizes;

  MediaDetails({this.sizes});

  MediaDetails.fromJson(Map<String, dynamic> json) {
    sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sizes != null) {
      data['sizes'] = this.sizes.toJson();
    }
    return data;
  }
}

class Sizes {
  Medium medium;

  Sizes({this.medium});

  Sizes.fromJson(Map<String, dynamic> json) {
    medium =
    json['medium'] != null ? new Medium.fromJson(json['medium']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.medium != null) {
      data['medium'] = this.medium.toJson();
    }
    return data;
  }
}

class Medium {
  String sourceUrl;

  Medium({this.sourceUrl});

  Medium.fromJson(Map<String, dynamic> json) {
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source_url'] = this.sourceUrl;
    return data;
  }
}
