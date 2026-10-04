###### Class com.amazonaws.util.TimingInfoFullSupport (com.amazonaws.util.TimingInfoFullSupport)
.class Lcom/amazonaws/util/TimingInfoFullSupport;
.super Lcom/amazonaws/util/TimingInfo;
.source "TimingInfoFullSupport.java"


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .registers 3

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/TimingInfoFullSupport;->a(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-ltz p2, :cond_20

    if-eqz p1, :cond_20

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_20

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_19

    goto :goto_20

    .line 83
    :cond_19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/util/TimingInfo;

    return-object p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_14
    invoke-virtual {p2}, Lcom/amazonaws/util/TimingInfo;->o()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 61
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 63
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip submeasurement timing info with no end time for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :goto_3a
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2d

    .line 93
    :cond_e
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2c

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_2c

    .line 98
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/util/TimingInfo;

    return-object p1

    :cond_2c
    :goto_2c
    return-object v1

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 130
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/TimingInfoFullSupport;->d(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 133
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 136
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/TimingInfoFullSupport;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public r()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->b:Ljava/util/Map;

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->c:Ljava/util/Map;

    return-object v0
.end method
