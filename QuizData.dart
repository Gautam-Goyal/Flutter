import 'package:flutter/material.dart';

class Quiz{
  var questions=[
    "Which function finds out the Variable type in Python ?",
    "Which keyword defines function in Python ?",
    "Which function print data in Python ?",
    "What is the correct file extension for Python files?",
    "Which method can be used to remove any whitespace from both the beginning and the end of a string?"
  ];

  var options=[{"a":"typedef","b":"typeof","c":"type","d":"find"},
    {"a":"func","b":"def","c":"void","d":"function"},
    {"a":"cout","b": "print", "c":"println","d":"stderr"},
    {"a":".pt","b":".p","c":"pyth","d":".py"},
    {"a":"trim()","b":"ptrim()","c":"len()","d":"strip()"}];

  // ignore: equal_keys_in_map
  var answers=["type","def","print",".py","trim()"];
}