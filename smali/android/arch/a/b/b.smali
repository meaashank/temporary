###### Class android.arch.a.b.b (android.arch.a.b.b)
.class public Landroid/arch/a/b/b;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/a/b/b$c;,
        Landroid/arch/a/b/b$f;,
        Landroid/arch/a/b/b$d;,
        Landroid/arch/a/b/b$b;,
        Landroid/arch/a/b/b$a;,
        Landroid/arch/a/b/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/arch/a/b/b$f<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/arch/a/b/b;->d:I

    return-void
.end method

.method static synthetic a(Landroid/arch/a/b/b;)Landroid/arch/a/b/b$c;
    .registers 1

    .line 35
    iget-object p0, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/arch/a/b/b;->d:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)Landroid/arch/a/b/b$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    :goto_2
    if-eqz v0, :cond_10

    .line 47
    iget-object v1, v0, Landroid/arch/a/b/b$c;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_10

    .line 50
    :cond_d
    iget-object v0, v0, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    goto :goto_2

    :cond_10
    :goto_10
    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Landroid/arch/a/b/b;->a(Ljava/lang/Object;)Landroid/arch/a/b/b$c;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 67
    iget-object p1, v0, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    return-object p1

    .line 69
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/arch/a/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/a/b/b$c;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/a/b/b$c;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Landroid/arch/a/b/b$c;

    invoke-direct {v0, p1, p2}, Landroid/arch/a/b/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget p1, p0, Landroid/arch/a/b/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/arch/a/b/b;->d:I

    .line 76
    iget-object p1, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    if-nez p1, :cond_16

    .line 77
    iput-object v0, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    .line 78
    iget-object p1, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    iput-object p1, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    return-object v0

    .line 82
    :cond_16
    iget-object p1, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    iput-object v0, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    .line 83
    iget-object p1, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    iput-object p1, v0, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    .line 84
    iput-object v0, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Landroid/arch/a/b/b;->a(Ljava/lang/Object;)Landroid/arch/a/b/b$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 101
    :cond_8
    iget v1, p0, Landroid/arch/a/b/b;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/arch/a/b/b;->d:I

    .line 102
    iget-object v1, p0, Landroid/arch/a/b/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 103
    iget-object v1, p0, Landroid/arch/a/b/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/a/b/b$f;

    .line 104
    invoke-interface {v2, p1}, Landroid/arch/a/b/b$f;->a_(Landroid/arch/a/b/b$c;)V

    goto :goto_20

    .line 108
    :cond_30
    iget-object v1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    if-eqz v1, :cond_3b

    .line 109
    iget-object v1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    iget-object v2, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    iput-object v2, v1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    goto :goto_3f

    .line 111
    :cond_3b
    iget-object v1, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    iput-object v1, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    .line 114
    :goto_3f
    iget-object v1, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    if-eqz v1, :cond_4a

    .line 115
    iget-object v1, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    iget-object v2, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    iput-object v2, v1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    goto :goto_4e

    .line 117
    :cond_4a
    iget-object v1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    iput-object v1, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    .line 120
    :goto_4e
    iput-object v0, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    .line 121
    iput-object v0, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    .line 122
    iget-object p1, p1, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public b()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/arch/a/b/b$b;

    iget-object v1, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    iget-object v2, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    invoke-direct {v0, v1, v2}, Landroid/arch/a/b/b$b;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    .line 150
    iget-object v1, p0, Landroid/arch/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Landroid/arch/a/b/b$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/a/b/b<",
            "TK;TV;>.d;"
        }
    .end annotation

    .line 159
    new-instance v0, Landroid/arch/a/b/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/arch/a/b/b$d;-><init>(Landroid/arch/a/b/b;Landroid/arch/a/b/b$1;)V

    .line 160
    iget-object v1, p0, Landroid/arch/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    return-object v0
.end method

.method public e()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 183
    :cond_4
    instance-of v1, p1, Landroid/arch/a/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 186
    :cond_a
    check-cast p1, Landroid/arch/a/b/b;

    .line 187
    invoke-virtual {p0}, Landroid/arch/a/b/b;->a()I

    move-result v1

    invoke-virtual {p1}, Landroid/arch/a/b/b;->a()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 190
    :cond_17
    invoke-virtual {p0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 192
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_39

    if-nez v4, :cond_41

    :cond_39
    if-eqz v3, :cond_1f

    .line 196
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_41
    return v2

    .line 200
    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/arch/a/b/b$a;

    iget-object v1, p0, Landroid/arch/a/b/b;->a:Landroid/arch/a/b/b$c;

    iget-object v2, p0, Landroid/arch/a/b/b;->b:Landroid/arch/a/b/b$c;

    invoke-direct {v0, v1, v2}, Landroid/arch/a/b/b$a;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    .line 140
    iget-object v1, p0, Landroid/arch/a/b/b;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ", "

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_2d
    const-string v1, "]"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class android.arch.a.b.b.AnonymousClass1 (android.arch.a.b.b$1)
.class synthetic Landroid/arch/a/b/b$1;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.arch.a.b.b.a (android.arch.a.b.b$a)
.class Landroid/arch/a/b/b$a;
.super Landroid/arch/a/b/b$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/arch/a/b/b$e;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method a(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 275
    iget-object p1, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    return-object p1
.end method

.method b(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-object p1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    return-object p1
.end method

###### Class android.arch.a.b.b.C0000b (android.arch.a.b.b$b)
.class Landroid/arch/a/b/b$b;
.super Landroid/arch/a/b/b$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/arch/a/b/b$e;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method a(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 292
    iget-object p1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    return-object p1
.end method

.method b(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 297
    iget-object p1, p1, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    return-object p1
.end method

###### Class android.arch.a.b.b.c (android.arch.a.b.b$c)
.class Landroid/arch/a/b/b$c;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field c:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Landroid/arch/a/b/b$c;->a:Ljava/lang/Object;

    .line 347
    iput-object p2, p0, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 377
    :cond_4
    instance-of v1, p1, Landroid/arch/a/b/b$c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 380
    :cond_a
    check-cast p1, Landroid/arch/a/b/b$c;

    .line 381
    iget-object v1, p0, Landroid/arch/a/b/b$c;->a:Ljava/lang/Object;

    iget-object v3, p1, Landroid/arch/a/b/b$c;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    iget-object p1, p1, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroid/arch/a/b/b$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 364
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "An entry modification is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/arch/a/b/b$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/a/b/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class android.arch.a.b.b.d (android.arch.a.b.b$d)
.class Landroid/arch/a/b/b$d;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Landroid/arch/a/b/b$f;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/a/b/b$f<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/a/b/b;

.field private b:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/arch/a/b/b;)V
    .registers 2

    .line 301
    iput-object p1, p0, Landroid/arch/a/b/b$d;->a:Landroid/arch/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Landroid/arch/a/b/b$d;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/a/b/b;Landroid/arch/a/b/b$1;)V
    .registers 3

    .line 301
    invoke-direct {p0, p1}, Landroid/arch/a/b/b$d;-><init>(Landroid/arch/a/b/b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 323
    iget-boolean v0, p0, Landroid/arch/a/b/b$d;->c:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Landroid/arch/a/b/b$d;->c:Z

    .line 325
    iget-object v0, p0, Landroid/arch/a/b/b$d;->a:Landroid/arch/a/b/b;

    invoke-static {v0}, Landroid/arch/a/b/b;->a(Landroid/arch/a/b/b;)Landroid/arch/a/b/b$c;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    goto :goto_1c

    .line 327
    :cond_10
    iget-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    iget-object v0, v0, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    .line 329
    :goto_1c
    iget-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    return-object v0
.end method

.method public a_(Landroid/arch/a/b/b$c;)V
    .registers 3
    .param p1    # Landroid/arch/a/b/b$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    if-ne p1, v0, :cond_13

    .line 308
    iget-object p1, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    iget-object p1, p1, Landroid/arch/a/b/b$c;->d:Landroid/arch/a/b/b$c;

    iput-object p1, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    .line 309
    iget-object p1, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iput-boolean p1, p0, Landroid/arch/a/b/b$d;->c:Z

    :cond_13
    return-void
.end method

.method public hasNext()Z
    .registers 4

    .line 315
    iget-boolean v0, p0, Landroid/arch/a/b/b$d;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 316
    iget-object v0, p0, Landroid/arch/a/b/b$d;->a:Landroid/arch/a/b/b;

    invoke-static {v0}, Landroid/arch/a/b/b;->a(Landroid/arch/a/b/b;)Landroid/arch/a/b/b$c;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 318
    :cond_10
    iget-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/arch/a/b/b$d;->b:Landroid/arch/a/b/b$c;

    iget-object v0, v0, Landroid/arch/a/b/b$c;->c:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .line 301
    invoke-virtual {p0}, Landroid/arch/a/b/b$d;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

###### Class android.arch.a.b.b.e (android.arch.a.b.b$e)
.class abstract Landroid/arch/a/b/b$e;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Landroid/arch/a/b/b$f;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/a/b/b$f<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    .line 225
    iput-object p1, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    return-void
.end method

.method private b()Landroid/arch/a/b/b$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    iget-object v1, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    if-nez v0, :cond_b

    goto :goto_12

    .line 253
    :cond_b
    iget-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    invoke-virtual {p0, v0}, Landroid/arch/a/b/b$e;->a(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public a()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    .line 259
    invoke-direct {p0}, Landroid/arch/a/b/b$e;->b()Landroid/arch/a/b/b$c;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    return-object v0
.end method

.method public a_(Landroid/arch/a/b/b$c;)V
    .registers 3
    .param p1    # Landroid/arch/a/b/b$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    .line 237
    iput-object v0, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    .line 240
    :cond_d
    iget-object v0, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    if-ne v0, p1, :cond_19

    .line 241
    iget-object v0, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    invoke-virtual {p0, v0}, Landroid/arch/a/b/b$e;->b(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/a/b/b$e;->a:Landroid/arch/a/b/b$c;

    .line 244
    :cond_19
    iget-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    if-ne v0, p1, :cond_23

    .line 245
    invoke-direct {p0}, Landroid/arch/a/b/b$e;->b()Landroid/arch/a/b/b$c;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    :cond_23
    return-void
.end method

.method abstract b(Landroid/arch/a/b/b$c;)Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/arch/a/b/b$e;->b:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .line 218
    invoke-virtual {p0}, Landroid/arch/a/b/b$e;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

###### Class android.arch.a.b.b.f (android.arch.a.b.b$f)
.class interface abstract Landroid/arch/a/b/b$f;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a_(Landroid/arch/a/b/b$c;)V
    .param p1    # Landroid/arch/a/b/b$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method
