import 'package:covid_19/covid19_dat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:covid_19/main.dart';
import 'dart:convert';

import 'package:xml/xml.dart';

void main() {
  final bookshelfXml = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <header>
        <resultCode>00</resultCode>
        <resultMsg>NORMAL SERVICE.</resultMsg>
    </header>
    <body>
        <items>
            <item>
                <accDefRate>1.8529613949</accDefRate>
                <accExamCnt>12156200</accExamCnt>
                <accExamCompCnt>11668133</accExamCompCnt>
                <careCnt>24565</careCnt>
                <clearCnt>189506</clearCnt>
                <createDt>2021-08-11 09:40:02.974</createDt>
                <deathCnt>2135</deathCnt>
                <decideCnt>216206</decideCnt>
                <examCnt>488067</examCnt>
                <resutlNegCnt>11451927</resutlNegCnt>
                <seq>600</seq>
                <stateDt>20210811</stateDt>
                <stateTime>00:00</stateTime>
                <updateDt>null</updateDt>
            </item>
            <item>
                <accDefRate>1.8373689396</accDefRate>
                <accExamCnt>12112086</accExamCnt>
                <accExamCompCnt>11646164</accExamCompCnt>
                <careCnt>24326</careCnt>
                <clearCnt>187523</clearCnt>
                <createDt>2021-08-10 09:37:53.03</createDt>
                <deathCnt>2134</deathCnt>
                <decideCnt>213983</decideCnt>
                <examCnt>465922</examCnt>
                <resutlNegCnt>11432181</resutlNegCnt>
                <seq>599</seq>
                <stateDt>20210810</stateDt>
                <stateTime>00:00</stateTime>
                <updateDt>2021-08-11 10:31:32.067</updateDt>
            </item>
        </items>
        <numOfRows>10</numOfRows>
        <pageNo>1</pageNo>
        <totalCount>2</totalCount>
    </body>
</response>''';


  test('코로나 통계', () {
    final document = XmlDocument.parse(bookshelfXml);
    final items = document.findAllElements('item');
    var covid19Statics = <covid19StaticsModel>[];
    items.forEach((node) {
      covid19Statics.add(covid19StaticsModel.fromXml(node));
     print(covid19Statics.length);
    });
     covid19Statics.forEach((covid19) {
       print('${covid19.stateDt} : ${covid19.decideCnt}');
     });
    });

}

class covid19StaticsModel {
  String? accDefRate;
  String? accExamCnt;
  String? accExamCompCnt;
  String? careCnt;
  String? clearCnt;
  String? createDt;
  String? deathCnt;
  String? decideCnt;
  String? examCnt;
  String? resutlNegCnt;
  String? seq;
  String? stateDt;
  String? stateTime;
  String? updateDt;

  covid19StaticsModel({
    this.accDefRate,
    this.accExamCnt,
    this.accExamCompCnt,
    this.careCnt,
    this.clearCnt,
    this.createDt,
    this.deathCnt,
    this.decideCnt,
    this.examCnt,
    this.resutlNegCnt,
    this.seq,
    this.stateDt,
    this.stateTime,
    this.updateDt,
  });

  factory covid19StaticsModel.fromXml(XmlElement xml){
    return covid19StaticsModel(
      accDefRate: xmlUtils.searchReult(xml, 'accDefRate'),
      accExamCnt :xmlUtils.searchReult(xml, 'accExamCnt'),
      accExamCompCnt :xmlUtils.searchReult(xml,'accExamCompCnt'),
      careCnt :xmlUtils.searchReult(xml, 'careCnt'),
      clearCnt :xmlUtils.searchReult(xml, 'clearCnt'),
      createDt :xmlUtils.searchReult(xml, 'createDt'),
      deathCnt :xmlUtils.searchReult(xml, 'deathCnt'),
      decideCnt :xmlUtils.searchReult(xml, 'decideCnt'),
      examCnt :xmlUtils.searchReult(xml, 'examCnt'),
      resutlNegCnt :xmlUtils.searchReult(xml, 'resutlNegCnt'),
      seq :xmlUtils.searchReult(xml, 'seq'),
      stateDt :xmlUtils.searchReult(xml, 'stateDt'),
      stateTime :xmlUtils.searchReult(xml, 'stateTime'),
      updateDt :xmlUtils.searchReult(xml, 'updateDt'),
    );
  }
}

class xmlUtils {
  static String searchReult(XmlElement xml, String key) {
    return xml
        .findAllElements(key)
        .map((e) => e.text)
        .isEmpty ? "" : xml
        .findAllElements(key)
        .map((e) => e.text)
        .first;
  }
}