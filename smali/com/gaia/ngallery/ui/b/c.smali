###### Class com.gaia.ngallery.ui.b.c (com.gaia.ngallery.ui.b.c)
.class public Lcom/gaia/ngallery/ui/b/c;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/c$b;,
        Lcom/gaia/ngallery/ui/b/c$a;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/gaia/ngallery/ui/b/c;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/gaia/ngallery/f/c;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->c:Landroid/view/LayoutInflater;

    .line 37
    iput p2, p0, Lcom/gaia/ngallery/ui/b/c;->d:I

    .line 38
    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/c;->e:Lcom/gaia/ngallery/f/c;

    .line 39
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/gaia/ngallery/ui/b/c;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 49
    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    goto :goto_17

    :cond_13
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    .line 54
    :goto_17
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/b/c;->notifyItemChanged(I)V

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

    .line 43
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    .line 44
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 62
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    return v0

    :cond_10
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 7

    .line 84
    sget-object v0, Lcom/gaia/ngallery/ui/b/c;->a:Ljava/lang/String;

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, p2}, Lcom/gaia/ngallery/ui/b/c;->getItemViewType(I)I

    move-result v0

    .line 86
    sget-object v1, Lcom/gaia/ngallery/ui/b/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder viewType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_42

    goto :goto_40

    .line 93
    :pswitch_25
    check-cast p1, Lcom/gaia/ngallery/ui/b/c$b;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/b/c$b;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_40

    .line 89
    :pswitch_33
    check-cast p1, Lcom/gaia/ngallery/ui/b/c$a;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/b/c$a;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_33
        :pswitch_25
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_16

    .line 77
    new-instance p2, Lcom/gaia/ngallery/ui/b/c$b;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/c;->c:Landroid/view/LayoutInflater;

    sget v2, Lcom/gaia/ngallery/i$k;->layout_edit_item_video:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/gaia/ngallery/ui/b/c;->d:I

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/c;->e:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/gaia/ngallery/ui/b/c$b;-><init>(Lcom/gaia/ngallery/ui/b/c;Landroid/view/View;ILcom/gaia/ngallery/f/c;)V

    return-object p2

    .line 73
    :cond_16
    new-instance p2, Lcom/gaia/ngallery/ui/b/c$a;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/c;->c:Landroid/view/LayoutInflater;

    sget v2, Lcom/gaia/ngallery/i$k;->layout_edit_item_image:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/gaia/ngallery/ui/b/c;->d:I

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/c;->e:Lcom/gaia/ngallery/f/c;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/gaia/ngallery/ui/b/c$a;-><init>(Lcom/gaia/ngallery/ui/b/c;Landroid/view/View;ILcom/gaia/ngallery/f/c;)V

    return-object p2
.end method

###### Class com.gaia.ngallery.ui.b.c.a (com.gaia.ngallery.ui.b.c$a)
.class Lcom/gaia/ngallery/ui/b/c$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/c;

.field private final b:I

.field private final c:Lcom/gaia/ngallery/f/c;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/c;Landroid/view/View;ILcom/gaia/ngallery/f/c;)V
    .registers 7

    .line 113
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$a;->a:Lcom/gaia/ngallery/ui/b/c;

    .line 114
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    invoke-static {}, Lcom/gaia/ngallery/ui/b/c;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewHolder itemView height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput p3, p0, Lcom/gaia/ngallery/ui/b/c$a;->b:I

    .line 119
    iput-object p4, p0, Lcom/gaia/ngallery/ui/b/c$a;->c:Lcom/gaia/ngallery/f/c;

    .line 121
    sget p1, Lcom/gaia/ngallery/i$h;->iv_album_content_image_ed:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$a;->d:Landroid/widget/ImageView;

    .line 122
    sget p1, Lcom/gaia/ngallery/i$h;->cover_area_selected:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$a;->e:Landroid/widget/TextView;

    .line 123
    sget p1, Lcom/gaia/ngallery/i$h;->iv_photo_selected_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$a;->f:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 5

    .line 131
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 132
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 135
    :cond_14
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :goto_1e
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->d:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->c:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 149
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->c:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/c$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    :cond_d
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->c:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$a;->c:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/c$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

###### Class com.gaia.ngallery.ui.b.c.b (com.gaia.ngallery.ui.b.c$b)
.class Lcom/gaia/ngallery/ui/b/c$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/c;

.field private final b:I

.field private final c:Lcom/gaia/ngallery/f/c;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/c;Landroid/view/View;ILcom/gaia/ngallery/f/c;)V
    .registers 5

    .line 172
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->a:Lcom/gaia/ngallery/ui/b/c;

    .line 173
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iput p3, p0, Lcom/gaia/ngallery/ui/b/c$b;->b:I

    .line 177
    iput-object p4, p0, Lcom/gaia/ngallery/ui/b/c$b;->c:Lcom/gaia/ngallery/f/c;

    .line 179
    sget p1, Lcom/gaia/ngallery/i$h;->iv_album_content_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->d:Landroid/widget/ImageView;

    .line 180
    sget p1, Lcom/gaia/ngallery/i$h;->tv_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->e:Landroid/widget/TextView;

    .line 181
    sget p1, Lcom/gaia/ngallery/i$h;->cover_area_ed:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->f:Landroid/widget/TextView;

    .line 182
    sget p1, Lcom/gaia/ngallery/i$h;->iv_photo_selected_ed:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->g:Landroid/widget/ImageView;

    .line 183
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method a(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$b;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    .line 194
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 195
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    .line 198
    :cond_1a
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/c$b;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_24
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$b;->c:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 206
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$b;->c:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/c$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    :cond_d
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$b;->c:Lcom/gaia/ngallery/f/c;

    if-eqz v0, :cond_d

    .line 213
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/c$b;->c:Lcom/gaia/ngallery/f/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/c$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
