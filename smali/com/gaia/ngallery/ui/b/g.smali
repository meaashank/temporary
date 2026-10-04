###### Class com.gaia.ngallery.ui.b.g (com.gaia.ngallery.ui.b.g)
.class public Lcom/gaia/ngallery/ui/b/g;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/gaia/ngallery/ui/b/g$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Lcom/gaia/ngallery/f/c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/gaia/ngallery/ui/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/ui/b/f<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gaia/ngallery/ui/b/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/gaia/ngallery/f/c;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/b/g;->h:Z

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->i:Ljava/util/Set;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->c:Landroid/view/LayoutInflater;

    .line 90
    iput p2, p0, Lcom/gaia/ngallery/ui/b/g;->d:I

    .line 91
    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/g;->e:Lcom/gaia/ngallery/f/c;

    .line 92
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/g;)Ljava/util/List;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/b/g;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/g;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/b/g;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/gaia/ngallery/ui/b/g;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    return-object p0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/gaia/ngallery/ui/b/g;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/gaia/ngallery/ui/b/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/ui/b/f<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/b/g;->h:Z

    .line 47
    new-instance v0, Lcom/gaia/ngallery/ui/b/f;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/gaia/ngallery/ui/b/f;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    .line 48
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/gaia/ngallery/ui/b/g$a;
    .registers 6

    .line 154
    new-instance p2, Lcom/gaia/ngallery/ui/b/g$a;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/gaia/ngallery/i$k;->gallery_item_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/gaia/ngallery/ui/b/g;->d:I

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g;->e:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/gaia/ngallery/ui/b/g$a;-><init>(Lcom/gaia/ngallery/ui/b/g;Landroid/view/View;ILcom/gaia/ngallery/f/c;)V

    .line 155
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g;->i:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public a(I)V
    .registers 5

    .line 60
    sget-object v0, Lcom/gaia/ngallery/ui/b/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/b/f;->a(I)V

    .line 62
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/ui/b/g$a;

    .line 63
    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v2

    if-ne v2, p1, :cond_21

    .line 64
    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g$a;->a(Lcom/gaia/ngallery/ui/b/g$a;)V

    :cond_36
    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/b/g$a;I)V
    .registers 3

    .line 161
    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/b/g$a;->b(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    sget-object v1, Lcom/gaia/ngallery/ui/b/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GaiaScanHideMediaTask.onSuccess old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Lcom/gaia/ngallery/ui/b/g$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/gaia/ngallery/ui/b/g$1;-><init>(Lcom/gaia/ngallery/ui/b/g;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 133
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/b/g;->h:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    .line 53
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/ui/b/g$a;

    .line 54
    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g$a;->a(Lcom/gaia/ngallery/ui/b/g$a;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public b(I)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/b/g;->notifyItemRemoved(I)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/b/f;->c()V

    .line 71
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/ui/b/g$a;

    .line 72
    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g$a;->a(Lcom/gaia/ngallery/ui/b/g$a;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public d()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/b/f;->d()V

    .line 77
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/ui/b/g$a;

    .line 78
    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g$a;->a(Lcom/gaia/ngallery/ui/b/g$a;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public e()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->g:Lcom/gaia/ngallery/ui/b/f;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/b/f;->e()I

    move-result v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 83
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g;->d()V

    goto :goto_15

    .line 85
    :cond_12
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g;->c()V

    :goto_15
    return-void
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 31
    check-cast p1, Lcom/gaia/ngallery/ui/b/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/g;->a(Lcom/gaia/ngallery/ui/b/g$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/g;->a(Landroid/view/ViewGroup;I)Lcom/gaia/ngallery/ui/b/g$a;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.ui.b.g.AnonymousClass1 (com.gaia.ngallery.ui.b.g$1)
.class Lcom/gaia/ngallery/ui/b/g$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/g;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/gaia/ngallery/ui/b/g;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/g;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 104
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$1;->c:Lcom/gaia/ngallery/ui/b/g;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/g$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/g$1;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$1;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    invoke-static {}, Lcom/gaia/ngallery/ui/b/g;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areContentsTheSame i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i1:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public areItemsTheSame(II)Z
    .registers 7

    .line 119
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$1;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    invoke-static {}, Lcom/gaia/ngallery/ui/b/g;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areItemsTheSame i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i1:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNewListSize()I
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

###### Class com.gaia.ngallery.ui.b.g.a (com.gaia.ngallery.ui.b.g$a)
.class public Lcom/gaia/ngallery/ui/b/g$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MediaFileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/gaia/ngallery/sync/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/g;

.field private final b:I

.field private final c:Lcom/gaia/ngallery/f/c;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/support/v7/widget/AppCompatImageView;

.field private h:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/g;Landroid/view/View;ILcom/gaia/ngallery/f/c;)V
    .registers 5

    .line 182
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    .line 183
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 184
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iput p3, p0, Lcom/gaia/ngallery/ui/b/g$a;->b:I

    .line 186
    iput-object p4, p0, Lcom/gaia/ngallery/ui/b/g$a;->c:Lcom/gaia/ngallery/f/c;

    .line 187
    sget p1, Lcom/gaia/ngallery/i$h;->iv_gallery_content_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->d:Landroid/widget/ImageView;

    .line 188
    sget p1, Lcom/gaia/ngallery/i$h;->tv_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->e:Landroid/widget/TextView;

    .line 189
    sget p1, Lcom/gaia/ngallery/i$h;->pb_syncing:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->f:Landroid/widget/ProgressBar;

    .line 190
    sget p1, Lcom/gaia/ngallery/i$h;->iv_synced:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->g:Landroid/support/v7/widget/AppCompatImageView;

    .line 193
    sget p1, Lcom/gaia/ngallery/i$h;->cover_area_selected:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->h:Landroid/view/View;

    .line 194
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 211
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_36

    .line 212
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->a(Lcom/gaia/ngallery/ui/b/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    goto :goto_36

    .line 215
    :cond_13
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->c(Lcom/gaia/ngallery/ui/b/g;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/b/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 216
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 218
    :cond_2e
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_35
    return-void

    :cond_36
    :goto_36
    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/g$a;)V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/g$a;->a()V

    return-void
.end method

.method private b()V
    .registers 5

    .line 224
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v0

    .line 225
    invoke-static {}, Lcom/gaia/ngallery/ui/b/g;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewHolder.select itemSelector.isSelected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v3}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/gaia/ngallery/ui/b/f;->c(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/b/f;->c(I)Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, -0x1

    if-le v0, v1, :cond_49

    .line 227
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/b/f;->a(I)V

    .line 228
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/g$a;->a()V

    :cond_49
    return-void
.end method

.method private c()V
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/b/f;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, -0x1

    if-le v0, v1, :cond_1f

    .line 235
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/b/f;->b(I)V

    .line 236
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/g$a;->a()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .line 267
    invoke-static {}, Lcom/gaia/ngallery/ui/b/g;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncStateChange state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_40

    goto :goto_3f

    .line 278
    :pswitch_1f
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->g:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3f

    .line 274
    :pswitch_2a
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->g:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3f

    .line 270
    :pswitch_35
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->g:Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method

.method public b(I)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/g;->a(Lcom/gaia/ngallery/ui/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 201
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/g$a;->a()V

    .line 202
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    .line 203
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    .line 205
    :cond_1d
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :goto_24
    invoke-static {}, Lcom/gaia/ngallery/sync/g;->a()Lcom/gaia/ngallery/sync/g;

    move-result-object v0

    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v2}, Lcom/gaia/ngallery/ui/b/g;->b(Lcom/gaia/ngallery/ui/b/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p0}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/sync/h;)V

    .line 207
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->d:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/g;->c(Lcom/gaia/ngallery/ui/b/g;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 245
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/g;->d(Lcom/gaia/ngallery/ui/b/g;)Lcom/gaia/ngallery/ui/b/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/b/f;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 246
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/g$a;->c()V

    goto :goto_2d

    .line 248
    :cond_1c
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/g$a;->b()V

    goto :goto_2d

    .line 249
    :cond_20
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->c:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_2d

    .line 250
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->c:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->a:Lcom/gaia/ngallery/ui/b/g;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/g;->c(Lcom/gaia/ngallery/ui/b/g;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 258
    :cond_a
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->c:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/g$a;->c:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/g$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method
