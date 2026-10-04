###### Class com.gaia.ngallery.ui.b.b (com.gaia.ngallery.ui.b.b)
.class public Lcom/gaia/ngallery/ui/b/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChoiceAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/b$a;,
        Lcom/gaia/ngallery/ui/b/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/gaia/ngallery/ui/b/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/gaia/ngallery/ui/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/gaia/ngallery/ui/b/b;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/b/a;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/b;->b:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/b;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/b;)Lcom/gaia/ngallery/ui/b/b$a;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/b;->d:Lcom/gaia/ngallery/ui/b/b$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/gaia/ngallery/ui/b/b$b;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    sget-object p2, Lcom/gaia/ngallery/ui/b/b;->a:Ljava/lang/String;

    const-string v0, "onCreateViewHolder "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p2, p0, Lcom/gaia/ngallery/ui/b/b;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/gaia/ngallery/i$k;->layout_album_choice_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/gaia/ngallery/ui/b/b$b;

    invoke-direct {p2, p0, p1}, Lcom/gaia/ngallery/ui/b/b$b;-><init>(Lcom/gaia/ngallery/ui/b/b;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/gaia/ngallery/ui/b/b$a;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/b;->d:Lcom/gaia/ngallery/ui/b/b$a;

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/b/b$b;I)V
    .registers 6
    .param p1    # Lcom/gaia/ngallery/ui/b/b$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    sget-object v0, Lcom/gaia/ngallery/ui/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/b;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1, v0, p2}, Lcom/gaia/ngallery/ui/b/b$b;->a(Landroid/content/Context;Lcom/gaia/ngallery/b/a;)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    check-cast p1, Lcom/gaia/ngallery/ui/b/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/b;->a(Lcom/gaia/ngallery/ui/b/b$b;I)V

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

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/b;->a(Landroid/view/ViewGroup;I)Lcom/gaia/ngallery/ui/b/b$b;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.ui.b.b.a (com.gaia.ngallery.ui.b.b$a)
.class public interface abstract Lcom/gaia/ngallery/ui/b/b$a;
.super Ljava/lang/Object;
.source "ChoiceAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcom/gaia/ngallery/b/a;)V
.end method

###### Class com.gaia.ngallery.ui.b.b.C0063b (com.gaia.ngallery.ui.b.b$b)
.class public Lcom/gaia/ngallery/ui/b/b$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChoiceAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/b/b;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/ui/b/b;Landroid/view/View;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/b$b;->a:Lcom/gaia/ngallery/ui/b/b;

    .line 71
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    sget p1, Lcom/gaia/ngallery/i$h;->iv_album_cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/b$b;->b:Landroid/widget/ImageView;

    .line 73
    sget p1, Lcom/gaia/ngallery/i$h;->tv_album_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/b$b;->c:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/gaia/ngallery/i$h;->tv_album_desc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/b$b;->d:Landroid/widget/TextView;

    .line 75
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/b$b;->e:Landroid/view/View;

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/b/a;Landroid/view/View;)V
    .registers 3

    .line 90
    iget-object p2, p0, Lcom/gaia/ngallery/ui/b/b$b;->a:Lcom/gaia/ngallery/ui/b/b;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/b/b;->a(Lcom/gaia/ngallery/ui/b/b;)Lcom/gaia/ngallery/ui/b/b$a;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 91
    iget-object p2, p0, Lcom/gaia/ngallery/ui/b/b$b;->a:Lcom/gaia/ngallery/ui/b/b;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/b/b;->a(Lcom/gaia/ngallery/ui/b/b;)Lcom/gaia/ngallery/ui/b/b$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/gaia/ngallery/ui/b/b$a;->onItemClick(Lcom/gaia/ngallery/b/a;)V

    :cond_11
    return-void
.end method

.method public static synthetic lambda$-_lfuHFrTrUZw4SYdXg_X2Yu81A(Lcom/gaia/ngallery/ui/b/b$b;Lcom/gaia/ngallery/b/a;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/b/b$b;->a(Lcom/gaia/ngallery/b/a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/gaia/ngallery/b/a;)V
    .registers 8

    .line 79
    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_17

    .line 80
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->f()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, v3}, Lcom/gaia/ngallery/b/a;->a(I)Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    goto :goto_1e

    .line 82
    :cond_17
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/b$b;->b:Landroid/widget/ImageView;

    sget v3, Lcom/gaia/ngallery/i$m;->ic_empty_album_preview:I

    invoke-static {v0, v3, v1}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;IZ)V

    .line 84
    :goto_1e
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getDisplayAlbumName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget v0, Lcom/gaia/ngallery/i$n;->text_album_content_desc:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 86
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/b$b;->e:Landroid/view/View;

    new-instance v0, Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;

    invoke-direct {v0, p0, p2}, Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;-><init>(Lcom/gaia/ngallery/ui/b/b$b;Lcom/gaia/ngallery/b/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.b.$$Lambda$b$b$_lfuHFrTrUZw4SYdXg_X2Yu81A (com.gaia.ngallery.ui.b.-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A)
.class public final synthetic Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/b/b$b;

.field private final synthetic f$1:Lcom/gaia/ngallery/b/a;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/b/b$b;Lcom/gaia/ngallery/b/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;->f$0:Lcom/gaia/ngallery/ui/b/b$b;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;->f$1:Lcom/gaia/ngallery/b/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;->f$0:Lcom/gaia/ngallery/ui/b/b$b;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/-$$Lambda$b$b$-_lfuHFrTrUZw4SYdXg_X2Yu81A;->f$1:Lcom/gaia/ngallery/b/a;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/b/b$b;->lambda$-_lfuHFrTrUZw4SYdXg_X2Yu81A(Lcom/gaia/ngallery/ui/b/b$b;Lcom/gaia/ngallery/b/a;Landroid/view/View;)V

    return-void
.end method
