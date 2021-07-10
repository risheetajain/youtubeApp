class YoutubeList {
  String _kind;
  String _etag;
  String _nextPageToken;
  String _regionCode;
  PageInfo _pageInfo;
  List<Items> _items;

  YoutubeList({String kind, String etag, String nextPageToken, String regionCode, PageInfo pageInfo, List<Items> items}) {
    this._kind = kind;
    this._etag = etag;
    this._nextPageToken = nextPageToken;
    this._regionCode = regionCode;
    this._pageInfo = pageInfo;
    this._items = items;
  }

  String get kind => _kind;
  set kind(String kind) => _kind = kind;
  String get etag => _etag;
  set etag(String etag) => _etag = etag;
  String get nextPageToken => _nextPageToken;
  set nextPageToken(String nextPageToken) => _nextPageToken = nextPageToken;
  String get regionCode => _regionCode;
  set regionCode(String regionCode) => _regionCode = regionCode;
  PageInfo get pageInfo => _pageInfo;
  set pageInfo(PageInfo pageInfo) => _pageInfo = pageInfo;
  List<Items> get items => _items;
  set items(List<Items> items) => _items = items;

  YoutubeList.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _etag = json['etag'];
    _nextPageToken = json['nextPageToken'];
    _regionCode = json['regionCode'];
    _pageInfo = json['pageInfo'] != null ? new PageInfo.fromJson(json['pageInfo']) : null;
    if (json['items'] != null) {
      _items = new List<Items>();
      json['items'].forEach((v) { _items.add(new Items.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this._kind;
    data['etag'] = this._etag;
    data['nextPageToken'] = this._nextPageToken;
    data['regionCode'] = this._regionCode;
    if (this._pageInfo != null) {
      data['pageInfo'] = this._pageInfo.toJson();
    }
    if (this._items != null) {
      data['items'] = this._items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PageInfo {
  int _totalResults;
  int _resultsPerPage;

  PageInfo({int totalResults, int resultsPerPage}) {
    this._totalResults = totalResults;
    this._resultsPerPage = resultsPerPage;
  }

  int get totalResults => _totalResults;
  set totalResults(int totalResults) => _totalResults = totalResults;
  int get resultsPerPage => _resultsPerPage;
  set resultsPerPage(int resultsPerPage) => _resultsPerPage = resultsPerPage;

  PageInfo.fromJson(Map<String, dynamic> json) {
    _totalResults = json['totalResults'];
    _resultsPerPage = json['resultsPerPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalResults'] = this._totalResults;
    data['resultsPerPage'] = this._resultsPerPage;
    return data;
  }
}

class Items {
  String _kind;
  String _etag;
  Id _id;
  Snippet _snippet;

  Items({String kind, String etag, Id id, Snippet snippet}) {
    this._kind = kind;
    this._etag = etag;
    this._id = id;
    this._snippet = snippet;
  }

  String get kind => _kind;
  set kind(String kind) => _kind = kind;
  String get etag => _etag;
  set etag(String etag) => _etag = etag;
  Id get id => _id;
  set id(Id id) => _id = id;
  Snippet get snippet => _snippet;
  set snippet(Snippet snippet) => _snippet = snippet;

  Items.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _etag = json['etag'];
    _id = json['id'] != null ? new Id.fromJson(json['id']) : null;
    _snippet = json['snippet'] != null ? new Snippet.fromJson(json['snippet']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this._kind;
    data['etag'] = this._etag;
    if (this._id != null) {
      data['id'] = this._id.toJson();
    }
    if (this._snippet != null) {
      data['snippet'] = this._snippet.toJson();
    }
    return data;
  }
}

class Id {
  String _kind;
  String _videoId;

  Id({String kind, String videoId}) {
    this._kind = kind;
    this._videoId = videoId;
  }

  String get kind => _kind;
  set kind(String kind) => _kind = kind;
  String get videoId => _videoId;
  set videoId(String videoId) => _videoId = videoId;

  Id.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _videoId = json['videoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this._kind;
    data['videoId'] = this._videoId;
    return data;
  }
}

class Snippet {
  String _publishedAt;
  String _channelId;
  String _title;
  String _description;
  Thumbnails _thumbnails;
  String _channelTitle;
  String _liveBroadcastContent;
  String _publishTime;

  Snippet({String publishedAt, String channelId, String title, String description, Thumbnails thumbnails, String channelTitle, String liveBroadcastContent, String publishTime}) {
    this._publishedAt = publishedAt;
    this._channelId = channelId;
    this._title = title;
    this._description = description;
    this._thumbnails = thumbnails;
    this._channelTitle = channelTitle;
    this._liveBroadcastContent = liveBroadcastContent;
    this._publishTime = publishTime;
  }

  String get publishedAt => _publishedAt;
  set publishedAt(String publishedAt) => _publishedAt = publishedAt;
  String get channelId => _channelId;
  set channelId(String channelId) => _channelId = channelId;
  String get title => _title;
  set title(String title) => _title = title;
  String get description => _description;
  set description(String description) => _description = description;
  Thumbnails get thumbnails => _thumbnails;
  set thumbnails(Thumbnails thumbnails) => _thumbnails = thumbnails;
  String get channelTitle => _channelTitle;
  set channelTitle(String channelTitle) => _channelTitle = channelTitle;
  String get liveBroadcastContent => _liveBroadcastContent;
  set liveBroadcastContent(String liveBroadcastContent) => _liveBroadcastContent = liveBroadcastContent;
  String get publishTime => _publishTime;
  set publishTime(String publishTime) => _publishTime = publishTime;

  Snippet.fromJson(Map<String, dynamic> json) {
    _publishedAt = json['publishedAt'];
    _channelId = json['channelId'];
    _title = json['title'];
    _description = json['description'];
    _thumbnails = json['thumbnails'] != null ? new Thumbnails.fromJson(json['thumbnails']) : null;
    _channelTitle = json['channelTitle'];
    _liveBroadcastContent = json['liveBroadcastContent'];
    _publishTime = json['publishTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['publishedAt'] = this._publishedAt;
    data['channelId'] = this._channelId;
    data['title'] = this._title;
    data['description'] = this._description;
    if (this._thumbnails != null) {
      data['thumbnails'] = this._thumbnails.toJson();
    }
    data['channelTitle'] = this._channelTitle;
    data['liveBroadcastContent'] = this._liveBroadcastContent;
    data['publishTime'] = this._publishTime;
    return data;
  }
}

class Thumbnails {
  Default _default;
  Default _medium;
  Default _high;

  Thumbnails({Default default1, Default medium, Default high}) {
    this._default = default1;
    this._medium = medium;
    this._high = high;
  }

  Default get default1 => _default;
  set default1(Default default1) => _default = default1;
  Default get medium => _medium;
  set medium(Default medium) => _medium = medium;
  Default get high => _high;
  set high(Default high) => _high = high;

  Thumbnails.fromJson(Map<String, dynamic> json) {
    _default = json['default'] != null ? new Default.fromJson(json['default']) : null;
    _medium = json['medium'] != null ? new Default.fromJson(json['medium']) : null;
    _high = json['high'] != null ? new Default.fromJson(json['high']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._default != null) {
      data['default'] = this._default.toJson();
    }
    if (this._medium != null) {
      data['medium'] = this._medium.toJson();
    }
    if (this._high != null) {
      data['high'] = this._high.toJson();
    }
    return data;
  }
}

class Default {
  String _url;
  int _width;
  int _height;

  Default({String url, int width, int height}) {
    this._url = url;
    this._width = width;
    this._height = height;
  }

  String get url => _url;
  set url(String url) => _url = url;
  int get width => _width;
  set width(int width) => _width = width;
  int get height => _height;
  set height(int height) => _height = height;

  Default.fromJson(Map<String, dynamic> json) {
    _url = json['url'];
    _width = json['width'];
    _height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this._url;
    data['width'] = this._width;
    data['height'] = this._height;
    return data;
  }
}



