###### Class com.gaia.ngallery.sync.c.b (com.gaia.ngallery.sync.c.b)
.class public abstract Lcom/gaia/ngallery/sync/c/b;
.super Ljava/lang/Object;
.source "PairMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "LEFT:Ljava/lang/Object;",
        "TRIGHT:",
        "Ljava/lang/Object;",
        "TRESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/gaia/ngallery/sync/c/b;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRIGHT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Iterable;Ljava/lang/Iterable;Lcom/gaia/ngallery/sync/c/a;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT",
            "LEFT;",
            ">;",
            "Ljava/lang/Iterable<",
            "TTRIGHT;>;",
            "Lcom/gaia/ngallery/sync/c/a<",
            "TT",
            "LEFT;",
            "TTRIGHT;TTRESU",
            "LT;",
            ">;)",
            "Ljava/util/List<",
            "TTRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/sync/c/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 24
    :cond_1b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/sync/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    invoke-interface {p3, v3, v1}, Lcom/gaia/ngallery/sync/c/a;->onPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 39
    :cond_41
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-interface {p3, v0, v1}, Lcom/gaia/ngallery/sync/c/a;->onPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_5c
    return-object p1
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LEFT;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
