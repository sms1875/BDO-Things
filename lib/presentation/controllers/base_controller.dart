import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

abstract class BaseController {
  final http.Client _client;
  BaseController(this._client);

  void dispose() {
    _client.close();
  }
}