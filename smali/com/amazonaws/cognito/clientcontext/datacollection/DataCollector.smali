###### Class com.amazonaws.cognito.clientcontext.datacollection.DataCollector (com.amazonaws.cognito.clientcontext.datacollection.DataCollector)
.class public abstract Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;
.super Ljava/lang/Object;
.source "DataCollector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/util/Map;
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
.end method
