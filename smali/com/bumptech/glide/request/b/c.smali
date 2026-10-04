###### Class com.bumptech.glide.request.b.c (com.bumptech.glide.request.b.c)
.class public Lcom/bumptech/glide/request/b/c;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private c:Lcom/bumptech/glide/request/b/d;


# direct methods
.method protected constructor <init>(IZ)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bumptech/glide/request/b/c;->a:I

    .line 25
    iput-boolean p2, p0, Lcom/bumptech/glide/request/b/c;->b:Z

    return-void
.end method

.method private a()Lcom/bumptech/glide/request/b/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/b/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/request/b/c;->c:Lcom/bumptech/glide/request/b/d;

    if-nez v0, :cond_f

    .line 36
    new-instance v0, Lcom/bumptech/glide/request/b/d;

    iget v1, p0, Lcom/bumptech/glide/request/b/c;->a:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/b/c;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/b/d;-><init>(IZ)V

    iput-object v0, p0, Lcom/bumptech/glide/request/b/c;->c:Lcom/bumptech/glide/request/b/d;

    .line 38
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/b/c;->c:Lcom/bumptech/glide/request/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/b/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/b/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_9

    .line 31
    invoke-static {}, Lcom/bumptech/glide/request/b/e;->b()Lcom/bumptech/glide/request/b/f;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/request/b/c;->a()Lcom/bumptech/glide/request/b/f;

    move-result-object p1

    :goto_d
    return-object p1
.end method

###### Class com.bumptech.glide.request.b.c.a (com.bumptech.glide.request.b.c$a)
.class public Lcom/bumptech/glide/request/b/c$a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x12c


# instance fields
.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x12c

    .line 51
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/b/c$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/bumptech/glide/request/b/c$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/bumptech/glide/request/b/c$a;
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/bumptech/glide/request/b/c$a;->c:Z

    return-object p0
.end method

.method public a()Lcom/bumptech/glide/request/b/c;
    .registers 4

    .line 79
    new-instance v0, Lcom/bumptech/glide/request/b/c;

    iget v1, p0, Lcom/bumptech/glide/request/b/c$a;->b:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/b/c$a;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/b/c;-><init>(IZ)V

    return-object v0
.end method
