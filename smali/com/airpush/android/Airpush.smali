.class public Lcom/airpush/android/Airpush;
.super Ljava/lang/Object;
.source "Airpush.java"


# static fields
.field private static a:Lcom/airpush/android/Airpush;

.field private static apikey:Ljava/lang/String;

.field protected static appId:Ljava/lang/String;

.field protected static ctx:Landroid/content/Context;

.field private static doPush:Z

.field private static doSearch:Z

.field private static encodedAppId:Ljava/lang/String;

.field private static encodedAsp:Ljava/lang/String;

.field private static entity:Lorg/apache/http/HttpEntity;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpParameters:Lorg/apache/http/params/BasicHttpParams;

.field private static httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private static httpResponse:Lorg/apache/http/message/BasicHttpResponse;

.field private static icon:I

.field protected static imei:Ljava/lang/String;

.field private static imeiNumber:Ljava/lang/String;

.field private static searchIconTestMode:Z

.field private static showInterstitialtestAd:Z

.field private static size:Ljava/lang/String;

.field private static testMode:Z

.field private static timeDiff:J

.field private static timeoutConnection:I

.field private static timeoutSocket:I

.field private static values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addIntent:Landroid/content/Intent;

.field private addIntent1:Landroid/content/Intent;

.field private bmpicon:Landroid/graphics/Bitmap;

.field private campaignArr:[Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private campaignPostStr:[Ljava/lang/String;

.field private creativeArr:[Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private creativePostStr:[Ljava/lang/String;

.field private currentTime:J

.field private iconImage:Ljava/lang/String;

.field private iconImageArr:[Ljava/lang/String;

.field private iconNextMessageCheckTime:J

.field private iconStrream:Ljava/io/InputStream;

.field private iconText:Ljava/lang/String;

.field private iconTextArr:[Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private iconUrlArr:[Ljava/lang/String;

.field private imeinumber:Ljava/lang/String;

.field private json:Lorg/json/JSONArray;

.field private jsonArr:Lorg/json/JSONObject;

.field private len:I

.field private post:Lorg/json/JSONObject;

.field private response:Lorg/apache/http/HttpEntity;

.field private run_Task:Ljava/lang/Runnable;

.field private s:Ljava/lang/String;

.field private sendInstall:Z

.field private send_Task:Ljava/lang/Runnable;

.field private shortcutIntent:Landroid/content/Intent;

.field private showAd:Z

.field private showDialog:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    .line 59
    sput-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 60
    sput-object v0, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airpush/android/Airpush;->testMode:Z

    .line 63
    const v0, 0x1080074

    sput v0, Lcom/airpush/android/Airpush;->icon:I

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/airpush/android/Airpush;->timeDiff:J

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide v1, p0, Lcom/airpush/android/Airpush;->currentTime:J

    .line 67
    iput-wide v1, p0, Lcom/airpush/android/Airpush;->startTime:J

    .line 101
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignPostStr:[Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativePostStr:[Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    .line 680
    new-instance v0, Lcom/airpush/android/Airpush$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$1;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->send_Task:Ljava/lang/Runnable;

    .line 686
    new-instance v0, Lcom/airpush/android/Airpush$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$2;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->run_Task:Ljava/lang/Runnable;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8
    .parameter "context"
    .parameter "appId"
    .parameter "apiKey"
    .parameter "test"
    .parameter "enablePush"
    .parameter "search"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide v2, p0, Lcom/airpush/android/Airpush;->currentTime:J

    .line 67
    iput-wide v2, p0, Lcom/airpush/android/Airpush;->startTime:J

    .line 101
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignPostStr:[Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativePostStr:[Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    .line 680
    new-instance v0, Lcom/airpush/android/Airpush$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$1;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->send_Task:Ljava/lang/Runnable;

    .line 686
    new-instance v0, Lcom/airpush/android/Airpush$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$2;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->run_Task:Ljava/lang/Runnable;

    .line 153
    :try_start_0
    sput-boolean p4, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    .line 154
    sput-boolean p4, Lcom/airpush/android/Airpush;->testMode:Z

    .line 155
    sput-object p1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 156
    sput-boolean p6, Lcom/airpush/android/Airpush;->doSearch:Z

    .line 157
    sput-boolean p5, Lcom/airpush/android/Airpush;->doPush:Z

    .line 158
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service doPush...."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/airpush/android/Airpush;->doPush:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service doSearch...."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/airpush/android/Airpush;->doSearch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/airpush/android/SetPreferences;

    invoke-direct {v0}, Lcom/airpush/android/SetPreferences;-><init>()V

    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 162
    sget-boolean v5, Lcom/airpush/android/Airpush;->doSearch:Z

    sget-boolean v6, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    sget-boolean v7, Lcom/airpush/android/Airpush;->doPush:Z

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 161
    invoke-virtual/range {v0 .. v7}, Lcom/airpush/android/SetPreferences;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 163
    invoke-static {}, Lcom/airpush/android/Airpush;->getDataSharedprefrences()V

    .line 167
    sget-boolean v4, Lcom/airpush/android/Airpush;->testMode:Z

    const/4 v5, 0x0

    sget v6, Lcom/airpush/android/Airpush;->icon:I

    .line 168
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 167
    invoke-virtual/range {v0 .. v7}, Lcom/airpush/android/Airpush;->startAirpush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/airpush/android/Airpush;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->send()V

    return-void
.end method

.method static synthetic access$1()J
    .locals 2

    .prologue
    .line 68
    sget-wide v0, Lcom/airpush/android/Airpush;->timeDiff:J

    return-wide v0
.end method

.method private addBookMark()V
    .locals 9

    .prologue
    .line 276
    const/4 v0, 0x1

    .line 277
    .local v0, addBookMark:Z
    iget-object v6, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x19

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, subUrl:Ljava/lang/String;
    sget-object v6, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 280
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v1}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v3

    .line 283
    .local v3, mCur:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, i:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 287
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    const-string v7, "Web Search"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v6, "url"

    iget-object v7, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v6, "bookmark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v6, "favicon"

    const-string v7, "http://api.airpush.com/320x350.jpg"

    invoke-static {v7}, Lcom/airpush/android/Airpush;->getImageFromWeb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 305
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 304
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v6, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 312
    .end local v2           #i:I
    .end local v3           #mCur:Landroid/database/Cursor;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 288
    .restart local v2       #i:I
    .restart local v3       #mCur:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 290
    invoke-virtual {v1, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v2           #i:I
    .end local v3           #mCur:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private deleteShortcut()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    sget-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public static disableSdk(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 672
    const-string v2, "sdkPrefs"

    .line 673
    const/4 v3, 0x2

    .line 672
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 674
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 675
    .local v1, SDKPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SDKEnabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    return-void
.end method

.method public static enableSdk(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 663
    const-string v2, "sdkPrefs"

    .line 664
    const/4 v3, 0x2

    .line 663
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 665
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 666
    .local v1, SDKPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SDKEnabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 669
    return-void
.end method

.method private getCampaignId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 550
    :try_start_0
    const-string v1, "campaignid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    iget-object v1, p0, Lcom/airpush/android/Airpush;->campaignId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getCreativeId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 560
    :try_start_0
    const-string v1, "creativeid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->creativeId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    iget-object v1, p0, Lcom/airpush/android/Airpush;->creativeId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private static getDataSharedprefrences()V
    .locals 4

    .prologue
    .line 802
    :try_start_0
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-string v2, "dataPrefs"

    .line 803
    const/4 v3, 0x1

    .line 802
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 803
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 805
    const-string v2, "dataPrefs"

    const/4 v3, 0x1

    .line 804
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    .local v0, dataPrefs:Landroid/content/SharedPreferences;
    const-string v1, "appId"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    .line 807
    const-string v1, "apikey"

    const-string v2, "airpush"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    .line 808
    const-string v1, "imei"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    .line 809
    const-string v1, "testMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/airpush/android/Airpush;->testMode:Z

    .line 811
    const-string v1, "icon"

    const v2, 0x1080074

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/airpush/android/Airpush;->icon:I

    .line 812
    const-string v1, "asp"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->encodedAsp:Ljava/lang/String;

    .line 814
    const-string v1, "imeinumber"

    const-string v2, "invalid"

    .line 813
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->imeiNumber:Ljava/lang/String;

    .line 815
    sget-object v1, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->encodedAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getIconImage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 518
    :try_start_0
    const-string v1, "iconimage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 519
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 540
    :try_start_0
    const-string v1, "icontext"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 570
    :try_start_0
    const-string v1, "iconurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method protected static getImageFromWeb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imglink"

    .prologue
    .line 319
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 320
    .local v4, imgURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 321
    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 322
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 323
    .local v5, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 325
    .local v1, bmpImage:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 326
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bmpImage:Landroid/graphics/Bitmap;
    .end local v2           #conn:Ljava/net/URLConnection;
    .end local v4           #imgURL:Ljava/net/URL;
    .end local v5           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v3

    .line 330
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "AirpushSDK"

    const-string v7, "Error in Adimage fetching Please try again later."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNextMessageCheck(Lorg/json/JSONObject;)J
    .locals 3
    .parameter "json"

    .prologue
    .line 529
    :try_start_0
    const-string v1, "nextmessagecheck"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airpush/android/Airpush;->iconNextMessageCheckTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    iget-wide v1, p0, Lcom/airpush/android/Airpush;->iconNextMessageCheckTime:J

    :goto_0
    return-wide v1

    .line 530
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Lorg/json/JSONException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getShortcutData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 371
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 370
    check-cast v5, Landroid/view/WindowManager;

    .line 371
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 372
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 373
    .local v4, width:I
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    .line 374
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "width"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    const-string v8, "message"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "action"

    const-string v8, "geticon"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "APIKEY"

    sget-object v8, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    sget-boolean v5, Lcom/airpush/android/Airpush;->testMode:Z

    if-eqz v5, :cond_0

    .line 380
    const-string v5, "AirpushSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ShortIcon Test Mode...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    sget-boolean v7, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/airpush/android/Airpush;->postData()Lorg/apache/http/HttpEntity;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    .line 395
    :goto_0
    iget-object v5, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 396
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    .line 403
    iget-object v5, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/airpush/android/Airpush;->parseIconJson(Ljava/lang/String;)V

    .line 404
    return-void

    .line 385
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :cond_0
    const-string v5, "AirpushSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ShortIcon Test Mode...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    sget-boolean v7, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    const/4 v6, 0x0

    sget-object v7, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/airpush/android/HttpPostData;->postData3(Ljava/util/List;ZLandroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    goto :goto_0

    .line 399
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_1
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 646
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 647
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 648
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    const-string v2, "SDKEnabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    const-string v2, "SDKEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 658
    .end local v0           #SDKPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method private makeShortcut()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    sget-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->addBookMark()V

    .line 272
    return-void
.end method

.method private declared-synchronized parseIconJson(Ljava/lang/String;)V
    .locals 4
    .parameter "jsonString"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    .line 409
    iget-object v1, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, p0, Lcom/airpush/android/Airpush;->len:I

    .line 411
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    .line 412
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    .line 413
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    .line 414
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    .line 415
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    .line 416
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->post:Lorg/json/JSONObject;

    .line 417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 445
    iget-boolean v1, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    if-eqz v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->sendInstallData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0           #i:I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 418
    .restart local v0       #i:I
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    .line 421
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getIconImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 422
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getIconText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 423
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getIconUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 424
    iget-object v1, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getCampaignId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 425
    iget-object v1, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getCreativeId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 426
    iget-object v1, p0, Lcom/airpush/android/Airpush;->post:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    .line 417
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    .line 441
    invoke-virtual {p0}, Lcom/airpush/android/Airpush;->createShortcut()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 448
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected static postData()Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 976
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://api.airpush.com/testicon.php"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/Airpush;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 983
    sget-object v1, Lcom/airpush/android/Airpush;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 985
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v1, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 988
    const/16 v1, 0xbb8

    sput v1, Lcom/airpush/android/Airpush;->timeoutConnection:I

    .line 989
    sget-object v1, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 990
    sget v3, Lcom/airpush/android/Airpush;->timeoutConnection:I

    .line 989
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 993
    const/16 v1, 0xbb8

    sput v1, Lcom/airpush/android/Airpush;->timeoutSocket:I

    .line 995
    sget-object v1, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v3, Lcom/airpush/android/Airpush;->timeoutSocket:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 997
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/airpush/android/Airpush;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 999
    sget-object v1, Lcom/airpush/android/Airpush;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/airpush/android/Airpush;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v1, Lcom/airpush/android/Airpush;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 1001
    sget-object v1, Lcom/airpush/android/Airpush;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v1}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->entity:Lorg/apache/http/HttpEntity;

    .line 1003
    sget-object v1, Lcom/airpush/android/Airpush;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .local v0, iex:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 1005
    .end local v0           #iex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1006
    .restart local v0       #iex:Ljava/lang/Exception;
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-wide/32 v3, 0x1b7740

    invoke-static {v1, v3, v4}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v1, v2

    .line 1007
    goto :goto_0

    .line 1011
    .end local v0           #iex:Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    sget-wide v3, Lcom/airpush/android/Airpush;->timeDiff:J

    invoke-static {v1, v3, v4}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v1, v2

    .line 1012
    goto :goto_0
.end method

.method protected static reStartSDK(Landroid/content/Context;J)V
    .locals 13
    .parameter "context"
    .parameter "timeDiff2"

    .prologue
    .line 843
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK will restart in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    sput-object p0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 845
    invoke-static {}, Lcom/airpush/android/Airpush;->getDataSharedprefrences()V

    .line 847
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-class v1, Lcom/airpush/android/UserDetailsReceiver;

    invoke-direct {v10, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 848
    .local v10, userIntent:Landroid/content/Intent;
    const-string v1, "SetUserInfo"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const-string v1, "appId"

    sget-object v2, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v1, "imei"

    sget-object v2, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string v1, "apikey"

    sget-object v2, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 856
    invoke-static {p0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 859
    .local v8, pendingUserIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 858
    check-cast v9, Landroid/app/AlarmManager;

    .line 860
    .local v9, userAlarmMgr:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    const-wide/16 v11, 0x3c

    mul-long/2addr v4, v11

    add-long/2addr v2, v4

    .line 860
    invoke-virtual {v9, v1, v2, v3, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 866
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/airpush/android/MessageReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 867
    .local v7, messageIntent:Landroid/content/Intent;
    const-string v1, "SetMessageReceiver"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string v1, "appId"

    sget-object v2, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    const-string v1, "imei"

    sget-object v2, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const-string v1, "apikey"

    sget-object v2, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string v1, "testMode"

    sget-boolean v2, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    const-string v1, "icon"

    sget v2, Lcom/airpush/android/Airpush;->icon:I

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 874
    const-string v1, "icontestmode"

    sget-boolean v2, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 875
    const-string v1, "doSearch"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 876
    const-string v1, "doPush"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 889
    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 892
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    check-cast v0, Landroid/app/AlarmManager;

    .line 893
    .local v0, msgAlarmMgr:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 895
    sget-object v4, Lcom/airpush/android/Constants;->IntervalFirstTime:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    .line 894
    add-long/2addr v2, v4

    .line 896
    sget-wide v4, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    .line 893
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v0           #msgAlarmMgr:Landroid/app/AlarmManager;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    .end local v7           #messageIntent:Landroid/content/Intent;
    .end local v8           #pendingUserIntent:Landroid/app/PendingIntent;
    .end local v9           #userAlarmMgr:Landroid/app/AlarmManager;
    .end local v10           #userIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private send()V
    .locals 17

    .prologue
    .line 693
    const/4 v8, 0x1

    .line 695
    .local v8, flag:Z
    :try_start_0
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-string v3, "airpushTimePref"

    .line 696
    const/4 v4, 0x1

    .line 695
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/Airpush;->currentTime:J

    .line 698
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 699
    const-string v3, "airpushTimePref"

    const/4 v4, 0x1

    .line 698
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 701
    .local v13, timePrefs:Landroid/content/SharedPreferences;
    const-string v2, "startTime"

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 702
    const-string v2, "startTime"

    const-wide/16 v3, 0x0

    invoke-interface {v13, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/Airpush;->startTime:J

    .line 703
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/airpush/android/Airpush;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/airpush/android/Airpush;->startTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    sput-wide v2, Lcom/airpush/android/Airpush;->timeDiff:J

    .line 704
    sget-wide v2, Lcom/airpush/android/Airpush;->timeDiff:J

    sget-object v4, Lcom/airpush/android/Constants;->IntervalSdkReexecute:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 705
    const/4 v8, 0x1

    .line 726
    .end local v13           #timePrefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 729
    new-instance v16, Landroid/content/Intent;

    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-class v3, Lcom/airpush/android/UserDetailsReceiver;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .local v16, userIntent:Landroid/content/Intent;
    const-string v2, "SetUserInfo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v2, "appId"

    sget-object v3, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v2, "imei"

    sget-object v3, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v2, "apikey"

    sget-object v3, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 739
    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 741
    .local v12, pendingUserIntent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 742
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 741
    check-cast v15, Landroid/app/AlarmManager;

    .line 743
    .local v15, userAlarmMgr:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 743
    invoke-virtual {v15, v2, v3, v4, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 748
    new-instance v10, Landroid/content/Intent;

    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-class v3, Lcom/airpush/android/MessageReceiver;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    .local v10, messageIntent:Landroid/content/Intent;
    const-string v2, "SetMessageReceiver"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string v2, "appId"

    sget-object v3, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v2, "imei"

    sget-object v3, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v2, "apikey"

    sget-object v3, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v2, "testMode"

    sget-boolean v3, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const-string v2, "icon"

    sget v3, Lcom/airpush/android/Airpush;->icon:I

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    const-string v2, "icontestmode"

    sget-boolean v3, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    const-string v2, "doSearch"

    sget-boolean v3, Lcom/airpush/android/Airpush;->doSearch:Z

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    const-string v2, "doPush"

    sget-boolean v3, Lcom/airpush/android/Airpush;->doPush:Z

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 762
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 761
    invoke-static {v2, v3, v10, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 763
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 764
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 763
    check-cast v1, Landroid/app/AlarmManager;

    .line 765
    .local v1, msgAlarmMgr:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 767
    sget-object v5, Lcom/airpush/android/Constants;->IntervalFirstTime:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    .line 766
    add-long/2addr v3, v5

    .line 768
    sget-wide v5, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    .line 765
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 798
    .end local v1           #msgAlarmMgr:Landroid/app/AlarmManager;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v10           #messageIntent:Landroid/content/Intent;
    .end local v12           #pendingUserIntent:Landroid/app/PendingIntent;
    .end local v15           #userAlarmMgr:Landroid/app/AlarmManager;
    .end local v16           #userIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 708
    .restart local v13       #timePrefs:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v8, 0x0

    .line 711
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 712
    .local v9, handler2:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/Airpush;->run_Task:Ljava/lang/Runnable;

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 773
    .end local v9           #handler2:Landroid/os/Handler;
    .end local v13           #timePrefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 715
    .restart local v13       #timePrefs:Landroid/content/SharedPreferences;
    :cond_3
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 716
    const-string v3, "airpushTimePref"

    const/4 v4, 0x2

    .line 715
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 718
    .local v11, myTimePrefs:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 719
    .local v14, timePrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/Airpush;->startTime:J

    .line 721
    const-string v2, "startTime"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/airpush/android/Airpush;->startTime:J

    invoke-interface {v14, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private sendInstallData()V
    .locals 8

    .prologue
    .line 471
    const-string v4, "AirpushSDK"

    const-string v5, "Sending Install Data...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :try_start_0
    sget-object v4, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    .line 475
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    const-string v7, "log"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "action"

    .line 477
    const-string v7, "seticoninstalltracking"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "APIKEY"

    sget-object v7, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "event"

    const-string v7, "iInstall"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "campaigncreativedata"

    iget-object v7, p0, Lcom/airpush/android/Airpush;->post:Lorg/json/JSONObject;

    .line 481
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    sget-boolean v4, Lcom/airpush/android/Airpush;->testMode:Z

    if-nez v4, :cond_2

    .line 484
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Test Mode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    .line 486
    iget-object v4, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 487
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    .line 493
    iget-object v4, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Icon Install returns:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    return-void

    .line 490
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_0
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 505
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 497
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_1
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Icon Install returns: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 508
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 511
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "AirpushSDK"

    const-string v5, "Icon Install Confirmation Error "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 503
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Test Mode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method

.method private submitHttpRequest(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 340
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    const-string v2, ""

    .line 341
    .local v2, query:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 342
    const-string v4, "utf-8"

    invoke-static {p2, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    :cond_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 347
    .local v3, u:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 346
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 349
    .local v1, httpConnection:Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 350
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 351
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 352
    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 354
    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 355
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 357
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 359
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 360
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 365
    .end local v1           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v2           #query:Ljava/lang/String;
    .end local v3           #u:Ljava/net/URL;
    :goto_0
    return-object v4

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "AirpushSDK"

    const-string v5, "Network Error, please try again later"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createSearch(Z)V
    .locals 1
    .parameter "iconTest"

    .prologue
    .line 195
    sput-boolean p1, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->getShortcutData()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    goto :goto_0

    .line 204
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected createShortcut()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000

    const/high16 v5, 0x400

    const/4 v4, 0x0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/airpush/android/Airpush;->submitHttpRequest(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconStrream:Ljava/io/InputStream;

    .line 214
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconStrream:Ljava/io/InputStream;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->bmpicon:Landroid/graphics/Bitmap;

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->bmpicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->makeShortcut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    .line 242
    sget-object v1, Lcom/airpush/android/SetPreferences;->postValues:Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&model=log&action=seticonclicktracking&APIKEY=airpushsearch&event=iClick&campaignid=0&creativeid=0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    const-string v3, "Search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "duplicate"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 254
    sget-object v3, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const v4, 0x108004f

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->makeShortcut()V

    goto :goto_0
.end method

.method protected startAirpush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZ)V
    .locals 8
    .parameter "context"
    .parameter "appId"
    .parameter "apiKey"
    .parameter "test"
    .parameter "showDialog"
    .parameter "icon"
    .parameter "showAds"

    .prologue
    .line 584
    :try_start_0
    iput-boolean p7, p0, Lcom/airpush/android/Airpush;->showAd:Z

    .line 585
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 586
    const-string v6, "dialogPref"

    const/4 v7, 0x2

    .line 585
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 587
    .local v3, mydialogPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 589
    .local v0, dialogPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "ShowDialog"

    invoke-interface {v0, v5, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 590
    const-string v5, "ShowAd"

    iget-boolean v6, p0, Lcom/airpush/android/Airpush;->showAd:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 591
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 593
    iget-boolean v5, p0, Lcom/airpush/android/Airpush;->showAd:Z

    if-eqz v5, :cond_0

    .line 594
    const-string v5, "AirpushSDK"

    const-string v6, "Initialising....."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sput-boolean p4, Lcom/airpush/android/Airpush;->testMode:Z

    .line 597
    sput-object p2, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    .line 598
    sput-object p3, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    .line 599
    sput p6, Lcom/airpush/android/Airpush;->icon:I

    .line 601
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 602
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 601
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 603
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->imeinumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :try_start_1
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 609
    .local v2, mdEnc:Ljava/security/MessageDigest;
    iget-object v5, p0, Lcom/airpush/android/Airpush;->imeinumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/airpush/android/Airpush;->imeinumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 610
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 618
    .end local v2           #mdEnc:Ljava/security/MessageDigest;
    :goto_0
    :try_start_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 619
    .local v1, handler:Landroid/os/Handler;
    iget-object v5, p0, Lcom/airpush/android/Airpush;->send_Task:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1770

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 643
    .end local v0           #dialogPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #handler:Landroid/os/Handler;
    .end local v3           #mydialogPrefs:Landroid/content/SharedPreferences;
    .end local v4           #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 621
    :catch_0
    move-exception v5

    goto :goto_1

    .line 613
    .restart local v0       #dialogPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #mydialogPrefs:Landroid/content/SharedPreferences;
    .restart local v4       #telephony:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
