###### Class com.gaia.ngallery.ui.b.d (com.gaia.ngallery.ui.b.d)
.class public Lcom/gaia/ngallery/ui/b/d;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HostDirFilesAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/d$a;,
        Lcom/gaia/ngallery/ui/b/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "name"

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/io/File;

.field private h:Lcom/gaia/ngallery/ui/b/d$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/gaia/ngallery/ui/b/d;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/ui/b/d$a;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->i:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->j:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/d;->e:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/d;->h:Lcom/gaia/ngallery/ui/b/d$a;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/d;)Lcom/gaia/ngallery/ui/b/d$a;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/d;->h:Lcom/gaia/ngallery/ui/b/d$a;

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 61
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 64
    invoke-direct {p0, v3}, Lcom/gaia/ngallery/ui/b/d;->a(I)Z

    move-result v4

    .line 65
    new-instance v5, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    if-nez v4, :cond_38

    const-string v5, "#"

    .line 68
    :cond_38
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 70
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/d;->i:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/d;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_50
    return-void
.end method

.method private a(I)Z
    .registers 3

    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/d;->f:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/d;->g:Ljava/io/File;

    .line 53
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/b/d;->a(Ljava/util/List;)V

    .line 54
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/d;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->f:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x2

    return p1
.end method

.method public getPositionForSection(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getSectionForPosition(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->i:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 155
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    check-cast p1, Lcom/gaia/ngallery/ui/b/d$b;

    .line 84
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d;->g:Ljava/io/File;

    .line 85
    invoke-virtual {p0, p2}, Lcom/gaia/ngallery/ui/b/d;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_31

    .line 86
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->a(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    sget v5, Lcom/gaia/ngallery/i$m;->gallery_empty_folder:I

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    .line 87
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->b(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    sget v4, Lcom/gaia/ngallery/i$n;->parent:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->c(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->d(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b4

    :cond_31
    add-int/lit8 v0, p2, -0x1

    .line 92
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/d;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 93
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->d(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 95
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->a(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    sget v5, Lcom/gaia/ngallery/i$m;->gallery_empty_folder:I

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    .line 96
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->b(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->c(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    sget v5, Lcom/gaia/ngallery/i$m;->detail_more:I

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    goto :goto_b4

    .line 99
    :cond_66
    invoke-static {v0}, Lcom/gaia/ngallery/l/h;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 100
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->a(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_8a

    .line 102
    :cond_78
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->d(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->a(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->b(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 106
    :goto_8a
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->b(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/d;->h:Lcom/gaia/ngallery/ui/b/d$a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/gaia/ngallery/ui/b/d$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 108
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->c(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    sget v5, Lcom/gaia/ngallery/i$m;->ic_selected:I

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    goto :goto_b4

    .line 110
    :cond_ab
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->c(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;

    move-result-object v1

    sget v5, Lcom/gaia/ngallery/i$m;->ic_not_selected:I

    invoke-static {v1, v5, v4}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    .line 114
    :goto_b4
    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d$b;->e(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v1, p1, Lcom/gaia/ngallery/ui/b/d$b;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 117
    iget-object p1, p1, Lcom/gaia/ngallery/ui/b/d$b;->itemView:Landroid/view/View;

    new-instance v1, Lcom/gaia/ngallery/ui/b/d$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/gaia/ngallery/ui/b/d$1;-><init>(Lcom/gaia/ngallery/ui/b/d;Ljava/io/File;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/d;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/gaia/ngallery/i$k;->layout_host_internal_storage_item:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 148
    new-instance p2, Lcom/gaia/ngallery/ui/b/d$b;

    invoke-direct {p2, p1}, Lcom/gaia/ngallery/ui/b/d$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

###### Class com.gaia.ngallery.ui.b.d.AnonymousClass1 (com.gaia.ngallery.ui.b.d$1)
.class Lcom/gaia/ngallery/ui/b/d$1;
.super Ljava/lang/Object;
.source "HostDirFilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:I

.field final synthetic c:Lcom/gaia/ngallery/ui/b/d;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/d;Ljava/io/File;I)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/d$1;->c:Lcom/gaia/ngallery/ui/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/d$1;->a:Ljava/io/File;

    iput p3, p0, Lcom/gaia/ngallery/ui/b/d$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 120
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/d$1;->c:Lcom/gaia/ngallery/ui/b/d;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/b/d;->a(Lcom/gaia/ngallery/ui/b/d;)Lcom/gaia/ngallery/ui/b/d$a;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/d$1;->a:Ljava/io/File;

    iget v1, p0, Lcom/gaia/ngallery/ui/b/d$1;->b:I

    invoke-interface {p1, v0, v1}, Lcom/gaia/ngallery/ui/b/d$a;->a(Ljava/io/File;I)Z

    return-void
.end method

###### Class com.gaia.ngallery.ui.b.d.a (com.gaia.ngallery.ui.b.d$a)
.class public interface abstract Lcom/gaia/ngallery/ui/b/d$a;
.super Ljava/lang/Object;
.source "HostDirFilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/io/File;I)Z
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

###### Class com.gaia.ngallery.ui.b.d.b (com.gaia.ngallery.ui.b.d$b)
.class Lcom/gaia/ngallery/ui/b/d$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HostDirFilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 181
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 182
    sget v0, Lcom/gaia/ngallery/i$h;->iv_album_folder_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/d$b;->a:Landroid/widget/ImageView;

    .line 183
    sget v0, Lcom/gaia/ngallery/i$h;->tv_album_folder_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/d$b;->b:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/gaia/ngallery/i$h;->iv_next_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/d$b;->c:Landroid/widget/ImageView;

    .line 185
    sget v0, Lcom/gaia/ngallery/i$h;->tv_album_folder_stat_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/d$b;->d:Landroid/widget/TextView;

    .line 186
    sget v0, Lcom/gaia/ngallery/i$h;->tv_duration_folder_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/d$b;->e:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/d$b;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/d$b;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/ImageView;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/d$b;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/d$b;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/b/d$b;)Landroid/widget/TextView;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/d$b;->d:Landroid/widget/TextView;

    return-object p0
.end method
