###### Class com.gaia.ngallery.ui.b.e (com.gaia.ngallery.ui.b.e)
.class public Lcom/gaia/ngallery/ui/b/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImportAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/e$a;,
        Lcom/gaia/ngallery/ui/b/e$b;
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


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/gaia/ngallery/f/c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/gaia/ngallery/ui/b/e;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/f/c;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/b/e;->g:Z

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->c:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/e;->f:Lcom/gaia/ngallery/f/c;

    .line 34
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/b/e;->notifyItemRemoved(I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/e;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/e;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/b/e;->g:Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .registers 7

    .line 128
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 129
    sget-object v0, Lcom/gaia/ngallery/ui/b/e;->a:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItemCount= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    .line 131
    :cond_32
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    if-nez v0, :cond_41

    .line 132
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 133
    :cond_41
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    if-eqz v0, :cond_4a

    return v2

    :cond_4a
    return v1
.end method

.method public getItemViewType(I)I
    .registers 2

    if-nez p1, :cond_8

    .line 63
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    if-eqz p1, :cond_8

    const/4 p1, 0x3

    return p1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 10

    .line 82
    sget-object v0, Lcom/gaia/ngallery/ui/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    instance-of v0, p1, Lcom/gaia/ngallery/ui/b/e$b;

    if-eqz v0, :cond_1c

    goto/16 :goto_110

    .line 86
    :cond_1c
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    if-eqz v0, :cond_22

    add-int/lit8 p2, p2, -0x1

    .line 89
    :cond_22
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 90
    check-cast p1, Lcom/gaia/ngallery/ui/b/e$a;

    .line 91
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->b:Landroid/content/Context;

    sget v1, Lcom/gaia/ngallery/i$n;->text_album_content_desc:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getImgCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getVidCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 91
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->a(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->b(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/e;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getDisplayAlbumName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v0, Lcom/gaia/ngallery/ui/b/e;->a:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder, name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lez v0, :cond_bf

    .line 99
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 100
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->c(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3, v0, v5, v6}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    .line 101
    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    if-ne v0, v2, :cond_b7

    .line 102
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->d(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_cf

    .line 104
    :cond_b7
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->d(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_cf

    .line 107
    :cond_bf
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->d(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->c(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/gaia/ngallery/i$m;->ic_empty_album_preview:I

    invoke-static {v0, v2, v5}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    .line 110
    :goto_cf
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/b/e;->g:Z

    if-eqz v0, :cond_110

    .line 111
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gaia/ngallery/e;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 112
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->e(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object p2

    sget v0, Lcom/gaia/ngallery/i$g;->ic_camera_white:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->e(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_110

    .line 115
    :cond_ee
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result p2

    if-eqz p2, :cond_109

    .line 116
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->e(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object p2

    sget v0, Lcom/gaia/ngallery/i$g;->ic_trash_white:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->e(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_110

    .line 119
    :cond_109
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/e$a;->e(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_110
    :goto_110
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 8

    .line 71
    sget-object v0, Lcom/gaia/ngallery/ui/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onCreateViewHolder"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, v1, :cond_1f

    .line 73
    new-instance p2, Lcom/gaia/ngallery/ui/b/e$a;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/gaia/ngallery/i$k;->layout_gallery_folder:I

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->f:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p0, p1, v0}, Lcom/gaia/ngallery/ui/b/e$a;-><init>(Lcom/gaia/ngallery/ui/b/e;Landroid/view/View;Lcom/gaia/ngallery/f/c;)V

    return-object p2

    .line 76
    :cond_1f
    new-instance p1, Lcom/gaia/ngallery/ui/b/e$b;

    iget-object p2, p0, Lcom/gaia/ngallery/ui/b/e;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e;->f:Lcom/gaia/ngallery/f/c;

    invoke-direct {p1, p0, p2, v0}, Lcom/gaia/ngallery/ui/b/e$b;-><init>(Lcom/gaia/ngallery/ui/b/e;Landroid/view/View;Lcom/gaia/ngallery/f/c;)V

    return-object p1
.end method

###### Class com.gaia.ngallery.ui.b.e.a (com.gaia.ngallery.ui.b.e$a)
.class public Lcom/gaia/ngallery/ui/b/e$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImportAlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/gaia/ngallery/f/c;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/e;Landroid/view/View;Lcom/gaia/ngallery/f/c;)V
    .registers 4

    .line 163
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$a;->a:Lcom/gaia/ngallery/ui/b/e;

    .line 164
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    sget p1, Lcom/gaia/ngallery/i$h;->iv_album_folder_cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$a;->b:Landroid/widget/ImageView;

    .line 166
    sget p1, Lcom/gaia/ngallery/i$h;->tv_album_folder_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$a;->c:Landroid/widget/TextView;

    .line 167
    sget p1, Lcom/gaia/ngallery/i$h;->tv_album_folder_stat_info:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$a;->d:Landroid/widget/TextView;

    .line 168
    sget p1, Lcom/gaia/ngallery/i$h;->tv_duration_folder_cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$a;->e:Landroid/widget/TextView;

    .line 169
    sget p1, Lcom/gaia/ngallery/i$h;->special_album_layer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$a;->f:Landroid/widget/ImageView;

    .line 170
    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/e$a;->g:Lcom/gaia/ngallery/f/c;

    .line 171
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/e$a;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/e$a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/e$a;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/TextView;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/e$a;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/b/e$a;)Landroid/widget/ImageView;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/e$a;->f:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e$a;->g:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 178
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e$a;->g:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/e$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    :cond_d
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e$a;->g:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 185
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e$a;->g:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/e$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

###### Class com.gaia.ngallery.ui.b.e.b (com.gaia.ngallery.ui.b.e$b)
.class public Lcom/gaia/ngallery/ui/b/e$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImportAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/e;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/e;Landroid/view/View;Lcom/gaia/ngallery/f/c;)V
    .registers 5

    .line 141
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$b;->a:Lcom/gaia/ngallery/ui/b/e;

    .line 142
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 144
    new-instance v0, Lcom/gaia/ngallery/ui/b/e$b$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/gaia/ngallery/ui/b/e$b$1;-><init>(Lcom/gaia/ngallery/ui/b/e$b;Lcom/gaia/ngallery/ui/b/e;Lcom/gaia/ngallery/f/c;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.b.e.b.AnonymousClass1 (com.gaia.ngallery.ui.b.e$b$1)
.class Lcom/gaia/ngallery/ui/b/e$b$1;
.super Ljava/lang/Object;
.source "ImportAlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/e$b;-><init>(Lcom/gaia/ngallery/ui/b/e;Landroid/view/View;Lcom/gaia/ngallery/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/e;

.field final synthetic b:Lcom/gaia/ngallery/f/c;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/gaia/ngallery/ui/b/e$b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/e$b;Lcom/gaia/ngallery/ui/b/e;Lcom/gaia/ngallery/f/c;Landroid/view/View;)V
    .registers 5

    .line 144
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->d:Lcom/gaia/ngallery/ui/b/e$b;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->a:Lcom/gaia/ngallery/ui/b/e;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->b:Lcom/gaia/ngallery/f/c;

    iput-object p4, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 147
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->b:Lcom/gaia/ngallery/f/c;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/e$b$1;->d:Lcom/gaia/ngallery/ui/b/e$b;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/b/e$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    return-void
.end method
