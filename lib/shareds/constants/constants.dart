import 'dart:convert';

import 'package:crypto/crypto.dart';

String textToMD5(String text) {
  return md5.convert(utf8.encode(text)).toString();
}

final hashConvertido = textToMD5(HASH); //hash convertido para MD5

const BASE_URL = 'https://gateway.marvel.com:443/v1/public/';
const PUBLIC_KEY = '8575ace7dd18d1d498d750bf6cf53568'; //api key publica
const PRIVATE_KEY =
    '7192e86e20299ba59642030b66b3077ec3cf6c53'; //api key privada
const TS = '1'; //timestamp

const HASH = '$TS$PRIVATE_KEY$PUBLIC_KEY'; //hash
