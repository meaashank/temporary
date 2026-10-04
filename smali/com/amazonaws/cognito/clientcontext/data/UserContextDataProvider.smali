###### Class com.amazonaws.cognito.clientcontext.data.UserContextDataProvider (com.amazonaws.cognito.clientcontext.data.UserContextDataProvider)
.class public Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
.super Ljava/lang/Object;
.source "UserContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$ContextDataJsonKeys;,
        Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ANDROID20171114"

.field private static final b:Ljava/lang/String; = "UserContextDataProvider"


# instance fields
.field private c:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

.field private d:Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 52
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;

    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;-><init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->c:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    .line 60
    iput-object p2, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->d:Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;

    return-void
.end method

.method public static a()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
    .registers 1

    .line 67
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;->a()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "payload"

    .line 123
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "signature"

    .line 124
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    const-string p2, "ANDROID20171114"

    .line 125
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "contextData"

    .line 107
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "username"

    .line 108
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userPoolId"

    .line 109
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    .line 110
    invoke-virtual {p0}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->c:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    invoke-virtual {v0, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->d:Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;

    const-string p3, "ANDROID20171114"

    invoke-virtual {p2, p1, p4, p3}, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    return-object p1

    .line 99
    :catch_24
    sget-object p1, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->b:Ljava/lang/String;

    const-string p2, "Exception in creating JSON from context data"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 134
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 135
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .registers 3

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.cognito.clientcontext.data.UserContextDataProvider.AnonymousClass1 (com.amazonaws.cognito.clientcontext.data.UserContextDataProvider$1)
.class synthetic Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$1;
.super Ljava/lang/Object;
.source "UserContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.cognito.clientcontext.data.UserContextDataProvider.ContextDataJsonKeys (com.amazonaws.cognito.clientcontext.data.UserContextDataProvider$ContextDataJsonKeys)
.class Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$ContextDataJsonKeys;
.super Ljava/lang/Object;
.source "UserContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextDataJsonKeys"
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "contextData"

.field private static final c:Ljava/lang/String; = "username"

.field private static final d:Ljava/lang/String; = "userPoolId"

.field private static final e:Ljava/lang/String; = "timestamp"

.field private static final f:Ljava/lang/String; = "payload"

.field private static final g:Ljava/lang/String; = "version"

.field private static final h:Ljava/lang/String; = "signature"


# instance fields
.field final synthetic a:Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;


# direct methods
.method private constructor <init>(Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$ContextDataJsonKeys;->a:Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.amazonaws.cognito.clientcontext.data.UserContextDataProvider.InstanceHolder (com.amazonaws.cognito.clientcontext.data.UserContextDataProvider$InstanceHolder)
.class Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;
.super Ljava/lang/Object;
.source "UserContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;-><init>(Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$1;)V

    sput-object v0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;->a:Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;
    .registers 1

    .line 47
    sget-object v0, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder;->a:Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    return-object v0
.end method
