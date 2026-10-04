###### Class com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator (com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator)
.class public Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
.super Ljava/lang/Object;
.source "ContextDataAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
    .registers 1

    .line 60
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;->a()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_22
    return-void
.end method

.method private b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;

    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/BuildDataCollector;

    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/BuildDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/DeviceDataCollector;

    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/DeviceDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/TelephonyDataCollector;

    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/TelephonyDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;

    .line 74
    invoke-virtual {v2, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 75
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_b

    .line 77
    :cond_1f
    invoke-direct {p0, v0}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a(Ljava/util/Map;)V

    return-object v0
.end method

###### Class com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator.AnonymousClass1 (com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator$1)
.class synthetic Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$1;
.super Ljava/lang/Object;
.source "ContextDataAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator.InstanceHolder (com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator$InstanceHolder)
.class Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;
.super Ljava/lang/Object;
.source "ContextDataAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;-><init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$1;)V

    sput-object v0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;->a:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
    .registers 1

    .line 38
    sget-object v0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;->a:Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    return-object v0
.end method
