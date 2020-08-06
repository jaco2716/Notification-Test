

//To generate file type:"flutter pub run build_runner build" in terminal

import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:notification_test/retrofit/apiValues.dart';
import 'package:retrofit/retrofit.dart';


part 'api_client.g.dart';

@RestApi(baseUrl: ApiValues.baseURL)
abstract class RestClient {



  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/fcm/send")
  @Headers(<String, dynamic>{
      "Content-Type" : "application/json",
      'Authorization': 'key=${ApiValues.serverToken}',
  })
  Future<NotificationData> createNotification(@Body() NotificationData task);
}

@JsonSerializable()
class NotificationData {
  FcmNotification notification;
  String priority;
  FcmData data;
  String to;

  NotificationData({this.notification, this.priority, this.data, this.to});

  factory NotificationData.fromJson(Map<String, dynamic> json) => _$NotificationDataFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationDataToJson(this);
}

@JsonSerializable()
class FcmData {
  String clickAction;
  String id;
  String status;

  FcmData({this.clickAction, this.id, this.status});

  factory FcmData.fromJson(Map<String, dynamic> json) => _$FcmDataFromJson(json);
  Map<String, dynamic> toJson() => _$FcmDataToJson(this);

  


  }

@JsonSerializable()
class FcmNotification {
  String body;
  String title;

  FcmNotification({this.body, this.title});

  factory FcmNotification.fromJson(Map<String, dynamic> json) => _$FcmNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$FcmNotificationToJson(this);

  


  }