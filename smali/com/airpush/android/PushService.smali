.class public Lcom/airpush/android/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/PushService$GetMessageTask;,
        Lcom/airpush/android/PushService$UserInfoTask;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x3e7

.field private static apikey:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static ctx:Landroid/content/Context;

.field private static icon:I

.field private static imei:Ljava/lang/String;

.field protected static testMode:Z

.field protected static type:Ljava/lang/String;


# instance fields
.field private Message:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private adType:Ljava/lang/String;

.field private alarmDeliveryMgr:Landroid/app/AlarmManager;

.field private am_pm:Ljava/lang/String;

.field private campId:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private deliveryDelay:J

.field private deliveryIntent:Landroid/content/Intent;

.field private delivery_time:Ljava/lang/String;

.field private doPush:Z

.field private doSearch:Z

.field private event:Ljava/lang/String;

.field private expiry_time:J

.field private header:Ljava/lang/String;

.field private hour:I

.field private hourstr:Ljava/lang/String;

.field private iconTestMode:Z

.field private id:I

.field private imageurl:Ljava/lang/String;

.field private interstitialTestmode:Z

.field private json:Lorg/json/JSONObject;

.field private link:Ljava/lang/String;

.field private minstr:Ljava/lang/String;

.field private minute:I

.field private nextMessageCheckValue:Ljava/lang/Long;

.field private notificationManager:Landroid/app/NotificationManager;

.field private number:Ljava/lang/String;

.field private pendingDeliveryIntent:Landroid/app/PendingIntent;

.field private phoneNumber:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private response:Lorg/apache/http/HttpEntity;

.field private s:Ljava/lang/String;

.field private send_Task:Ljava/lang/Runnable;

.field private sms:Ljava/lang/String;

.field private smsText:Ljava/lang/String;

.field private smsToNumber:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tray:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 59
    sput-object v0, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 78
    sput-object v0, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airpush/android/PushService;->testMode:Z

    .line 103
    const v0, 0x1080074

    sput v0, Lcom/airpush/android/PushService;->icon:I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/airpush/android/PushService;->tray:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/airpush/android/PushService;->url:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    .line 67
    const-string v0, "http://api.airpush.com/redirect.php?market="

    iput-object v0, p0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/airpush/android/PushService;->json:Lorg/json/JSONObject;

    .line 77
    iput-object v1, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/airpush/android/PushService;->pkg:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/airpush/android/PushService;->hourstr:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/airpush/android/PushService;->minstr:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/airpush/android/PushService;->am_pm:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    .line 468
    new-instance v0, Lcom/airpush/android/PushService$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushService$1;-><init>(Lcom/airpush/android/PushService;)V

    iput-object v0, p0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method private DeliverNotification()V
    .locals 26

    .prologue
    .line 1255
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->selectIcon()I

    move-result v20

    sput v20, Lcom/airpush/android/PushService;->icon:I

    .line 1259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "W"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1261
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1262
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 1269
    :cond_1
    :goto_0
    const-string v20, "settexttracking"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 1270
    const-string v20, "trayDelivered"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 1271
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "model"

    const-string v23, "log"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "APIKEY"

    sget-object v23, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "event"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    sget-boolean v20, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v20, :cond_2

    .line 1280
    const-string v20, "AirpushSDK"

    const-string v21, "Posting W&A received values."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 1283
    .local v11, is:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1285
    .local v4, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v5

    .local v5, ch:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_d

    .line 1288
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1289
    .local v15, s:Ljava/lang/String;
    const-string v20, "AirpushSDK"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "W&A Received : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    .end local v4           #b:Ljava/lang/StringBuffer;
    .end local v5           #ch:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_2
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1294
    const-string v21, "notification"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 1293
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1297
    .local v16, text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 1298
    .local v7, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 1299
    .local v6, contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1301
    .local v18, when:J
    new-instance v13, Landroid/app/Notification;

    sget v20, Lcom/airpush/android/PushService;->icon:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1305
    .local v13, notification:Landroid/app/Notification;
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1306
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1307
    const-string v21, "android.permission.VIBRATE"

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 1306
    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 1305
    if-nez v20, :cond_3

    .line 1309
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-wide/16 v22, 0x64

    aput-wide v22, v20, v21

    const/16 v21, 0x2

    const-wide/16 v22, 0xc8

    aput-wide v22, v20, v21

    const/16 v21, 0x3

    const-wide/16 v22, 0x12c

    aput-wide v22, v20, v21

    .line 1313
    :cond_3
    const/high16 v20, -0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledARGB:I

    .line 1314
    const/16 v20, 0x12c

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledOffMS:I

    .line 1315
    const/16 v20, 0x12c

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledOnMS:I

    .line 1318
    new-instance v17, Landroid/content/Intent;

    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v21, Lcom/airpush/android/PushAds;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1319
    .local v17, toLaunch:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1320
    const-string v20, "Web And App"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v21, "airpushNotificationPref"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1323
    .local v12, myNotificationPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1324
    .local v14, notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "appId"

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1325
    const-string v20, "apikey"

    sget-object v21, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1326
    const-string v20, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1327
    const-string v20, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1328
    const-string v20, "tray"

    const-string v21, "trayClicked"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1329
    const-string v20, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1330
    const-string v20, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1331
    const-string v20, "header"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1332
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1334
    const-string v20, "appId"

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    const-string v20, "apikey"

    sget-object v21, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const-string v20, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string v20, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v20, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const-string v20, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string v20, "tray"

    const-string v21, "trayClicked"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v20, "header"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v20, "testMode"

    sget-boolean v21, Lcom/airpush/android/PushService;->testMode:Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1344
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    .line 1345
    const/high16 v22, 0x1000

    .line 1343
    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1347
    .local v10, intentBack:Landroid/app/PendingIntent;
    iget v0, v13, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1348
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 1349
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v7, v6, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1351
    iput-object v10, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3e7

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1356
    const-string v20, "AirpushSDK"

    const-string v21, "W&A Notification Delivered."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    .end local v6           #contentText:Ljava/lang/CharSequence;
    .end local v7           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #intentBack:Landroid/app/PendingIntent;
    .end local v12           #myNotificationPrefs:Landroid/content/SharedPreferences;
    .end local v13           #notification:Landroid/app/Notification;
    .end local v14           #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #text1:Ljava/lang/CharSequence;
    .end local v17           #toLaunch:Landroid/content/Intent;
    .end local v18           #when:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "CM"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1361
    const-string v20, "settexttracking"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 1362
    const-string v20, "trayDelivered"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 1365
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "model"

    const-string v23, "log"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "APIKEY"

    sget-object v23, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "event"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    sget-boolean v20, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v20, :cond_5

    .line 1374
    const-string v20, "AirpushSDK"

    const-string v21, "Posting CM received values."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 1377
    .restart local v11       #is:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1379
    .restart local v4       #b:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v5

    .restart local v5       #ch:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_e

    .line 1382
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1383
    .restart local v15       #s:Ljava/lang/String;
    const-string v20, "AirpushSDK"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "CM Received : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .end local v4           #b:Ljava/lang/StringBuffer;
    .end local v5           #ch:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_5
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1389
    const-string v21, "notification"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 1388
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1392
    .restart local v16       #text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 1393
    .restart local v7       #contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 1394
    .restart local v6       #contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1395
    .restart local v18       #when:J
    new-instance v13, Landroid/app/Notification;

    sget v20, Lcom/airpush/android/PushService;->icon:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1398
    .restart local v13       #notification:Landroid/app/Notification;
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1399
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1400
    const-string v21, "android.permission.VIBRATE"

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 1399
    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 1398
    if-nez v20, :cond_6

    .line 1402
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-wide/16 v22, 0x64

    aput-wide v22, v20, v21

    const/16 v21, 0x2

    const-wide/16 v22, 0xc8

    aput-wide v22, v20, v21

    const/16 v21, 0x3

    const-wide/16 v22, 0x12c

    aput-wide v22, v20, v21

    .line 1406
    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1407
    const/high16 v20, -0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledARGB:I

    .line 1408
    const/16 v20, 0x12c

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledOffMS:I

    .line 1409
    const/16 v20, 0x12c

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledOnMS:I

    .line 1410
    new-instance v17, Landroid/content/Intent;

    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v21, Lcom/airpush/android/PushAds;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1411
    .restart local v17       #toLaunch:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1412
    const-string v20, "CM"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v21, "airpushNotificationPref"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1415
    .restart local v12       #myNotificationPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1416
    .restart local v14       #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "appId"

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1417
    const-string v20, "apikey"

    sget-object v21, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1418
    const-string v20, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1419
    const-string v20, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1420
    const-string v20, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1421
    const-string v20, "tray"

    const-string v21, "trayClicked"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1422
    const-string v20, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1423
    const-string v20, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1424
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1426
    const-string v20, "appId"

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const-string v20, "apikey"

    sget-object v21, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    const-string v20, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    const-string v20, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    const-string v20, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    const-string v20, "tray"

    const-string v21, "trayClicked"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v20, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v20, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const-string v20, "testMode"

    sget-boolean v21, Lcom/airpush/android/PushService;->testMode:Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1435
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1436
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    .line 1437
    const/high16 v22, 0x1000

    .line 1435
    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1438
    .restart local v10       #intentBack:Landroid/app/PendingIntent;
    iget v0, v13, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1439
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 1440
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v7, v6, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1442
    iput-object v10, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3e7

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1446
    const-string v20, "AirpushSDK"

    const-string v21, "Notification Delivered"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    .end local v6           #contentText:Ljava/lang/CharSequence;
    .end local v7           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #intentBack:Landroid/app/PendingIntent;
    .end local v12           #myNotificationPrefs:Landroid/content/SharedPreferences;
    .end local v13           #notification:Landroid/app/Notification;
    .end local v14           #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #text1:Ljava/lang/CharSequence;
    .end local v17           #toLaunch:Landroid/content/Intent;
    .end local v18           #when:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "CC"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1451
    const-string v20, "settexttracking"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 1452
    const-string v20, "trayDelivered"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 1455
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "model"

    const-string v23, "log"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "APIKEY"

    sget-object v23, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "event"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    sget-boolean v20, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v20, :cond_8

    .line 1464
    const-string v20, "AirpushSDK"

    const-string v21, "Posting CC received values."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 1467
    .restart local v11       #is:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1469
    .restart local v4       #b:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v5

    .restart local v5       #ch:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_f

    .line 1472
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1473
    .restart local v15       #s:Ljava/lang/String;
    const-string v20, "AirpushSDK"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "CC Received : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .end local v4           #b:Ljava/lang/StringBuffer;
    .end local v5           #ch:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_8
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1478
    const-string v21, "notification"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 1477
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1481
    .restart local v16       #text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 1482
    .restart local v7       #contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 1483
    .restart local v6       #contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1484
    .restart local v18       #when:J
    new-instance v13, Landroid/app/Notification;

    sget v20, Lcom/airpush/android/PushService;->icon:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1487
    .restart local v13       #notification:Landroid/app/Notification;
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1488
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1489
    const-string v21, "android.permission.VIBRATE"

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 1488
    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 1487
    if-nez v20, :cond_9

    .line 1491
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-wide/16 v22, 0x64

    aput-wide v22, v20, v21

    const/16 v21, 0x2

    const-wide/16 v22, 0xc8

    aput-wide v22, v20, v21

    const/16 v21, 0x3

    const-wide/16 v22, 0x12c

    aput-wide v22, v20, v21

    .line 1495
    :cond_9
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1496
    const/high16 v20, -0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledARGB:I

    .line 1497
    const/16 v20, 0x12c

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledOffMS:I

    .line 1498
    const/16 v20, 0x12c

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->ledOnMS:I

    .line 1501
    new-instance v17, Landroid/content/Intent;

    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v21, Lcom/airpush/android/PushAds;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1502
    .restart local v17       #toLaunch:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1503
    const-string v20, "CC"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v21, "airpushNotificationPref"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1505
    .restart local v12       #myNotificationPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1506
    .restart local v14       #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "appId"

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1507
    const-string v20, "apikey"

    sget-object v21, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1508
    const-string v20, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1509
    const-string v20, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1510
    const-string v20, "tray"

    const-string v21, "trayClicked"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1511
    const-string v20, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1512
    const-string v20, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1513
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1514
    const-string v20, "appId"

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const-string v20, "apikey"

    sget-object v21, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string v20, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1517
    const-string v20, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    const-string v20, "tray"

    const-string v21, "trayClicked"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    const-string v20, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    const-string v20, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    const-string v20, "testMode"

    sget-boolean v21, Lcom/airpush/android/PushService;->testMode:Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1522
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1523
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    .line 1524
    const/high16 v22, 0x1000

    .line 1522
    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1525
    .restart local v10       #intentBack:Landroid/app/PendingIntent;
    iget v0, v13, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->defaults:I

    .line 1526
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 1527
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v7, v6, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1529
    iput-object v10, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3e7

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1533
    const-string v20, "AirpushSDK"

    const-string v21, "Notification Delivered"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    .end local v6           #contentText:Ljava/lang/CharSequence;
    .end local v7           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #intentBack:Landroid/app/PendingIntent;
    .end local v12           #myNotificationPrefs:Landroid/content/SharedPreferences;
    .end local v13           #notification:Landroid/app/Notification;
    .end local v14           #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #text1:Ljava/lang/CharSequence;
    .end local v17           #toLaunch:Landroid/content/Intent;
    .end local v18           #when:J
    :cond_a
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1561
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 1562
    .local v9, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/PushService;->expiry_time:J

    move-wide/from16 v23, v0

    mul-long v21, v21, v23

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1565
    :goto_4
    return-void

    .line 1263
    .end local v9           #handler:Landroid/os/Handler;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "W"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1264
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->link:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1537
    :catch_0
    move-exception v8

    .line 1539
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v20, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v21, 0x1b7740

    invoke-static/range {v20 .. v22}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 1557
    const-string v20, "AirpushSDK"

    const-string v21, "EMessage Delivered"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1560
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1561
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 1562
    .restart local v9       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/PushService;->expiry_time:J

    move-wide/from16 v23, v0

    mul-long v21, v21, v23

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1265
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #handler:Landroid/os/Handler;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "W"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1267
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->link:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1559
    :catchall_0
    move-exception v20

    .line 1560
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1561
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 1562
    .restart local v9       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/PushService;->expiry_time:J

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1564
    throw v20

    .line 1286
    .end local v9           #handler:Landroid/os/Handler;
    .restart local v4       #b:Ljava/lang/StringBuffer;
    .restart local v5       #ch:I
    .restart local v11       #is:Ljava/io/InputStream;
    :cond_d
    int-to-char v0, v5

    move/from16 v20, v0

    :try_start_4
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1380
    :cond_e
    int-to-char v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1470
    :cond_f
    int-to-char v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3
.end method

.method static synthetic access$0(Lcom/airpush/android/PushService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/airpush/android/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/airpush/android/PushService;->startReciever()V

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/airpush/android/PushService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/airpush/android/PushService;->sendUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dateDiff(Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .parameter "datFrom"
    .parameter "datTo"

    .prologue
    .line 1232
    const-wide/16 v5, 0x0

    .line 1234
    .local v5, lan:J
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-mm-dd hh:mm:ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, datFromFormater:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1237
    .local v1, datFromObj:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-mm-dd hh:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v2, datToFormater:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1240
    .local v3, datToObj:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    sub-long v5, v7, v9

    .line 1248
    .end local v0           #datFromFormater:Ljava/text/SimpleDateFormat;
    .end local v1           #datFromObj:Ljava/util/Date;
    .end local v2           #datToFormater:Ljava/text/SimpleDateFormat;
    .end local v3           #datToObj:Ljava/util/Date;
    :goto_0
    return-wide v5

    .line 1242
    :catch_0
    move-exception v4

    .line 1244
    .local v4, e:Ljava/text/ParseException;
    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v8, 0x1b7740

    invoke-static {v7, v8, v9}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 1245
    const-string v7, "AirpushSDK"

    const-string v8, "Date Diff .....Failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAdType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 962
    const/4 v0, 0x0

    .line 964
    .local v0, adType:Ljava/lang/String;
    :try_start_0
    const-string v2, "adtype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 968
    :goto_0
    return-object v2

    .line 965
    :catch_0
    move-exception v1

    .line 966
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "invalid"

    goto :goto_0
.end method

.method private getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1111
    .local v0, campaignid:Ljava/lang/String;
    :try_start_0
    const-string v2, "campaignid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1132
    :goto_0
    return-object v2

    .line 1112
    :catch_0
    move-exception v1

    .line 1130
    .local v1, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getClicktoCallAds(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x0

    .line 831
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 832
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 833
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNumber(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 834
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 835
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 837
    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 838
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 840
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 841
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 844
    :cond_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    .line 845
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 846
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 847
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 848
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 849
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 848
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, format0:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 851
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, currentTime:Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 855
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/airpush/android/PushService;->dateDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J

    .line 862
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v1           #format0:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 865
    invoke-direct {p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 894
    :goto_1
    return-void

    .line 859
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v2

    .line 892
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto :goto_1

    .line 891
    :catchall_0
    move-exception v2

    .line 892
    iget-object v3, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 893
    throw v2
.end method

.method private getClicktoMessageAds(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x0

    .line 899
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 900
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 901
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNumber(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 902
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getSms(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    .line 903
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 904
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 906
    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 907
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 908
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 909
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 910
    :cond_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    .line 911
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 912
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 913
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 914
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 915
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 914
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, format0:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 917
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, currentTime:Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 920
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 921
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/airpush/android/PushService;->dateDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J

    .line 928
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v1           #format0:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 929
    invoke-direct {p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 959
    :goto_1
    return-void

    .line 925
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v2

    .line 957
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto :goto_1

    .line 956
    :catchall_0
    move-exception v2

    .line 957
    iget-object v3, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 958
    throw v2
.end method

.method private getCountryCode(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1072
    const/4 v0, 0x0

    .line 1074
    .local v0, countryCode:Ljava/lang/String;
    :try_start_0
    const-string v2, "countrycode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1078
    :goto_0
    return-object v2

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1084
    .local v0, creativeid:Ljava/lang/String;
    :try_start_0
    const-string v2, "creativeid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1105
    :goto_0
    return-object v2

    .line 1085
    :catch_0
    move-exception v1

    .line 1103
    .local v1, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getDataSharedprefrences()V
    .locals 4

    .prologue
    .line 1578
    :try_start_0
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v2, "dataPrefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1579
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v2, "dataPrefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1580
    .local v0, dataPrefs:Landroid/content/SharedPreferences;
    const-string v1, "appId"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 1581
    const-string v1, "apikey"

    const-string v2, "airpush"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 1582
    const-string v1, "imei"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 1583
    const-string v1, "testMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/airpush/android/PushService;->testMode:Z

    .line 1584
    const-string v1, "icon"

    const v2, 0x1080074

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/airpush/android/PushService;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1587
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1150
    const/4 v1, 0x0

    .line 1152
    .local v1, nextDeliveryTime:Ljava/lang/String;
    :try_start_0
    const-string v2, "delivery_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1156
    :goto_0
    return-object v2

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "0"

    goto :goto_0
.end method

.method private getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 4
    .parameter "json"

    .prologue
    .line 1170
    const/4 v1, 0x0

    .line 1172
    .local v1, expiryTime:Ljava/lang/Long;
    :try_start_0
    const-string v2, "expirytime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1176
    :goto_0
    return-object v2

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "86400000"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method private getHeader(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1190
    const/4 v1, 0x0

    .line 1192
    .local v1, head:Ljava/lang/String;
    :try_start_0
    const-string v2, "header"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1196
    :goto_0
    return-object v2

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "Advertisment"

    goto :goto_0
.end method

.method private getImage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1180
    const/4 v1, 0x0

    .line 1182
    .local v1, img:Ljava/lang/String;
    :try_start_0
    const-string v2, "adimage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1186
    :goto_0
    return-object v2

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "http://beta.airpush.com/images/adsthumbnail/48.png"

    goto :goto_0
.end method

.method private getMessageDetails(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1160
    const/4 v1, 0x0

    .line 1162
    .local v1, msg:Ljava/lang/String;
    :try_start_0
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1166
    :goto_0
    return-object v2

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "nothing"

    goto :goto_0
.end method

.method private getNextMessageCheckTime(Lorg/json/JSONObject;)J
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1137
    const-string v2, "300"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1140
    .local v1, nextMsgCheckTime:Ljava/lang/Long;
    :try_start_0
    const-string v2, "nextmessagecheck"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1146
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 1142
    :catch_0
    move-exception v0

    .line 1144
    .local v0, e:Ljava/lang/Exception;
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    goto :goto_0
.end method

.method private getNumber(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1018
    const/4 v1, 0x0

    .line 1020
    .local v1, number:Ljava/lang/String;
    :try_start_0
    const-string v2, "number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1041
    :goto_0
    return-object v2

    .line 1021
    :catch_0
    move-exception v0

    .line 1039
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "0"

    goto :goto_0
.end method

.method private getSms(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1045
    const/4 v1, 0x0

    .line 1047
    .local v1, sms:Ljava/lang/String;
    :try_start_0
    const-string v2, "sms"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1068
    :goto_0
    return-object v2

    .line 1048
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 981
    const/4 v1, 0x0

    .line 983
    .local v1, text:Ljava/lang/String;
    :try_start_0
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 987
    :goto_0
    return-object v2

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "Click here for details!"

    goto :goto_0
.end method

.method private getTitle(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 972
    const/4 v1, 0x0

    .line 974
    .local v1, title:Ljava/lang/String;
    :try_start_0
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 978
    :goto_0
    return-object v2

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "New Message"

    goto :goto_0
.end method

.method private getUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 991
    const/4 v1, 0x0

    .line 993
    .local v1, url:Ljava/lang/String;
    :try_start_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1014
    :goto_0
    return-object v2

    .line 994
    :catch_0
    move-exception v0

    .line 1012
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "nothing"

    goto :goto_0
.end method

.method private getWebAndAppAds(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x0

    .line 763
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 764
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 765
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 766
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 767
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getHeader(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    .line 768
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 770
    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 771
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 773
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 774
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    .line 778
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 779
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 780
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 781
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 782
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 781
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 783
    .local v1, format0:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 784
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, currentTime:Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 787
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/airpush/android/PushService;->dateDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J

    .line 797
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v1           #format0:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 827
    :goto_1
    return-void

    .line 793
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 802
    :catch_0
    move-exception v2

    .line 824
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto :goto_1

    .line 823
    :catchall_0
    move-exception v2

    .line 824
    iget-object v3, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 826
    throw v2
.end method

.method private resetAlarm(J)V
    .locals 9
    .parameter "resetTime"

    .prologue
    .line 1203
    :try_start_0
    invoke-static {}, Lcom/airpush/android/PushService;->getDataSharedprefrences()V

    .line 1204
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResetTime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-instance v8, Landroid/content/Intent;

    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v2, Lcom/airpush/android/MessageReceiver;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1208
    .local v8, messageIntent:Landroid/content/Intent;
    const-string v1, "SetMessageReceiver"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    const-string v1, "appId"

    sget-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v1, "apikey"

    sget-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    const-string v1, "imei"

    sget-object v2, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const-string v1, "testMode"

    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1213
    const-string v1, "doSearch"

    iget-boolean v2, p0, Lcom/airpush/android/PushService;->doSearch:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1214
    const-string v1, "doPush"

    iget-boolean v2, p0, Lcom/airpush/android/PushService;->doPush:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1216
    const-string v1, "icontestmode"

    iget-boolean v2, p0, Lcom/airpush/android/PushService;->iconTestMode:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1219
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1220
    .local v6, pendingMessageIntent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1222
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    sget-wide v4, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v6           #pendingMessageIntent:Landroid/app/PendingIntent;
    .end local v8           #messageIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v7

    .line 1226
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "AirpushSDK"

    const-string v2, "ResetAlarm Error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private selectIcon()I
    .locals 5

    .prologue
    .line 1567
    const v0, 0x1080074

    .line 1568
    .local v0, icon:I
    sget-object v1, Lcom/airpush/android/Constants;->icons:[I

    .line 1569
    .local v1, icons:[I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1570
    .local v3, rand:Ljava/util/Random;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1571
    .local v2, num:I
    aget v0, v1, v2

    .line 1573
    return v0
.end method

.method private sendUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "airpushAppid"
    .parameter "apikey"

    .prologue
    .line 553
    invoke-static {p1}, Lcom/airpush/android/Airpush;->isEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 556
    :try_start_0
    sget-object v6, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 557
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "model"

    const-string v9, "user"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "action"

    const-string v9, "setuserinfo"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "APIKEY"

    invoke-direct {v7, v8, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "type"

    const-string v9, "app"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 564
    .local v3, entity:Lorg/apache/http/HttpEntity;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 607
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    :goto_0
    return-void

    .line 567
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 568
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 570
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, s:Ljava/lang/String;
    const-string v6, "AirpushSDK"

    const-string v7, "User Info Sent."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendUserInfo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 584
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Activitymanager"

    const-string v7, "User Info Sending Failed....."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v6, "Activitymanager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v6, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v7, 0x1b7740

    invoke-static {v6, v7, v8}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_0

    .line 571
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    int-to-char v6, v1

    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 605
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_2
    const-string v6, "AirpushSDK"

    const-string v7, "Airpush is disabled, please enable to receive ads."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startReciever()V
    .locals 9

    .prologue
    .line 610
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Airpush;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 611
    const-string v5, "AirpushSDK"

    const-string v6, "Receiving......."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_0
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 615
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    const-string v8, "message"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "action"

    const-string v8, "getmessage"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "APIKEY"

    sget-object v8, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    sget-object v6, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 621
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    .line 623
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    sget-boolean v6, Lcom/airpush/android/PushService;->testMode:Z

    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/airpush/android/HttpPostData;->postData3(Ljava/util/List;ZLandroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 624
    .local v4, response:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 670
    .end local v4           #response:Lorg/apache/http/HttpEntity;
    :goto_0
    return-void

    .line 629
    .restart local v4       #response:Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 630
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    .line 636
    const-string v5, "Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Push Message : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v5, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/airpush/android/PushService;->parseJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v2

    .line 645
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Activitymanager"

    const-string v6, "Message Fetching Failed....."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v5, "Activitymanager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "json"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 648
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Message "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 649
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v6, 0x1b7740

    invoke-static {v5, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_0

    .line 633
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpEntity;
    :cond_1
    int-to-char v5, v1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 668
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpEntity;
    :cond_2
    const-string v5, "AirpushSDK"

    const-string v6, "Airpush is disabled, please enable to receive ads."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 545
    const-string v0, "AirpushSDK"

    const-string v1, "Service Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 538
    const-string v0, "AirpushSDK"

    const-string v1, "Low On Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 17
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 116
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 120
    .local v16, startIdObj:Ljava/lang/Integer;
    :try_start_0
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 121
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    .line 122
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 125
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "PostAdValues"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 126
    const-string v2, "adType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "Interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 131
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 132
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 133
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 134
    const-string v2, "Test"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->interstitialTestmode:Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airpush/android/PushService;->interstitialTestmode:Z

    if-nez v2, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 157
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 163
    .local v9, NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 164
    const-string v2, "apikey"

    const-string v3, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 165
    const-string v2, "number"

    const-string v3, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->phoneNumber:Ljava/lang/String;

    .line 166
    const-string v2, "campId"

    const-string v3, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 167
    const-string v2, "creativeId"

    const-string v3, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 178
    .end local v9           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v2, :cond_1

    .line 188
    const-string v2, "AirpushSDK"

    const-string v3, "Posting CC values"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 191
    .local v14, is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v10, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v11

    .local v11, ch:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_7

    .line 196
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, s:Ljava/lang/String;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CC Click : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 208
    .restart local v9       #NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 209
    const-string v2, "apikey"

    const-string v3, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 210
    const-string v2, "sms"

    const-string v3, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsText:Ljava/lang/String;

    .line 211
    const-string v2, "campId"

    const-string v3, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 212
    const-string v2, "creativeId"

    const-string v3, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 213
    const-string v2, "number"

    const-string v3, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsToNumber:Ljava/lang/String;

    .line 231
    .end local v9           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v2, :cond_2

    .line 242
    const-string v2, "AirpushSDK"

    const-string v3, "Posting CM values"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 245
    .restart local v14       #is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .restart local v10       #b:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v11

    .restart local v11       #ch:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_a

    .line 250
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 251
    .restart local v15       #s:Ljava/lang/String;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CM Click : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    :cond_3
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 261
    .restart local v9       #NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 262
    const-string v2, "apikey"

    const-string v3, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 263
    const-string v2, "url"

    const-string v3, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->url:Ljava/lang/String;

    .line 264
    const-string v2, "campId"

    const-string v3, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 265
    const-string v2, "creativeId"

    const-string v3, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 266
    const-string v2, "header"

    const-string v3, "header"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    .line 283
    .end local v9           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v2, :cond_4

    .line 295
    const-string v2, "AirpushSDK"

    const-string v3, "Posting W&A values."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 298
    .restart local v14       #is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .restart local v10       #b:Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v11

    .restart local v11       #ch:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_c

    .line 303
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 304
    .restart local v15       #s:Ljava/lang/String;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "W&A Click : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_4
    :goto_6
    if-eqz v16, :cond_5

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/airpush/android/PushService;->stopSelf(I)V

    .line 465
    :cond_5
    :goto_7
    return-void

    .line 170
    :cond_6
    :try_start_1
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 171
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 172
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 173
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 174
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->phoneNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 435
    :catch_0
    move-exception v13

    .line 437
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/airpush/android/Airpush;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    const-string v5, "airpush"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    if-eqz v16, :cond_5

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/airpush/android/PushService;->stopSelf(I)V

    goto :goto_7

    .line 194
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #b:Ljava/lang/StringBuffer;
    .restart local v11       #ch:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_7
    int-to-char v2, v11

    :try_start_3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 458
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 459
    if-eqz v16, :cond_8

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/airpush/android/PushService;->stopSelf(I)V

    .line 463
    :cond_8
    throw v2

    .line 217
    :cond_9
    :try_start_4
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 218
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 219
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 220
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 221
    const-string v2, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsText:Ljava/lang/String;

    .line 222
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsToNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 248
    .restart local v10       #b:Ljava/lang/StringBuffer;
    .restart local v11       #ch:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_a
    int-to-char v2, v11

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 270
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    :cond_b
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 271
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 272
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 273
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 274
    const-string v2, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->url:Ljava/lang/String;

    .line 275
    const-string v2, "header"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    goto/16 :goto_4

    .line 301
    .restart local v10       #b:Ljava/lang/StringBuffer;
    .restart local v11       #ch:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_c
    int-to-char v2, v11

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 308
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    :cond_d
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "userInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 309
    sget-object v2, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    sput-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 311
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 312
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 313
    .local v12, dataPrefs:Landroid/content/SharedPreferences;
    const-string v2, "imei"

    const-string v3, "invalid"

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 319
    .end local v12           #dataPrefs:Landroid/content/SharedPreferences;
    :cond_e
    new-instance v2, Lcom/airpush/android/PushService$UserInfoTask;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/airpush/android/PushService$UserInfoTask;-><init>(Lcom/airpush/android/PushService;Lcom/airpush/android/PushService$UserInfoTask;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/airpush/android/PushService$UserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 322
    :cond_f
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 324
    sget-object v2, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    sput-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 326
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 327
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 328
    .restart local v12       #dataPrefs:Landroid/content/SharedPreferences;
    const-string v2, "imei"

    const-string v3, "invalid"

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 331
    .end local v12           #dataPrefs:Landroid/content/SharedPreferences;
    :cond_10
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 332
    const-string v2, "icon"

    const v3, 0x1080074

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/airpush/android/PushService;->icon:I

    .line 333
    const-string v2, "doSearch"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->doSearch:Z

    .line 334
    const-string v2, "icontestmode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->iconTestMode:Z

    .line 335
    const-string v2, "doPush"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->doPush:Z

    .line 336
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Search Icon Enabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/airpush/android/PushService;->doSearch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Push Enabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/airpush/android/PushService;->doPush:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airpush/android/PushService;->doSearch:Z

    if-eqz v2, :cond_11

    .line 339
    new-instance v2, Lcom/airpush/android/Airpush;

    invoke-direct {v2}, Lcom/airpush/android/Airpush;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/airpush/android/PushService;->iconTestMode:Z

    invoke-virtual {v2, v3}, Lcom/airpush/android/Airpush;->createSearch(Z)V

    .line 344
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airpush/android/PushService;->doPush:Z

    if-eqz v2, :cond_12

    .line 345
    new-instance v2, Lcom/airpush/android/PushService$GetMessageTask;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/airpush/android/PushService$GetMessageTask;-><init>(Lcom/airpush/android/PushService;Lcom/airpush/android/PushService$GetMessageTask;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/airpush/android/PushService$GetMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 347
    :cond_12
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto/16 :goto_6

    .line 352
    :cond_13
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "delivery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 354
    sget-object v2, Lcom/airpush/android/DeliveryReceiver;->ctx:Landroid/content/Context;

    sput-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 355
    const-string v2, "adType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 357
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 361
    const-string v2, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 362
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 363
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 364
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 365
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 366
    const-string v2, "header"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    .line 367
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 368
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 371
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V

    .line 376
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 377
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 381
    const-string v2, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 382
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 383
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 384
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 385
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 386
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 387
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 390
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V

    .line 396
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 397
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 401
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 402
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 403
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 404
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 405
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 406
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 407
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 410
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V

    .line 414
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 419
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 420
    const-string v2, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    .line 421
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 422
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 423
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 424
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 425
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 426
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 429
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized parseJson(Ljava/lang/String;)V
    .locals 10
    .parameter "jsonString"

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 681
    sget-wide v7, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 682
    const-wide/16 v0, 0x0

    .line 683
    .local v0, deliveryDelay:J
    const/4 v2, 0x0

    .line 686
    .local v2, delivery_time:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 687
    .local v6, message:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 688
    .local v4, json:Lorg/json/JSONObject;
    const-string v7, "nextmessagecheck"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 691
    :try_start_1
    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 693
    .end local v4           #json:Lorg/json/JSONObject;
    .local v5, json:Lorg/json/JSONObject;
    :try_start_2
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 694
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getAdType(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    .line 695
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "invalid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 696
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "W"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 697
    :cond_0
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getWebAndAppAds(Lorg/json/JSONObject;)V

    .line 699
    :cond_1
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "CC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 700
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getClicktoCallAds(Lorg/json/JSONObject;)V

    .line 702
    :cond_2
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "CM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 703
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getClicktoMessageAds(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 759
    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 707
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/airpush/android/PushService;->resetAlarm(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_0

    .line 712
    :catch_0
    move-exception v3

    .line 733
    .local v3, je:Lorg/json/JSONException;
    :goto_1
    :try_start_4
    const-string v7, "AirpushSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Message Parsing.....Failed : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 679
    .end local v0           #deliveryDelay:J
    .end local v2           #delivery_time:Ljava/lang/Object;
    .end local v3           #je:Lorg/json/JSONException;
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #message:Ljava/lang/Object;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 735
    .restart local v0       #deliveryDelay:J
    .restart local v2       #delivery_time:Ljava/lang/Object;
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v6       #message:Ljava/lang/Object;
    :catch_1
    move-exception v7

    goto :goto_0

    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_0

    .line 712
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_1

    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :cond_5
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_0
.end method
