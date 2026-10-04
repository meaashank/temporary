###### Class com.gaia.ngallery.ui.b.h (com.gaia.ngallery.ui.b.h)
.class public Lcom/gaia/ngallery/ui/b/h;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/gaia/ngallery/f/c;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/gaia/ngallery/ui/b/h;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/gaia/ngallery/f/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Lcom/gaia/ngallery/f/c;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/b/h;->f:Z

    const/4 v0, -0x2

    .line 207
    iput v0, p0, Lcom/gaia/ngallery/ui/b/h;->h:I

    .line 73
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/h;->b:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/gaia/ngallery/ui/b/h;->c:Ljava/util/List;

    .line 75
    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/h;->d:Lcom/gaia/ngallery/f/c;

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/b/h;)Lcom/gaia/ngallery/f/c;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/gaia/ngallery/ui/b/h;->d:Lcom/gaia/ngallery/f/c;

    return-object p0
.end method

.method private synthetic a(FFF)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->g:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->g:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

    invoke-interface {v0, p1, p2, p3}, Lcom/gaia/ngallery/ui/widget/photoview/e$e;->onScaleChange(FFF)V

    :cond_9
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 183
    new-instance v1, Lcom/gaia/ngallery/ui/b/h$2;

    invoke-direct {v1, p0, p2}, Lcom/gaia/ngallery/ui/b/h$2;-><init>(Lcom/gaia/ngallery/ui/b/h;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 190
    new-instance v0, Lcom/gaia/ngallery/ui/b/h$3;

    invoke-direct {v0, p0, p2}, Lcom/gaia/ngallery/ui/b/h$3;-><init>(Lcom/gaia/ngallery/ui/b/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;Lcom/gaia/ngallery/model/AlbumFile;I)Landroid/view/View;
    .registers 7

    .line 115
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    new-instance v1, Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-direct {v1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;-><init>(Landroid/widget/ImageView;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->setAttacher(Lcom/gaia/ngallery/ui/widget/photoview/e;)V

    .line 124
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->getRotation()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->g(F)V

    .line 125
    iget-boolean v2, p0, Lcom/gaia/ngallery/ui/b/h;->f:Z

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(Z)V

    .line 127
    new-instance v2, Lcom/gaia/ngallery/ui/b/h$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/gaia/ngallery/ui/b/h$1;-><init>(Lcom/gaia/ngallery/ui/b/h;ILcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;)V

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Lcom/gaia/ngallery/ui/widget/photoview/e$d;)V

    .line 140
    new-instance p3, Lcom/gaia/ngallery/ui/b/-$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc;

    invoke-direct {p3, p0}, Lcom/gaia/ngallery/ui/b/-$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc;-><init>(Lcom/gaia/ngallery/ui/b/h;)V

    invoke-virtual {v1, p3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Lcom/gaia/ngallery/ui/widget/photoview/e$e;)V

    const/4 p3, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-static {v0, p2, p3, v1}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    .line 151
    invoke-virtual {v0, p2}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->setCustomTag(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic lambda$YdIos61SIgtP5AKpPKAHxYVNUhc(Lcom/gaia/ngallery/ui/b/h;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/b/h;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/gaia/ngallery/model/AlbumFile;I)Landroid/view/View;
    .registers 8

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$k;->layout_preview_video:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;

    .line 161
    sget v1, Lcom/gaia/ngallery/i$h;->preview_video_thumbnail:I

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    .line 162
    new-instance v3, Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-direct {v3, v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;-><init>(Landroid/widget/ImageView;)V

    .line 163
    invoke-virtual {v1, v3}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->setAttacher(Lcom/gaia/ngallery/ui/widget/photoview/e;)V

    const/4 v3, 0x1

    .line 169
    invoke-static {v1, p2, v3, v2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V

    .line 170
    sget v2, Lcom/gaia/ngallery/i$h;->preview_video_play_btn:I

    invoke-virtual {v0, v2}, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;

    .line 171
    invoke-virtual {v2, v1}, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedImageView;->setCustomTag(Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0, v2, p3}, Lcom/gaia/ngallery/ui/b/h;->a(Landroid/view/View;I)V

    .line 173
    invoke-direct {p0, v1, p3}, Lcom/gaia/ngallery/ui/b/h;->a(Landroid/view/View;I)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v0, p2}, Lcom/gaia/ngallery/ui/widget/photoview/CustomTagedFrameLayout;->setCustomTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/gaia/ngallery/ui/b/h;->h:I

    .line 211
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/b/h;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e$e;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/h;->g:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 227
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/b/h;->f:Z

    .line 228
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 229
    instance-of v2, v1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    if-eqz v2, :cond_c

    .line 230
    check-cast v1, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;->getPhotoViewAttacher()Lcom/gaia/ngallery/ui/widget/photoview/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(Z)V

    goto :goto_c

    :cond_26
    return-void
.end method

.method public b(I)Landroid/view/View;
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    .line 202
    sget-object v0, Lcom/gaia/ngallery/ui/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/h;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->c:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    check-cast p1, Lcom/gaia/ngallery/ui/widget/photoview/b;

    .line 217
    invoke-interface {p1}, Lcom/gaia/ngallery/ui/widget/photoview/b;->getCustomTag()Ljava/lang/Object;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 219
    sget-object v0, Lcom/gaia/ngallery/ui/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemPosition  index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    const/4 p1, -0x2

    return p1

    :cond_27
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    .line 90
    sget-object v0, Lcom/gaia/ngallery/ui/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 93
    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 94
    invoke-direct {p0, p1, v0, p2}, Lcom/gaia/ngallery/ui/b/h;->b(Landroid/view/ViewGroup;Lcom/gaia/ngallery/model/AlbumFile;I)Landroid/view/View;

    move-result-object p1

    goto :goto_2e

    .line 96
    :cond_2a
    invoke-virtual {p0, p1, v0, p2}, Lcom/gaia/ngallery/ui/b/h;->a(Landroid/view/ViewGroup;Lcom/gaia/ngallery/model/AlbumFile;I)Landroid/view/View;

    move-result-object p1

    .line 98
    :goto_2e
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

###### Class com.gaia.ngallery.ui.b.h.AnonymousClass1 (com.gaia.ngallery.ui.b.h$1)
.class Lcom/gaia/ngallery/ui/b/h$1;
.super Ljava/lang/Object;
.source "PreviewAdapter.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/h;->b(Landroid/view/ViewGroup;Lcom/gaia/ngallery/model/AlbumFile;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

.field final synthetic c:Lcom/gaia/ngallery/ui/b/h;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/h;ILcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;)V
    .registers 4

    .line 127
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/h$1;->c:Lcom/gaia/ngallery/ui/b/h;

    iput p2, p0, Lcom/gaia/ngallery/ui/b/h$1;->a:I

    iput-object p3, p0, Lcom/gaia/ngallery/ui/b/h$1;->b:Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h$1;->c:Lcom/gaia/ngallery/ui/b/h;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/h;->a(Lcom/gaia/ngallery/ui/b/h;)Lcom/gaia/ngallery/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/h$1;->b:Lcom/gaia/ngallery/ui/widget/photoview/AttacherImageView;

    iget v2, p0, Lcom/gaia/ngallery/ui/b/h$1;->a:I

    invoke-interface {v0, v1, v2}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .registers 4

    .line 131
    iget-object p2, p0, Lcom/gaia/ngallery/ui/b/h$1;->c:Lcom/gaia/ngallery/ui/b/h;

    invoke-static {p2}, Lcom/gaia/ngallery/ui/b/h;->a(Lcom/gaia/ngallery/ui/b/h;)Lcom/gaia/ngallery/f/c;

    move-result-object p2

    iget p3, p0, Lcom/gaia/ngallery/ui/b/h$1;->a:I

    invoke-interface {p2, p1, p3}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.b.h.AnonymousClass2 (com.gaia.ngallery.ui.b.h$2)
.class Lcom/gaia/ngallery/ui/b/h$2;
.super Ljava/lang/Object;
.source "PreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/h;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gaia/ngallery/ui/b/h;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/h;I)V
    .registers 3

    .line 183
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/h$2;->b:Lcom/gaia/ngallery/ui/b/h;

    iput p2, p0, Lcom/gaia/ngallery/ui/b/h$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h$2;->b:Lcom/gaia/ngallery/ui/b/h;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/h;->a(Lcom/gaia/ngallery/ui/b/h;)Lcom/gaia/ngallery/f/c;

    move-result-object v0

    iget v1, p0, Lcom/gaia/ngallery/ui/b/h$2;->a:I

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->a(Ljava/lang/Object;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.b.h.AnonymousClass3 (com.gaia.ngallery.ui.b.h$3)
.class Lcom/gaia/ngallery/ui/b/h$3;
.super Ljava/lang/Object;
.source "PreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/b/h;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gaia/ngallery/ui/b/h;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/b/h;I)V
    .registers 3

    .line 190
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/h$3;->b:Lcom/gaia/ngallery/ui/b/h;

    iput p2, p0, Lcom/gaia/ngallery/ui/b/h$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/h$3;->b:Lcom/gaia/ngallery/ui/b/h;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/b/h;->a(Lcom/gaia/ngallery/ui/b/h;)Lcom/gaia/ngallery/f/c;

    move-result-object v0

    iget v1, p0, Lcom/gaia/ngallery/ui/b/h$3;->a:I

    invoke-interface {v0, p1, v1}, Lcom/gaia/ngallery/f/c;->b(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.ui.b.$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc (com.gaia.ngallery.ui.b.-$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc)
.class public final synthetic Lcom/gaia/ngallery/ui/b/-$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/e$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/b/h;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/b/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/-$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc;->f$0:Lcom/gaia/ngallery/ui/b/h;

    return-void
.end method


# virtual methods
.method public final onScaleChange(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/-$$Lambda$h$YdIos61SIgtP5AKpPKAHxYVNUhc;->f$0:Lcom/gaia/ngallery/ui/b/h;

    invoke-static {v0, p1, p2, p3}, Lcom/gaia/ngallery/ui/b/h;->lambda$YdIos61SIgtP5AKpPKAHxYVNUhc(Lcom/gaia/ngallery/ui/b/h;FFF)V

    return-void
.end method
