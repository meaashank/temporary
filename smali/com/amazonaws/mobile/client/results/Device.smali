###### Class com.amazonaws.mobile.client.results.Device (com.amazonaws.mobile.client.results.Device)
.class public Lcom/amazonaws/mobile/client/results/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Date;

.field private final d:Ljava/util/Date;

.field private final e:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazonaws/mobile/client/results/Device;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/amazonaws/mobile/client/results/Device;->b:Ljava/util/Map;

    .line 16
    iput-object p3, p0, Lcom/amazonaws/mobile/client/results/Device;->c:Ljava/util/Date;

    .line 17
    iput-object p4, p0, Lcom/amazonaws/mobile/client/results/Device;->d:Ljava/util/Date;

    .line 18
    iput-object p5, p0, Lcom/amazonaws/mobile/client/results/Device;->e:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/Device;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/Device;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/Device;->c:Ljava/util/Date;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/Device;->d:Ljava/util/Date;

    return-object v0
.end method

.method public e()Ljava/util/Date;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/amazonaws/mobile/client/results/Device;->e:Ljava/util/Date;

    return-object v0
.end method
