// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return NotificationData(
    notification: json['notification'] == null
        ? null
        : FcmNotification.fromJson(
            json['notification'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    data: json['data'] == null
        ? null
        : FcmData.fromJson(json['data'] as Map<String, dynamic>),
    to: json['to'] as String,
  );
}

Map<String, dynamic> _$NotificationDataToJson(NotificationData instance) =>
    <String, dynamic>{
      'notification': instance.notification,
      'priority': instance.priority,
      'data': instance.data,
      'to': instance.to,
    };

FcmData _$FcmDataFromJson(Map<String, dynamic> json) {
  return FcmData(
    clickAction: json['clickAction'] as String,
    id: json['id'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$FcmDataToJson(FcmData instance) => <String, dynamic>{
      'clickAction': instance.clickAction,
      'id': instance.id,
      'status': instance.status,
    };

FcmNotification _$FcmNotificationFromJson(Map<String, dynamic> json) {
  return FcmNotification(
    body: json['body'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$FcmNotificationToJson(FcmNotification instance) =>
    <String, dynamic>{
      'body': instance.body,
      'title': instance.title,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://fcm.googleapis.com';
  }

  final Dio _dio;

  String baseUrl;

  @override
  createNotification(task) async {
    ArgumentError.checkNotNull(task, 'task');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(task?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result =
        await _dio.request('/fcm/send',
            queryParameters: queryParameters,
            options: RequestOptions(
                method: 'POST',
                headers: <String, dynamic>{
                  r'Content-Type': 'application/json',
                  r'Authorization':
                      'key=AAAAxe4Gu-k:APA91bGrvPYJ5k6954gPvj6N6RqosDhzzfD9c56-qjMPqF8S5DHr2mbfeFg1MSf0L9o8cKr73UsA7zxnwMtyWqXvkq0ufxRiH3hAXKaXMmNvesZls2XK6oSHCi8akWFTerDG94VfGq40'
                },
                extra: _extra,
                contentType: 'application/json',
                baseUrl: baseUrl),
            data: _data);
    final value = NotificationData.fromJson(_result.data);
    return value;
  }
}
