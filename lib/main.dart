import "package:flutter/material.dart";
import "package:quiz_app/container_home.dart";

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ContainerHome(),
      )
    )
  );
}