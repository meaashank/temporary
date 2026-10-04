###### Class com.google.android.gms.ads.internal.gmsg.HttpClient (com.google.android.gms.ads.internal.gmsg.HttpClient)
.class public Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzu;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzu<",
        "Lcom/google/android/gms/internal/ads/zzahu;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbob:Lcom/google/android/gms/internal/ads/zzbbi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zzbob:Lcom/google/android/gms/internal/ads/zzbbi;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzsz()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_f0
    .catchall {:try_start_2 .. :try_end_c} :catchall_ed

    .line 44
    :try_start_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzlf()Lcom/google/android/gms/internal/ads/zzayh;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zzbob:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbbi;->zzdp:Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/ads/zzayh;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzta()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_3a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 50
    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zztb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_64

    .line 51
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zztb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 53
    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 54
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v5, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 56
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_65

    :cond_64
    move-object v3, v1

    .line 57
    :goto_65
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbax;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbax;-><init>()V

    .line 58
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_b5

    .line 61
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 63
    new-instance v10, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 66
    :cond_b5
    new-instance v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzsy()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzlf()Lcom/google/android/gms/internal/ads/zzayh;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 70
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzayh;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v7, v3, v8}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->getResponseCode()I

    move-result p1

    invoke-virtual {v5, v2, p1}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/net/HttpURLConnection;I)V

    .line 72
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzbax;->zzek(Ljava/lang/String;)V

    .line 73
    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;

    invoke-direct {p1, p0, v4, v6, v1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e5} :catch_eb
    .catchall {:try_start_c .. :try_end_e5} :catchall_101

    if-eqz v2, :cond_ea

    .line 75
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ea
    return-object p1

    :catch_eb
    move-exception p1

    goto :goto_f2

    :catchall_ed
    move-exception p1

    move-object v2, v1

    goto :goto_102

    :catch_f0
    move-exception p1

    move-object v2, v1

    .line 78
    :goto_f2
    :try_start_f2
    new-instance v3, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_f2 .. :try_end_fb} :catchall_101

    if-eqz v2, :cond_100

    .line 81
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_100
    return-object v3

    :catchall_101
    move-exception p1

    :goto_102
    if-eqz v2, :cond_107

    .line 84
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_107
    throw p1
.end method

.method private static zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;)Lorg/json/JSONObject;
    .registers 8

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "http_request_id"

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzsy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v1, "body"

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_1d
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zztd()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    .line 31
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "key"

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "value"

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2a

    :cond_53
    const-string v2, "headers"

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response_code"

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->getResponseCode()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p0

    const-string v1, "Error constructing JSON for http response."

    .line 40
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzaxz;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    return-object v0
.end method

.method private static zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;
    .registers 9

    const-string v0, "http_request_id"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post_body"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    :try_start_13
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_18} :catch_1a

    move-object v3, v4

    goto :goto_20

    :catch_1a
    move-exception v1

    const-string v4, "Error constructing http request."

    .line 12
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "headers"

    .line 14
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_32

    .line 16
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_32
    const/4 v4, 0x0

    .line 17
    :goto_33
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_56

    .line 18
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_53

    const-string v6, "key"

    .line 20
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    .line 21
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    new-instance v7, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 24
    :cond_56
    new-instance p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public send(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_8
    const-string v3, "http_request_id"

    .line 88
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_51

    .line 89
    :try_start_e
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zztc()Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "response"

    .line 93
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_7d

    :cond_30
    const-string v1, "response"

    .line 96
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "http_request_id"

    .line 97
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4e} :catch_4f

    goto :goto_7d

    :catch_4f
    move-exception p1

    goto :goto_53

    :catch_51
    move-exception p1

    move-object v3, v1

    :goto_53
    const-string v1, "Error executing http request."

    .line 103
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_58
    const-string v1, "response"

    .line 104
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "http_request_id"

    .line 105
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_76} :catch_77

    goto :goto_7d

    :catch_77
    move-exception p1

    const-string v1, "Error executing http request."

    .line 111
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7d
    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 113
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahu;

    .line 114
    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/gmsg/zzv;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzahu;)V

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzc(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzbcb;

    return-void
.end method

###### Class com.google.android.gms.ads.internal.gmsg.HttpClient.zza (com.google.android.gms.ads.internal.gmsg.HttpClient$zza)
.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->mKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->mValue:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.gmsg.HttpClient.zzb (com.google.android.gms.ads.internal.gmsg.HttpClient$zzb)
.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzdfr:Ljava/lang/String;

.field private final zzdfs:Ljava/net/URL;

.field private final zzdft:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdfu:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdfr:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdfs:Ljava/net/URL;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdft:Ljava/util/ArrayList;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdfu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzsy()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdfr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzsz()Ljava/net/URL;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdfs:Ljava/net/URL;

    return-object v0
.end method

.method public final zzta()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdft:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final zztb()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->zzdfu:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.gmsg.HttpClient.zzc (com.google.android.gms.ads.internal.gmsg.HttpClient$zzc)
.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field private final zzdfv:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

.field private final zzdfw:Z

.field private final zzdfx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzdfw:Z

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzdfv:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzdfx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzdfx:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccess()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzdfw:Z

    return v0
.end method

.method public final zztc()Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzdfv:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.gmsg.HttpClient.zzd (com.google.android.gms.ads.internal.gmsg.HttpClient$zzd)
.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zzcf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzday:Ljava/lang/String;

.field private final zzdfr:Ljava/lang/String;

.field private final zzdfy:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzdfr:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzdfy:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzcf:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzday:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzday:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzdfy:I

    return v0
.end method

.method public final zzsy()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzdfr:Ljava/lang/String;

    return-object v0
.end method

.method public final zztd()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->zzcf:Ljava/util/List;

    return-object v0
.end method
