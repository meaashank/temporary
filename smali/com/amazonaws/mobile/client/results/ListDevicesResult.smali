###### Class com.amazonaws.mobile.client.results.ListDevicesResult (com.amazonaws.mobile.client.results.ListDevicesResult)
.class public Lcom/amazonaws/mobile/client/results/ListDevicesResult;
.super Ljava/lang/Object;
.source "ListDevicesResult.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/results/Device;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/results/Device;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/ListDevicesResult;->a:Ljava/util/List;

    .line 11
    iput-object p2, p0, Lcom/amazonaws/mobile/client/results/ListDevicesResult;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/results/Device;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/ListDevicesResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/ListDevicesResult;->b:Ljava/lang/String;

    return-object v0
.end method
