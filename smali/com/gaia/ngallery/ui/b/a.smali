###### Class com.gaia.ngallery.ui.b.a (com.gaia.ngallery.ui.b.a)
.class public Lcom/gaia/ngallery/ui/b/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/a$e;,
        Lcom/gaia/ngallery/ui/b/a$d;,
        Lcom/gaia/ngallery/ui/b/a$c;,
        Lcom/gaia/ngallery/ui/b/a$a;,
        Lcom/gaia/ngallery/ui/b/a$f;,
        Lcom/gaia/ngallery/ui/b/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/gaia/ngallery/f/c;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:[J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/gaia/ngallery/ui/b/a;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/gaia/ngallery/f/c;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    const/4 p2, 0x0

    .line 49
    new-array p2, p2, [J

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/a;->i:[J

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/a;->e:Landroid/view/LayoutInflater;

    .line 59
    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a;->f:Lcom/gaia/ngallery/f/c;

    .line 60
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a;->g:Landroid/content/Context;

    const p2, 0x1010036

    .line 62
    invoke-static {p1, p2}, Lcom/prism/commons/f/t;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/b/a;->j:I

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/a;)[J
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/a;->i:[J

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/gaia/ngallery/ui/b/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/b/a;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/b/a;->notifyItemRemoved(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/b/a;",
            ">;)V"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/gaia/ngallery/ui/b/a;->a:Ljava/lang/String;

    const-string v1, "patchAlbumsChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 78
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/b/a;

    .line 80
    sget-object v4, Lcom/gaia/ngallery/ui/b/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "patchAlbumsChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 82
    :cond_3e
    new-instance v2, Lcom/gaia/ngallery/ui/b/a$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/gaia/ngallery/ui/b/a$1;-><init>(Lcom/gaia/ngallery/ui/b/a;Ljava/util/List;Ljava/util/List;[J)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v2

    .line 116
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    .line 117
    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->i:[J

    .line 118
    invoke-virtual {v2, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patchAlbumsChange: size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   newlistsize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    .line 152
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/e;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_18
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 7
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/b/a;

    .line 143
    sget-object v1, Lcom/gaia/ngallery/ui/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/a;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    check-cast p1, Lcom/gaia/ngallery/ui/b/a$b;

    .line 145
    invoke-virtual {p1, v0, p2}, Lcom/gaia/ngallery/ui/b/a$b;->b(Lcom/gaia/ngallery/b/a;I)V

    .line 146
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a;->i:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    aput-wide v0, p1, p2

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 127
    sget-object v0, Lcom/gaia/ngallery/ui/b/a;->a:Ljava/lang/String;

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/gaia/ngallery/i$k;->layout_album_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p2, :cond_1c

    .line 131
    new-instance p2, Lcom/gaia/ngallery/ui/b/a$c;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->e:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a;->f:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p1, v0, v1}, Lcom/gaia/ngallery/ui/b/a$c;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V

    goto :goto_32

    :cond_1c
    const/4 v0, 0x1

    if-ne p2, v0, :cond_29

    .line 133
    new-instance p2, Lcom/gaia/ngallery/ui/b/a$f;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->e:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a;->f:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p1, v0, v1}, Lcom/gaia/ngallery/ui/b/a$f;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V

    goto :goto_32

    .line 135
    :cond_29
    new-instance p2, Lcom/gaia/ngallery/ui/b/a$a;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a;->e:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a;->f:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p1, v0, v1}, Lcom/gaia/ngallery/ui/b/a$a;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V

    .line 136
    :goto_32
    iget-object p1, p2, Lcom/gaia/ngallery/ui/b/a$b;->a:Landroid/support/v7/widget/AppCompatImageView;

    iget v0, p0, Lcom/gaia/ngallery/ui/b/a;->j:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2
.end method

###### Class com.gaia.ngallery.ui.b.a.AnonymousClass1 (com.gaia.ngallery.ui.b.a$1)
.class Lcom/gaia/ngallery/ui/b/a$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:[J

.field final synthetic d:Lcom/gaia/ngallery/ui/b/a;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/a;Ljava/util/List;Ljava/util/List;[J)V
    .registers 5

    .line 82
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$1;->d:Lcom/gaia/ngallery/ui/b/a;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/a$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/gaia/ngallery/ui/b/a$1;->c:[J

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 9

    .line 103
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$1;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/b/a;

    .line 104
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$1;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/b/a;

    .line 105
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/a$1;->c:[J

    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/a$1;->d:Lcom/gaia/ngallery/ui/b/a;

    invoke-static {v3}, Lcom/gaia/ngallery/ui/b/a;->a(Lcom/gaia/ngallery/ui/b/a;)[J

    move-result-object v3

    aget-wide v4, v3, p1

    aput-wide v4, v2, p2

    .line 112
    invoke-virtual {v1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_44

    .line 113
    invoke-virtual {v0}, Lcom/gaia/ngallery/b/a;->c()J

    move-result-wide v0

    iget-object p2, p0, Lcom/gaia/ngallery/ui/b/a$1;->d:Lcom/gaia/ngallery/ui/b/a;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/b/a;->a(Lcom/gaia/ngallery/ui/b/a;)[J

    move-result-object p2

    aget-wide p1, p2, p1

    cmp-long v2, v0, p1

    if-gtz v2, :cond_44

    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    return p1
.end method

.method public areItemsTheSame(II)Z
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$1;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/b/a;

    .line 96
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    .line 97
    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

###### Class com.gaia.ngallery.ui.b.a.C0062a (com.gaia.ngallery.ui.b.a$a)
.class Lcom/gaia/ngallery/ui/b/a$a;
.super Lcom/gaia/ngallery/ui/b/a$b;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V
    .registers 4

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/b/a$b;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V

    .line 266
    sget p2, Lcom/gaia/ngallery/i$h;->iv_gallery_content_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/a$a;->b:Landroid/widget/ImageView;

    .line 267
    sget p2, Lcom/gaia/ngallery/i$h;->iv_video_cover:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->c:Landroid/view/View;

    .line 268
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->a:Landroid/support/v7/widget/AppCompatImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 273
    sget v0, Lcom/gaia/ngallery/i$k;->layout_album_item_album_cover:I

    return v0
.end method

.method a(Lcom/gaia/ngallery/b/a;I)V
    .registers 9

    .line 279
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->f()I

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p2, :cond_57

    .line 280
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->f()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/b/a;->a(I)Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object p2

    .line 281
    invoke-static {}, Lcom/gaia/ngallery/ui/b/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cover for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->b:Landroid/widget/ImageView;

    invoke-static {p1, p2, v1, v2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    .line 283
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_51

    .line 284
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 286
    :cond_51
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 289
    :cond_57
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$a;->b:Landroid/widget/ImageView;

    sget p2, Lcom/gaia/ngallery/i$m;->ic_empty_album_preview:I

    invoke-static {p1, p2, v1}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    :goto_63
    return-void
.end method

###### Class com.gaia.ngallery.ui.b.a.b (com.gaia.ngallery.ui.b.a$b)
.class abstract Lcom/gaia/ngallery/ui/b/a$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field protected a:Landroid/support/v7/widget/AppCompatImageView;

.field private b:Lcom/gaia/ngallery/f/c;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V
    .registers 5

    .line 182
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 183
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/a$b;->f:Landroid/view/LayoutInflater;

    .line 184
    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->b:Lcom/gaia/ngallery/f/c;

    .line 185
    sget p3, Lcom/gaia/ngallery/i$h;->tv_album_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->c:Landroid/widget/TextView;

    .line 186
    sget p3, Lcom/gaia/ngallery/i$h;->tv_album_desc:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->d:Landroid/widget/TextView;

    .line 187
    sget p3, Lcom/gaia/ngallery/i$h;->album_item_cover_card:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->e:Landroid/view/ViewGroup;

    .line 188
    sget p3, Lcom/gaia/ngallery/i$h;->iv_album_more_ops:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->a:Landroid/support/v7/widget/AppCompatImageView;

    .line 189
    iget-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->e:Landroid/view/ViewGroup;

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->a:Landroid/support/v7/widget/AppCompatImageView;

    new-instance v0, Lcom/gaia/ngallery/ui/b/a$b$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/b/a$b$1;-><init>(Lcom/gaia/ngallery/ui/b/a$b;)V

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance p3, Lcom/gaia/ngallery/ui/b/a$b$2;

    invoke-direct {p3, p0}, Lcom/gaia/ngallery/ui/b/a$b$2;-><init>(Lcom/gaia/ngallery/ui/b/a$b;)V

    .line 209
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    iget-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p3, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 212
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/a$b;->a()I

    move-result p1

    iget-object p3, p0, Lcom/gaia/ngallery/ui/b/a$b;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/a$b;)Lcom/gaia/ngallery/f/c;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/a$b;->b:Lcom/gaia/ngallery/f/c;

    return-object p0
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract a(Lcom/gaia/ngallery/b/a;I)V
.end method

.method b(Lcom/gaia/ngallery/b/a;I)V
    .registers 8

    .line 216
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->getDisplayAlbumName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget v1, Lcom/gaia/ngallery/i$n;->text_album_content_desc:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/a$b;->a(Lcom/gaia/ngallery/b/a;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b;->b:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 232
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b;->b:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/a$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    :cond_d
    return-void
.end method

###### Class com.gaia.ngallery.ui.b.a.b.AnonymousClass1 (com.gaia.ngallery.ui.b.a$b$1)
.class Lcom/gaia/ngallery/ui/b/a$b$1;
.super Ljava/lang/Object;
.source "AlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/a$b;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/a$b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/a$b;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$b$1;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b$1;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/a$b;->a(Lcom/gaia/ngallery/ui/b/a$b;)Lcom/gaia/ngallery/f/c;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 196
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b$1;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/a$b;->a(Lcom/gaia/ngallery/ui/b/a$b;)Lcom/gaia/ngallery/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$b$1;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/b/a$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    :cond_17
    return-void
.end method

###### Class com.gaia.ngallery.ui.b.a.b.AnonymousClass2 (com.gaia.ngallery.ui.b.a$b$2)
.class Lcom/gaia/ngallery/ui/b/a$b$2;
.super Ljava/lang/Object;
.source "AlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/a$b;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/a$b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/a$b;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$b$2;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 203
    invoke-static {}, Lcom/gaia/ngallery/ui/b/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$b$2;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/a$b;->a(Lcom/gaia/ngallery/ui/b/a$b;)Lcom/gaia/ngallery/f/c;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 205
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$b$2;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/a$b;->a(Lcom/gaia/ngallery/ui/b/a$b;)Lcom/gaia/ngallery/f/c;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$b$2;->a:Lcom/gaia/ngallery/ui/b/a$b;

    iget-object v0, v0, Lcom/gaia/ngallery/ui/b/a$b;->a:Landroid/support/v7/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$b$2;->a:Lcom/gaia/ngallery/ui/b/a$b;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/b/a$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.ui.b.a.c (com.gaia.ngallery.ui.b.a$c)
.class Lcom/gaia/ngallery/ui/b/a$c;
.super Lcom/gaia/ngallery/ui/b/a$b;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final b:I = 0x5


# instance fields
.field private c:Lcom/gaia/ngallery/ui/b/a$d;

.field private d:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V
    .registers 4

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/b/a$b;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V

    .line 303
    sget p2, Lcom/gaia/ngallery/i$h;->iv_camera_mask:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    sget p2, Lcom/gaia/ngallery/i$h;->rl_camera_mask:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget p2, Lcom/gaia/ngallery/i$h;->rv_covers:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$c;->d:Landroid/support/v7/widget/RecyclerView;

    .line 306
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$c;->a:Landroid/support/v7/widget/AppCompatImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 312
    sget v0, Lcom/gaia/ngallery/i$k;->layout_album_item_camera_cover:I

    return v0
.end method

.method a(Lcom/gaia/ngallery/b/a;I)V
    .registers 9

    .line 318
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->f()I

    move-result p2

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    int-to-double v1, p2

    .line 320
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v3, v1, v1

    .line 323
    new-instance v4, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v5, p0, Lcom/gaia/ngallery/ui/b/a$c;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 324
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 325
    new-instance v1, Lcom/gaia/ngallery/ui/b/a$d;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/gaia/ngallery/ui/b/a$d;-><init>(ILcom/gaia/ngallery/ui/b/a$1;)V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/b/a$c;->c:Lcom/gaia/ngallery/ui/b/a$d;

    .line 326
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$c;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/gaia/ngallery/ui/b/a$c;->c:Lcom/gaia/ngallery/ui/b/a$d;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v3, :cond_4d

    sub-int v4, p2, v1

    sub-int/2addr v4, v2

    if-gez v4, :cond_43

    goto :goto_4d

    .line 331
    :cond_43
    invoke-virtual {p1, v4}, Lcom/gaia/ngallery/b/a;->a(I)Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 333
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$c;->c:Lcom/gaia/ngallery/ui/b/a$d;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/a$d;->a(Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.b.a.d (com.gaia.ngallery.ui.b.a$d)
.class Lcom/gaia/ngallery/ui/b/a$d;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/gaia/ngallery/ui/b/a$e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 342
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/a$d;->a:Ljava/util/List;

    .line 343
    iput p1, p0, Lcom/gaia/ngallery/ui/b/a$d;->b:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/gaia/ngallery/ui/b/a$1;)V
    .registers 3

    .line 337
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/b/a$d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/gaia/ngallery/ui/b/a$e;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 349
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/gaia/ngallery/i$k;->layout_media_file_thumb:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 350
    new-instance p2, Lcom/gaia/ngallery/ui/b/a$e;

    invoke-direct {p2, p1}, Lcom/gaia/ngallery/ui/b/a$e;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/gaia/ngallery/ui/b/a$e;I)V
    .registers 4
    .param p1    # Lcom/gaia/ngallery/ui/b/a$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 355
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_d

    const/4 p2, 0x0

    .line 356
    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/b/a$e;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_18

    .line 358
    :cond_d
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/b/a$e;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    :goto_18
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$d;->a:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 367
    iget v0, p0, Lcom/gaia/ngallery/ui/b/a$d;->b:I

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 337
    check-cast p1, Lcom/gaia/ngallery/ui/b/a$e;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/a$d;->a(Lcom/gaia/ngallery/ui/b/a$e;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/a$d;->a(Landroid/view/ViewGroup;I)Lcom/gaia/ngallery/ui/b/a$e;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.ui.b.a.e (com.gaia.ngallery.ui.b.a$e)
.class Lcom/gaia/ngallery/ui/b/a$e;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 376
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 377
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$e;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 7

    .line 381
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/a$e;->a:Landroid/view/View;

    sget v1, Lcom/gaia/ngallery/i$h;->iv_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prism/commons/ui/SquareImageView;

    .line 382
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/a$e;->a:Landroid/view/View;

    sget v2, Lcom/gaia/ngallery/i$h;->iv_video_cover:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/prism/commons/ui/SquareImageView;

    const/16 v2, 0x8

    if-nez p1, :cond_20

    .line 384
    invoke-virtual {v1, v2}, Lcom/prism/commons/ui/SquareImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 385
    invoke-virtual {v0, p1}, Lcom/prism/commons/ui/SquareImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    :cond_20
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 387
    invoke-static {v0, p1, v4, v3}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    .line 388
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    .line 389
    invoke-virtual {v1, v4}, Lcom/prism/commons/ui/SquareImageView;->setVisibility(I)V

    goto :goto_33

    .line 391
    :cond_30
    invoke-virtual {v1, v2}, Lcom/prism/commons/ui/SquareImageView;->setVisibility(I)V

    :goto_33
    return-void
.end method

###### Class com.gaia.ngallery.ui.b.a.f (com.gaia.ngallery.ui.b.a$f)
.class Lcom/gaia/ngallery/ui/b/a$f;
.super Lcom/gaia/ngallery/ui/b/a$b;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V
    .registers 4

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/b/a$b;-><init>(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/gaia/ngallery/f/c;)V

    .line 244
    sget p2, Lcom/gaia/ngallery/i$h;->iv_gallery_content_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/a$f;->b:Landroid/widget/ImageView;

    .line 245
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/a$f;->a:Landroid/support/v7/widget/AppCompatImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 250
    sget v0, Lcom/gaia/ngallery/i$k;->layout_album_item_trash_cover:I

    return v0
.end method

.method a(Lcom/gaia/ngallery/b/a;I)V
    .registers 3

    return-void
.end method
