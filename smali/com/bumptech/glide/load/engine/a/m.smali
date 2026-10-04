###### Class com.bumptech.glide.load.engine.a.m (com.bumptech.glide.load.engine.a.m)
.class public Lcom/bumptech/glide/load/engine/a/m;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/g<",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/a/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/bumptech/glide/h/g;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/h/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/m;->a:Lcom/bumptech/glide/h/g;

    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/a/m$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/m$1;-><init>(Lcom/bumptech/glide/load/engine/a/m;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/a/a;->b(ILcom/bumptech/glide/h/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/m;->b:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/m;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/m$a;

    .line 52
    :try_start_c
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/a/m$a;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/c;->a(Ljava/security/MessageDigest;)V

    .line 54
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/a/m$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/h/l;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_21

    .line 56
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/m;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_21
    move-exception p1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/m;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;)Ljava/lang/String;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/m;->a:Lcom/bumptech/glide/h/g;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/m;->a:Lcom/bumptech/glide/h/g;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    if-nez v1, :cond_12

    .line 41
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a/m;->b(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_12
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/m;->a:Lcom/bumptech/glide/h/g;

    monitor-enter v2

    .line 44
    :try_start_15
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/m;->a:Lcom/bumptech/glide/h/g;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/h/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v2

    return-object v1

    :catchall_1c
    move-exception p1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1

    :catchall_1f
    move-exception p1

    .line 39
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

###### Class com.bumptech.glide.load.engine.a.m.AnonymousClass1 (com.bumptech.glide.load.engine.a.m$1)
.class Lcom/bumptech/glide/load/engine/a/m$1;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$a<",
        "Lcom/bumptech/glide/load/engine/a/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/a/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/m;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/m$1;->a:Lcom/bumptech/glide/load/engine/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/a/m$a;
    .registers 3

    .line 28
    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/engine/a/m$a;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a/m$a;-><init>(Ljava/security/MessageDigest;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/m$1;->a()Lcom/bumptech/glide/load/engine/a/m$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.a.m.a (com.bumptech.glide.load.engine.a.m$a)
.class final Lcom/bumptech/glide/load/engine/a/m$a;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/bumptech/glide/h/a/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/bumptech/glide/h/a/c;->a()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/m$a;->b:Lcom/bumptech/glide/h/a/c;

    .line 66
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/m$a;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public n_()Lcom/bumptech/glide/h/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/m$a;->b:Lcom/bumptech/glide/h/a/c;

    return-object v0
.end method
