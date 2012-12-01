.class public final Lcom/airpush/android/HttpPostData;
.super Ljava/lang/Object;
.source "HttpPostData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/HttpPostData$InflatingEntity;,
        Lcom/airpush/android/HttpPostData$Prefs;
    }
.end annotation


# static fields
.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static ctx:Landroid/content/Context;

.field private static entity:Lorg/apache/http/HttpEntity;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpParameters:Lorg/apache/http/params/BasicHttpParams;

.field private static httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private static httpResponse:Lorg/apache/http/message/BasicHttpResponse;

.field private static post:Lorg/apache/http/client/methods/HttpPost;

.field private static response:Lorg/apache/http/HttpEntity;

.field protected static timeDiff:J

.field private static timeoutConnection:I

.field private static timeoutSocket:I

.field private static url:Ljava/lang/String;


# instance fields
.field private httpResponse2:Lorg/apache/http/message/BasicHttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/airpush/android/HttpPostData;->timeDiff:J

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;
    .locals 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-wide/32 v5, 0x1b7740

    const/4 v3, 0x0

    .line 61
    invoke-static {p1}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    sput-object p1, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 67
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://api.airpush.com/v2/api.php"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 68
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 70
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 72
    const/16 v2, 0xbb8

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    .line 73
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    const/16 v2, 0xbb8

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    .line 77
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 80
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$1;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$1;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 90
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$2;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$2;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 107
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 109
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;

    .line 112
    sget-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 147
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/net/SocketTimeoutException;
    const-string v2, "SocketTimeoutException Thrown"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 118
    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "ClientProtocolException Thrown"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 124
    goto :goto_0

    .line 126
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 129
    const-string v2, "MalformedURLException Thrown"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 130
    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 134
    const-string v2, "IOException Thrown"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 135
    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 138
    .local v1, iex:Ljava/lang/Exception;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 139
    goto :goto_0

    .line 146
    .end local v1           #iex:Ljava/lang/Exception;
    :cond_0
    sget-wide v4, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p1, v4, v5}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 147
    goto :goto_0
.end method

.method protected static postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "args"
    .parameter "appId"
    .parameter "imei"
    .parameter "context"

    .prologue
    .line 244
    invoke-static {p3}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 245
    const-string v2, ""

    .line 246
    .local v2, error:Ljava/lang/String;
    sput-object p3, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 248
    :try_start_0
    invoke-static {p3}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 249
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 252
    .local v0, connection:Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 253
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 254
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 255
    const/16 v9, 0xbb8

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 258
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 259
    .local v6, responseCode:I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_1

    .line 260
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v7, sb:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 264
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 267
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 299
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v2           #error:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #responseCode:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v8           #url:Ljava/net/URL;
    :goto_1
    return-object v9

    .line 265
    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    .restart local v2       #error:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #responseCode:I
    .restart local v7       #sb:Ljava/lang/StringBuffer;
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 272
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #responseCode:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/net/SocketTimeoutException;
    const-string v9, "SocketTimeoutException Thrown"

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 296
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :cond_1
    :goto_2
    const-string v9, ""

    goto :goto_1

    .line 277
    :catch_1
    move-exception v1

    .line 279
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "ClientProtocolException Thrown"

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_2

    .line 282
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 284
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 285
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 286
    const-string v9, "MalformedURLException Thrown"

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 287
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v1

    .line 289
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 291
    const-string v9, "IOException Thrown"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 293
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 294
    .local v3, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_2

    .line 298
    .end local v2           #error:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    sget-wide v9, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p3, v9, v10}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 299
    const-string v9, ""

    goto :goto_1
.end method

.method protected static postData3(Ljava/util/List;ZLandroid/content/Context;)Lorg/apache/http/HttpEntity;
    .locals 7
    .parameter
    .parameter "test"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z",
            "Landroid/content/Context;",
            ")",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-wide/32 v5, 0x1b7740

    const/4 v3, 0x0

    .line 151
    invoke-static {p2}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    sput-object p2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    :try_start_0
    const-string v2, "http://api.airpush.com/testmsg2.php"

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;

    .line 162
    :goto_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v4, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 163
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 165
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 167
    const/16 v2, 0x2710

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    .line 168
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 172
    const/16 v2, 0x2710

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    .line 173
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 175
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 177
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$3;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$3;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 186
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$4;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$4;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 201
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 203
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;

    .line 205
    sget-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;

    .line 239
    :goto_1
    return-object v2

    .line 159
    :cond_0
    const-string v2, "http://api.airpush.com/v2/api.php"

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/net/SocketTimeoutException;
    const-string v2, "SocketTimeoutException Thrown"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 210
    goto :goto_1

    .line 212
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "ClientProtocolException Thrown"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 216
    goto :goto_1

    .line 218
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 220
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 221
    const-string v2, "MalformedURLException Thrown"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 222
    goto :goto_1

    .line 223
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 226
    const-string v2, "IOException Thrown"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 227
    goto :goto_1

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 230
    .local v1, iex:Ljava/lang/Exception;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 231
    goto :goto_1

    .line 238
    .end local v1           #iex:Ljava/lang/Exception;
    :cond_1
    sget-wide v4, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p2, v4, v5}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 239
    goto :goto_1
.end method
