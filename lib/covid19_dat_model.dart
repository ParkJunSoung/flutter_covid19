/// response : {"header":{"resultCode":"00","resultMsg":"NORMAL SERVICE."},"body":{"items":{"item":[{"accDefRate":"0.9047400106","accExamCnt":"1637844","accExamCompCnt":"1620355","careCnt":"663","clearCnt":"13729","createDt":"2020-08-11 10:28:37.37","deathCnt":"305","decideCnt":"14660","examCnt":"17489","resutlNegCnt":"1605695","seq":"227","stateDt":"20200811","stateTime":"00:00","updateDt":"2020-08-11 10:28:37.37"},{"accDefRate":"0.9073724476","accExamCnt":"1628303","accExamCompCnt":"1611907","careCnt":"651","clearCnt":"13658","createDt":"2020-08-10 10:37:49.49","deathCnt":"305","decideCnt":"14626","examCnt":"16396","resutlNegCnt":"1597281","seq":"226","stateDt":"20200810","stateTime":"00:00","updateDt":"2020-08-10 10:37:49.49"}]},"numOfRows":"10","pageNo":"1","totalCount":"2"}}

class Covid19DateModel {
  Response? _response;

  Response? get response => _response;

  Covid19DateModel({
      Response? response}){
    _response = response;
}

  Covid19DateModel.fromJson(dynamic json) {
    _response = json["response"] != null ? Response.fromJson(json["response"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_response != null) {
      map["response"] = _response?.toJson();
    }
    return map;
  }

}

/// header : {"resultCode":"00","resultMsg":"NORMAL SERVICE."}
/// body : {"items":{"item":[{"accDefRate":"0.9047400106","accExamCnt":"1637844","accExamCompCnt":"1620355","careCnt":"663","clearCnt":"13729","createDt":"2020-08-11 10:28:37.37","deathCnt":"305","decideCnt":"14660","examCnt":"17489","resutlNegCnt":"1605695","seq":"227","stateDt":"20200811","stateTime":"00:00","updateDt":"2020-08-11 10:28:37.37"},{"accDefRate":"0.9073724476","accExamCnt":"1628303","accExamCompCnt":"1611907","careCnt":"651","clearCnt":"13658","createDt":"2020-08-10 10:37:49.49","deathCnt":"305","decideCnt":"14626","examCnt":"16396","resutlNegCnt":"1597281","seq":"226","stateDt":"20200810","stateTime":"00:00","updateDt":"2020-08-10 10:37:49.49"}]},"numOfRows":"10","pageNo":"1","totalCount":"2"}

class Response {
  Header? _header;
  Body? _body;

  Header? get header => _header;
  Body? get body => _body;

  Response({
      Header? header, 
      Body? body}){
    _header = header;
    _body = body;
}

  Response.fromJson(dynamic json) {
    _header = json["header"] != null ? Header.fromJson(json["header"]) : null;
    _body = json["body"] != null ? Body.fromJson(json["body"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_header != null) {
      map["header"] = _header?.toJson();
    }
    if (_body != null) {
      map["body"] = _body?.toJson();
    }
    return map;
  }

}

/// items : {"item":[{"accDefRate":"0.9047400106","accExamCnt":"1637844","accExamCompCnt":"1620355","careCnt":"663","clearCnt":"13729","createDt":"2020-08-11 10:28:37.37","deathCnt":"305","decideCnt":"14660","examCnt":"17489","resutlNegCnt":"1605695","seq":"227","stateDt":"20200811","stateTime":"00:00","updateDt":"2020-08-11 10:28:37.37"},{"accDefRate":"0.9073724476","accExamCnt":"1628303","accExamCompCnt":"1611907","careCnt":"651","clearCnt":"13658","createDt":"2020-08-10 10:37:49.49","deathCnt":"305","decideCnt":"14626","examCnt":"16396","resutlNegCnt":"1597281","seq":"226","stateDt":"20200810","stateTime":"00:00","updateDt":"2020-08-10 10:37:49.49"}]}
/// numOfRows : "10"
/// pageNo : "1"
/// totalCount : "2"

class Body {
  Items? _items;
  String? _numOfRows;
  String? _pageNo;
  String? _totalCount;

  Items? get items => _items;
  String? get numOfRows => _numOfRows;
  String? get pageNo => _pageNo;
  String? get totalCount => _totalCount;

  Body({
      Items? items, 
      String? numOfRows, 
      String? pageNo, 
      String? totalCount}){
    _items = items;
    _numOfRows = numOfRows;
    _pageNo = pageNo;
    _totalCount = totalCount;
}

  Body.fromJson(dynamic json) {
    _items = json["items"] != null ? Items.fromJson(json["items"]) : null;
    _numOfRows = json["numOfRows"];
    _pageNo = json["pageNo"];
    _totalCount = json["totalCount"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_items != null) {
      map["items"] = _items?.toJson();
    }
    map["numOfRows"] = _numOfRows;
    map["pageNo"] = _pageNo;
    map["totalCount"] = _totalCount;
    return map;
  }

}

/// item : [{"accDefRate":"0.9047400106","accExamCnt":"1637844","accExamCompCnt":"1620355","careCnt":"663","clearCnt":"13729","createDt":"2020-08-11 10:28:37.37","deathCnt":"305","decideCnt":"14660","examCnt":"17489","resutlNegCnt":"1605695","seq":"227","stateDt":"20200811","stateTime":"00:00","updateDt":"2020-08-11 10:28:37.37"},{"accDefRate":"0.9073724476","accExamCnt":"1628303","accExamCompCnt":"1611907","careCnt":"651","clearCnt":"13658","createDt":"2020-08-10 10:37:49.49","deathCnt":"305","decideCnt":"14626","examCnt":"16396","resutlNegCnt":"1597281","seq":"226","stateDt":"20200810","stateTime":"00:00","updateDt":"2020-08-10 10:37:49.49"}]

class Items {
  List<Item>? _item;

  List<Item>? get item => _item;

  Items({
      List<Item>? item}){
    _item = item;
}

  Items.fromJson(dynamic json) {
    if (json["item"] != null) {
      _item = [];
      json["item"].forEach((v) {
        _item?.add(Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_item != null) {
      map["item"] = _item?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// accDefRate : "0.9047400106"
/// accExamCnt : "1637844"
/// accExamCompCnt : "1620355"
/// careCnt : "663"
/// clearCnt : "13729"
/// createDt : "2020-08-11 10:28:37.37"
/// deathCnt : "305"
/// decideCnt : "14660"
/// examCnt : "17489"
/// resutlNegCnt : "1605695"
/// seq : "227"
/// stateDt : "20200811"
/// stateTime : "00:00"
/// updateDt : "2020-08-11 10:28:37.37"

class Item {
  String? _accDefRate;
  String? _accExamCnt;
  String? _accExamCompCnt;
  String? _careCnt;
  String? _clearCnt;
  String? _createDt;
  String? _deathCnt;
  String? _decideCnt;
  String? _examCnt;
  String? _resutlNegCnt;
  String? _seq;
  String? _stateDt;
  String? _stateTime;
  String? _updateDt;

  String? get accDefRate => _accDefRate;
  String? get accExamCnt => _accExamCnt;
  String? get accExamCompCnt => _accExamCompCnt;
  String? get careCnt => _careCnt;
  String? get clearCnt => _clearCnt;
  String? get createDt => _createDt;
  String? get deathCnt => _deathCnt;
  String? get decideCnt => _decideCnt;
  String? get examCnt => _examCnt;
  String? get resutlNegCnt => _resutlNegCnt;
  String? get seq => _seq;
  String? get stateDt => _stateDt;
  String? get stateTime => _stateTime;
  String? get updateDt => _updateDt;

  Item({
      String? accDefRate, 
      String? accExamCnt, 
      String? accExamCompCnt, 
      String? careCnt, 
      String? clearCnt, 
      String? createDt, 
      String? deathCnt, 
      String? decideCnt, 
      String? examCnt, 
      String? resutlNegCnt, 
      String? seq, 
      String? stateDt, 
      String? stateTime, 
      String? updateDt}){
    _accDefRate = accDefRate;
    _accExamCnt = accExamCnt;
    _accExamCompCnt = accExamCompCnt;
    _careCnt = careCnt;
    _clearCnt = clearCnt;
    _createDt = createDt;
    _deathCnt = deathCnt;
    _decideCnt = decideCnt;
    _examCnt = examCnt;
    _resutlNegCnt = resutlNegCnt;
    _seq = seq;
    _stateDt = stateDt;
    _stateTime = stateTime;
    _updateDt = updateDt;
}

  Item.fromJson(dynamic json) {
    _accDefRate = json["accDefRate"];
    _accExamCnt = json["accExamCnt"];
    _accExamCompCnt = json["accExamCompCnt"];
    _careCnt = json["careCnt"];
    _clearCnt = json["clearCnt"];
    _createDt = json["createDt"];
    _deathCnt = json["deathCnt"];
    _decideCnt = json["decideCnt"];
    _examCnt = json["examCnt"];
    _resutlNegCnt = json["resutlNegCnt"];
    _seq = json["seq"];
    _stateDt = json["stateDt"];
    _stateTime = json["stateTime"];
    _updateDt = json["updateDt"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["accDefRate"] = _accDefRate;
    map["accExamCnt"] = _accExamCnt;
    map["accExamCompCnt"] = _accExamCompCnt;
    map["careCnt"] = _careCnt;
    map["clearCnt"] = _clearCnt;
    map["createDt"] = _createDt;
    map["deathCnt"] = _deathCnt;
    map["decideCnt"] = _decideCnt;
    map["examCnt"] = _examCnt;
    map["resutlNegCnt"] = _resutlNegCnt;
    map["seq"] = _seq;
    map["stateDt"] = _stateDt;
    map["stateTime"] = _stateTime;
    map["updateDt"] = _updateDt;
    return map;
  }

}

/// resultCode : "00"
/// resultMsg : "NORMAL SERVICE."

class Header {
  String? _resultCode;
  String? _resultMsg;

  String? get resultCode => _resultCode;
  String? get resultMsg => _resultMsg;

  Header({
      String? resultCode, 
      String? resultMsg}){
    _resultCode = resultCode;
    _resultMsg = resultMsg;
}

  Header.fromJson(dynamic json) {
    _resultCode = json["resultCode"];
    _resultMsg = json["resultMsg"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["resultCode"] = _resultCode;
    map["resultMsg"] = _resultMsg;
    return map;
  }

}