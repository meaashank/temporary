###### Class com.bumptech.glide.c.d (com.bumptech.glide.c.d)
.class public Lcom/bumptech/glide/c/d;
.super Ljava/lang/Object;
.source "GifHeader.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1


# instance fields
.field c:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field d:I

.field e:I

.field f:Lcom/bumptech/glide/c/c;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/c/c;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:I

.field j:Z

.field k:I

.field l:I

.field m:I

.field n:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field o:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/c/d;->c:[I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/bumptech/glide/c/d;->d:I

    .line 26
    iput v0, p0, Lcom/bumptech/glide/c/d;->e:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/bumptech/glide/c/d;->o:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/bumptech/glide/c/d;->i:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/bumptech/glide/c/d;->h:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/bumptech/glide/c/d;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/bumptech/glide/c/d;->d:I

    return v0
.end method
