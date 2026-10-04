###### Class com.bumptech.glide.load.b.m (com.bumptech.glide.load.b.m)
.class public Lcom/bumptech/glide/load/b/m;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I = 0xfa


# instance fields
.field private final b:Lcom/bumptech/glide/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/g<",
            "Lcom/bumptech/glide/load/b/m$a<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0xfa

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/m;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/b/m$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/b/m$1;-><init>(Lcom/bumptech/glide/load/b/m;J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/m;->b:Lcom/bumptech/glide/h/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 49
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/bumptech/glide/load/b/m;->b:Lcom/bumptech/glide/h/g;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/m$a;->a()V

    return-object p2
.end method

.method public a()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/b/m;->b:Lcom/bumptech/glide/h/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/g;->c()V

    return-void
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/m$a;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/bumptech/glide/load/b/m;->b:Lcom/bumptech/glide/h/g;

    invoke-virtual {p2, p1, p4}, Lcom/bumptech/glide/h/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.bumptech.glide.load.b.m.AnonymousClass1 (com.bumptech.glide.load.b.m$1)
.class Lcom/bumptech/glide/load/b/m$1;
.super Lcom/bumptech/glide/h/g;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/b/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/h/g<",
        "Lcom/bumptech/glide/load/b/m$a<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/m;J)V
    .registers 4

    .line 31
    iput-object p1, p0, Lcom/bumptech/glide/load/b/m$1;->a:Lcom/bumptech/glide/load/b/m;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/h/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/b/m$a;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/m$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/m$a<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/m$a;->a()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    check-cast p1, Lcom/bumptech/glide/load/b/m$a;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/m$1;->a(Lcom/bumptech/glide/load/b/m$a;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.bumptech.glide.load.b.m.a (com.bumptech.glide.load.b.m$a)
.class final Lcom/bumptech/glide/load/b/m$a;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/b/m$a<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/m$a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/m$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/b/m$a<",
            "TA;>;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/b/m$a;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/b/m$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/m$a;

    .line 88
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    if-nez v1, :cond_13

    .line 90
    new-instance v1, Lcom/bumptech/glide/load/b/m$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/b/m$a;-><init>()V

    .line 93
    :cond_13
    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/b/m$a;->b(Ljava/lang/Object;II)V

    return-object v1

    :catchall_17
    move-exception p0

    .line 88
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private b(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/bumptech/glide/load/b/m$a;->d:Ljava/lang/Object;

    .line 102
    iput p2, p0, Lcom/bumptech/glide/load/b/m$a;->c:I

    .line 103
    iput p3, p0, Lcom/bumptech/glide/load/b/m$a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 107
    sget-object v0, Lcom/bumptech/glide/load/b/m$a;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/b/m$a;->a:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 114
    instance-of v0, p1, Lcom/bumptech/glide/load/b/m$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 115
    check-cast p1, Lcom/bumptech/glide/load/b/m$a;

    .line 116
    iget v0, p0, Lcom/bumptech/glide/load/b/m$a;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/b/m$a;->c:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lcom/bumptech/glide/load/b/m$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/b/m$a;->b:I

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/bumptech/glide/load/b/m$a;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/m$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 123
    iget v0, p0, Lcom/bumptech/glide/load/b/m$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget v1, p0, Lcom/bumptech/glide/load/b/m$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v1, p0, Lcom/bumptech/glide/load/b/m$a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
