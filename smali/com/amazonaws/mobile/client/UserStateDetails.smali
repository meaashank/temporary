###### Class com.amazonaws.mobile.client.UserStateDetails (com.amazonaws.mobile.client.UserStateDetails)
.class public Lcom/amazonaws/mobile/client/UserStateDetails;
.super Ljava/lang/Object;
.source "UserStateDetails.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/UserState;

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


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/UserState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    .line 29
    iput-object p2, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobile/client/UserState;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

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

    .line 37
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 42
    instance-of v0, p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    if-eqz v0, :cond_28

    .line 43
    check-cast p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 45
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    iget-object v1, p1, Lcom/amazonaws/mobile/client/UserStateDetails;->a:Lcom/amazonaws/mobile/client/UserState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/UserState;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 49
    :cond_12
    iget-object v0, p1, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    if-ne v0, v2, :cond_1a

    const/4 p1, 0x1

    return p1

    .line 51
    :cond_1a
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    if-nez v0, :cond_1f

    return v1

    .line 54
    :cond_1f
    iget-object v0, p0, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/UserStateDetails;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 57
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
