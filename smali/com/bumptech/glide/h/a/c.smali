###### Class com.bumptech.glide.h.a.c (com.bumptech.glide.h.a.c)
.class public abstract Lcom/bumptech/glide/h/a/c;
.super Ljava/lang/Object;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h/a/c$a;,
        Lcom/bumptech/glide/h/a/c$b;
    }
.end annotation


# static fields
.field private static final a:Z = false


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/h/a/c$1;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/h/a/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/h/a/c;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 20
    new-instance v0, Lcom/bumptech/glide/h/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/h/a/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract a(Z)V
.end method

.method public abstract b()V
.end method

###### Class com.bumptech.glide.h.a.c.AnonymousClass1 (com.bumptech.glide.h.a.c$1)
.class synthetic Lcom/bumptech/glide/h/a/c$1;
.super Ljava/lang/Object;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bumptech.glide.h.a.c.a (com.bumptech.glide.h.a.c$a)
.class Lcom/bumptech/glide/h/a/c$a;
.super Lcom/bumptech/glide/h/a/c;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private volatile a:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/bumptech/glide/h/a/c;-><init>(Lcom/bumptech/glide/h/a/c$1;)V

    return-void
.end method


# virtual methods
.method a(Z)V
    .registers 3

    if-eqz p1, :cond_c

    .line 73
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Released"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/h/a/c$a;->a:Ljava/lang/RuntimeException;

    goto :goto_f

    :cond_c
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/bumptech/glide/h/a/c$a;->a:Ljava/lang/RuntimeException;

    :goto_f
    return-void
.end method

.method public b()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/h/a/c$a;->a:Ljava/lang/RuntimeException;

    if-nez v0, :cond_5

    return-void

    .line 66
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/bumptech/glide/h/a/c$a;->a:Ljava/lang/RuntimeException;

    const-string v2, "Already released"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.bumptech.glide.h.a.c.b (com.bumptech.glide.h.a.c$b)
.class Lcom/bumptech/glide/h/a/c$b;
.super Lcom/bumptech/glide/h/a/c;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private volatile a:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/bumptech/glide/h/a/c;-><init>(Lcom/bumptech/glide/h/a/c$1;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/bumptech/glide/h/a/c$b;->a:Z

    return-void
.end method

.method public b()V
    .registers 3

    .line 45
    iget-boolean v0, p0, Lcom/bumptech/glide/h/a/c$b;->a:Z

    if-nez v0, :cond_5

    return-void

    .line 46
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
