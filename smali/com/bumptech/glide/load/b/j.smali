###### Class com.bumptech.glide.load.b.j (com.bumptech.glide.load.b.j)
.class public final Lcom/bumptech/glide/load/b/j;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/j$b;,
        Lcom/bumptech/glide/load/b/j$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/util/Map;
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
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/b/i;

    .line 61
    invoke-interface {v3}, Lcom/bumptech/glide/load/b/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x2c

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 69
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/bumptech/glide/load/b/j;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/b/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_33
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->d:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 32
    monitor-enter p0

    .line 33
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->d:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j;->d:Ljava/util/Map;

    .line 36
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 39
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->d:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 81
    instance-of v0, p1, Lcom/bumptech/glide/load/b/j;

    if-eqz v0, :cond_f

    .line 82
    check-cast p1, Lcom/bumptech/glide/load/b/j;

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LazyHeaders{headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.b.j.a (com.bumptech.glide.load.b.j$a)
.class public final Lcom/bumptech/glide/load/b/j$a;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "User-Agent"

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 106
    invoke-static {}, Lcom/bumptech/glide/load/b/j$a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 115
    sget-object v1, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "User-Agent"

    .line 116
    new-instance v2, Lcom/bumptech/glide/load/b/j$b;

    sget-object v3, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/j$a;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->d:Z

    .line 124
    sget-object v1, Lcom/bumptech/glide/load/b/j$a;->c:Ljava/util/Map;

    iput-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    .line 125
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method static b()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "http.agent"

    .line 237
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 242
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_39

    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_29

    const/16 v5, 0x9

    if-ne v4, v5, :cond_31

    :cond_29
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_31

    .line 247
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_31
    const/16 v4, 0x3f

    .line 249
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 252
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 2

    .line 206
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->d:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->d:Z

    .line 208
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j$a;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    :cond_d
    return-void
.end method

.method private d()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 222
    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_34
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    if-eqz v0, :cond_11

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;

    move-result-object p1

    return-object p1

    .line 154
    :cond_11
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j$a;->c()V

    .line 155
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/b/j$a;
    .registers 4

    .line 136
    new-instance v0, Lcom/bumptech/glide/load/b/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/b/j$a;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/bumptech/glide/load/b/j;
    .registers 3

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->d:Z

    .line 217
    new-instance v0, Lcom/bumptech/glide/load/b/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/j;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;
    .registers 4

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/j$a;->c()V

    if-nez p2, :cond_b

    .line 182
    iget-object p2, p0, Lcom/bumptech/glide/load/b/j$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 184
    :cond_b
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_15
    iget-boolean p2, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    if-eqz p2, :cond_24

    const-string p2, "User-Agent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    :cond_24
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/b/j$a;
    .registers 4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 170
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/b/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/load/b/j$a;

    move-result-object p1

    return-object p1
.end method

###### Class com.bumptech.glide.load.b.j.b (com.bumptech.glide.load.b.j$b)
.class final Lcom/bumptech/glide/load/b/j$b;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/bumptech/glide/load/b/j$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 278
    instance-of v0, p1, Lcom/bumptech/glide/load/b/j$b;

    if-eqz v0, :cond_f

    .line 279
    check-cast p1, Lcom/bumptech/glide/load/b/j$b;

    .line 280
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/j$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringHeaderFactory{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
