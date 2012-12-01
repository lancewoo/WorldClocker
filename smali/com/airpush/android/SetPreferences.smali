.class public Lcom/airpush/android/SetPreferences;
.super Ljava/lang/Object;
.source "SetPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/SetPreferences$MyLocationListener;
    }
.end annotation


# static fields
.field private static android_id:Ljava/lang/String;

.field private static apikey:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static carrier:Ljava/lang/String;

.field private static city:Ljava/lang/String;

.field private static connectionType:Ljava/lang/String;

.field private static country:Ljava/lang/String;

.field private static ctx:Landroid/content/Context;

.field private static dte:Ljava/lang/String;

.field private static icon:I

.field protected static imei:Ljava/lang/String;

.field private static ip:Ljava/lang/String;

.field protected static json:Lorg/json/JSONObject;

.field private static jsonstr:Ljava/lang/String;

.field private static lat:Ljava/lang/String;

.field private static lon:Ljava/lang/String;

.field private static manufacturer:Ljava/lang/String;

.field private static networkOperator:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static phonemodel:Ljava/lang/String;

.field protected static postValues:Ljava/lang/String;

.field private static sdkversion:Ljava/lang/String;

.field private static state:Ljava/lang/String;

.field private static testMode:Z

.field private static token:Ljava/lang/String;

.field private static user_agent:Ljava/lang/String;

.field protected static values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private static version:Ljava/lang/String;


# instance fields
.field private doPush:Z

.field private doSearch:Z

.field private encodedAsp:Ljava/lang/String;

.field private imeinumber:Ljava/lang/String;

.field private jsonString:Ljava/lang/String;

.field private searchIconTestMode:Z

.field private showAd:Z

.field private showDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 45
    const-string v0, "4.02"

    sput-object v0, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    .line 46
    const-string v0, "unknown"

    sput-object v0, Lcom/airpush/android/SetPreferences;->country:Ljava/lang/String;

    .line 47
    const-string v0, "unknown"

    sput-object v0, Lcom/airpush/android/SetPreferences;->city:Ljava/lang/String;

    .line 48
    const-string v0, "unknown"

    sput-object v0, Lcom/airpush/android/SetPreferences;->state:Ljava/lang/String;

    .line 49
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    .line 50
    const-string v0, "00"

    sput-object v0, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 51
    const-string v0, "invalid"

    sput-object v0, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 52
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    .line 53
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    .line 54
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    .line 55
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    .line 56
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    .line 57
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 58
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    .line 59
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->ip:Ljava/lang/String;

    .line 60
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 61
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 62
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/airpush/android/SetPreferences;->jsonString:Ljava/lang/String;

    .line 33
    const-string v0, "0"

    iput-object v0, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-object p0, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    sput-object p0, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    return-void
.end method

.method private static getApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 278
    sget-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    const-string v2, "authkey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid key"

    goto :goto_0
.end method

.method private static getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 263
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 265
    sget-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid Id"

    goto :goto_0
.end method

.method private getConnectionType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 351
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 352
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 353
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 354
    .local v1, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const-string v2, "1"

    .line 357
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method private static getDataSharedprefrences(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 205
    :try_start_0
    const-string v2, "dataPrefs"

    .line 206
    const/4 v3, 0x1

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const-string v2, "dataPrefs"

    const/4 v3, 0x1

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, dataPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 210
    const-string v2, "apikey"

    const-string v3, "airpush"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    .line 211
    const-string v2, "imei"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    .line 212
    const-string v2, "token"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 213
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 214
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 215
    const-string v2, "packageName"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 216
    const-string v2, "version"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    .line 217
    const-string v2, "carrier"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    .line 218
    const-string v2, "networkOperator"

    .line 219
    const-string v3, "invalid"

    .line 218
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    .line 220
    const-string v2, "phoneModel"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    .line 221
    const-string v2, "manufacturer"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    .line 222
    const-string v2, "longitude"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 223
    const-string v2, "latitude"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    .line 224
    const-string v2, "sdkversion"

    const-string v3, "4.02"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    .line 225
    const-string v2, "connectionType"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    .line 226
    const-string v2, "testMode"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/SetPreferences;->testMode:Z

    .line 227
    const-string v2, "useragent"

    const-string v3, "Default"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    .line 228
    const-string v2, "icon"

    const v3, 0x108000a

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/airpush/android/SetPreferences;->icon:I

    .line 229
    const-string v2, "android_id"

    const-string v3, "Android_id"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    .line 259
    .end local v0           #dataPrefs:Landroid/content/SharedPreferences;
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    sget-object v3, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    const-string v3, "default"

    const-string v4, "default"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 233
    invoke-static {v2, v3, v4, v5}, Lcom/airpush/android/HttpPostData;->postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->jsonstr:Ljava/lang/String;

    .line 236
    sget-object v2, Lcom/airpush/android/SetPreferences;->jsonstr:Ljava/lang/String;

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 237
    sget-object v2, Lcom/airpush/android/SetPreferences;->jsonstr:Ljava/lang/String;

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getLocation(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 381
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 380
    if-nez v1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 385
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 383
    if-nez v1, :cond_0

    .line 389
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    check-cast v0, Landroid/location/LocationManager;

    .line 391
    .local v0, mlocManager:Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 393
    .local v6, loc:Landroid/location/Location;
    if-nez v6, :cond_1

    .line 394
    new-instance v5, Lcom/airpush/android/SetPreferences$MyLocationListener;

    invoke-direct {v5, p0}, Lcom/airpush/android/SetPreferences$MyLocationListener;-><init>(Lcom/airpush/android/SetPreferences;)V

    .line 396
    .local v5, mlocListener:Landroid/location/LocationListener;
    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 395
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 403
    .end local v0           #mlocManager:Landroid/location/LocationManager;
    .end local v5           #mlocListener:Landroid/location/LocationListener;
    .end local v6           #loc:Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 398
    .restart local v0       #mlocManager:Landroid/location/LocationManager;
    .restart local v6       #loc:Landroid/location/Location;
    :cond_1
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 399
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 361
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 362
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 365
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    const-string v2, "SDKEnabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const-string v2, "SDKEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 373
    .end local v0           #SDKPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method protected static setValues(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    invoke-static {p0}, Lcom/airpush/android/SetPreferences;->getDataSharedprefrences(Landroid/content/Context;)V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    .line 293
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "apikey"

    sget-object v3, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appId"

    sget-object v3, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "imei"

    sget-object v3, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    sget-object v3, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "request_timestamp"

    sget-object v3, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "packageName"

    sget-object v3, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "version"

    sget-object v3, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "carrier"

    sget-object v3, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "networkOperator"

    .line 302
    sget-object v3, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "phoneModel"

    sget-object v3, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "manufacturer"

    sget-object v3, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "longitude"

    sget-object v3, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "latitude"

    sget-object v3, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sdkversion"

    sget-object v3, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "wifi"

    sget-object v3, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "useragent"

    sget-object v3, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "android_id"

    sget-object v3, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.airpush.com/v2/api.php?apikey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&request_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string v1, "&packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    const-string v1, "&carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&networkOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    sget-object v1, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&phoneModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    const-string v1, "&manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    const-string v1, "&latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    const-string v1, "&wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&useragent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/SetPreferences;->postValues:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    sget-object v0, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 8
    .parameter "context"
    .parameter "appid"
    .parameter "apikey"
    .parameter "testMode"
    .parameter "doSearch"
    .parameter "searchIconTestMode"
    .parameter "doPush"

    .prologue
    .line 71
    sput-object p1, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 72
    sput-object p2, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 73
    sput-object p3, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    .line 74
    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showDialog:Z

    iput-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showDialog:Z

    .line 75
    iput-boolean p7, p0, Lcom/airpush/android/SetPreferences;->doPush:Z

    .line 76
    iput-boolean p5, p0, Lcom/airpush/android/SetPreferences;->doSearch:Z

    .line 77
    iput-boolean p6, p0, Lcom/airpush/android/SetPreferences;->searchIconTestMode:Z

    .line 79
    sput-boolean p4, Lcom/airpush/android/SetPreferences;->testMode:Z

    .line 80
    new-instance v5, Landroid/webkit/WebView;

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    .line 81
    const-string v5, "User Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "User Agent : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/airpush/android/SetPreferences;->doPush:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/airpush/android/SetPreferences;->getConnectionType()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    .line 88
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/airpush/android/SetPreferences;->getLocation(Landroid/content/Context;)V

    .line 90
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 91
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 90
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 92
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    .line 97
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 99
    .local v2, mdEnc:Ljava/security/MessageDigest;
    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 100
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 105
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 106
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v5, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    .line 107
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v5, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    .line 108
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    .line 109
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    .line 110
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v5, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    .line 111
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    .line 113
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 115
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 116
    .local v3, mdEnc2:Ljava/security/MessageDigest;
    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 117
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/airpush/android/SetPreferences;->setSharedPreferences()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #mdEnc:Ljava/security/MessageDigest;
    .end local v3           #mdEnc2:Ljava/security/MessageDigest;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "AirpushSDK"

    const-string v6, "IMEI conversion Error "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setSharedPreferences()V
    .locals 7

    .prologue
    .line 145
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 146
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 147
    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 148
    const-string v5, "dataPrefs"

    const/4 v6, 0x2

    .line 147
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 149
    .local v3, myDataPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 150
    .local v1, dataPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "apikey"

    sget-object v5, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v4, "appId"

    sget-object v5, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v4, "imei"

    sget-object v5, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v4, "connectionType"

    sget-object v5, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v4, "token"

    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v4, "request_timestamp"

    sget-object v5, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v4, "packageName"

    sget-object v5, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v4, "version"

    sget-object v5, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string v4, "carrier"

    sget-object v5, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string v4, "networkOperator"

    sget-object v5, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v4, "phoneModel"

    sget-object v5, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    const-string v4, "manufacturer"

    sget-object v5, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v4, "longitude"

    sget-object v5, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v4, "latitude"

    sget-object v5, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v4, "sdkversion"

    const-string v5, "4.02"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v4, "android_id"

    sget-object v5, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v4, "showDialog"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showDialog:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v4, "showAd"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showAd:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v4, "testMode"

    sget-boolean v5, Lcom/airpush/android/SetPreferences;->testMode:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v4, "doPush"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->doPush:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v4, "doSearch"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->doSearch:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v4, "searchIconTestMode"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->searchIconTestMode:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v4, "icon"

    sget v5, Lcom/airpush/android/SetPreferences;->icon:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v4, "useragent"

    sget-object v5, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    sget-object v5, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    sget-object v5, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, asp:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/SetPreferences;->encodedAsp:Ljava/lang/String;

    .line 178
    const-string v4, "asp"

    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->encodedAsp:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v4, "imeinumber"

    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0           #asp:Ljava/lang/String;
    .end local v1           #dataPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #myDataPrefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v4

    goto :goto_0
.end method