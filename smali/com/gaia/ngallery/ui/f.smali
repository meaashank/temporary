###### Class com.gaia.ngallery.ui.f (com.gaia.ngallery.ui.f)
.class public Lcom/gaia/ngallery/ui/f;
.super Landroid/support/v4/app/Fragment;
.source "ListHostDirFilesFragment.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/f$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/gaia/ngallery/k/k;

.field private c:Lcom/gaia/ngallery/ui/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/gaia/ngallery/ui/b/d;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Lcom/gaia/ngallery/ui/f$a;

.field private n:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/gaia/ngallery/ui/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/gaia/ngallery/ui/f;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->m:Lcom/gaia/ngallery/ui/f$a;

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->n:Ljava/util/Stack;

    .line 54
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->j:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/ui/f;
    .registers 3

    .line 58
    new-instance v0, Lcom/gaia/ngallery/ui/f;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/f;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/f;->setArguments(Landroid/os/Bundle;)V

    .line 61
    sget-object v1, Lcom/gaia/ngallery/ui/f;->b:Ljava/lang/String;

    const-string v2, "newInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/f;)Ljava/util/ArrayList;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/f;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/ui/f;->o:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->o:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 194
    new-instance v1, Lcom/gaia/ngallery/model/c;

    invoke-direct {v1, v0}, Lcom/gaia/ngallery/model/c;-><init>(Ljava/io/File;)V

    .line 195
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 196
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 198
    :cond_1d
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_22
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->e:Lcom/gaia/ngallery/ui/b/d;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/b/d;->notifyItemChanged(I)V

    .line 201
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/f;->d()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 6

    .line 229
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41100000    # 9.0f

    .line 230
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v1, "#ffffff"

    .line 231
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/f;I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/f;Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/b;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/f;->c:Lcom/gaia/ngallery/ui/b;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/gaia/ngallery/ui/f;->m:Lcom/gaia/ngallery/ui/f$a;

    .line 154
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 160
    :goto_1b
    iget-object v2, p0, Lcom/gaia/ngallery/ui/f;->n:Ljava/util/Stack;

    new-instance v3, Lcom/gaia/ngallery/ui/f$a;

    invoke-direct {v3, v1, v0}, Lcom/gaia/ngallery/ui/f$a;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->o:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 183
    :goto_6
    iget-object v1, p0, Lcom/gaia/ngallery/ui/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 184
    iget-object v1, p0, Lcom/gaia/ngallery/ui/f;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_21

    add-int/lit8 v1, v0, 0x1

    .line 186
    invoke-direct {p0, v1}, Lcom/gaia/ngallery/ui/f;->a(I)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/f;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/f;->c()V

    return-void
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/f;)Ljava/util/List;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/f;->o:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 239
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gaia/ngallery/i$e;->choice_text_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/gaia/ngallery/ui/f;->a(Landroid/view/View;I)V

    .line 240
    sget v0, Lcom/gaia/ngallery/i$n;->import_slctee_title:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5c

    .line 243
    :cond_46
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gaia/ngallery/i$e;->nothing_choice_text_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/gaia/ngallery/ui/f;->a(Landroid/view/View;I)V

    .line 244
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    sget v1, Lcom/gaia/ngallery/i$n;->import_no_slct_title:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_5c
    return-void
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/b/d;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/f;->e:Lcom/gaia/ngallery/ui/b/d;

    return-object p0
.end method

.method static synthetic f(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/f$a;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/f;->m:Lcom/gaia/ngallery/ui/f$a;

    return-object p0
.end method

.method static synthetic g(Lcom/gaia/ngallery/ui/f;)Landroid/support/v7/widget/RecyclerView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/f;->l:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    invoke-virtual {v0}, Lcom/gaia/ngallery/k/k;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 208
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/k/k;->cancel(Z)Z

    .line 210
    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->k:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/gaia/ngallery/k/k;

    new-instance v2, Lcom/gaia/ngallery/ui/f$5;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/ui/f$5;-><init>(Lcom/gaia/ngallery/ui/f;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/gaia/ngallery/k/k;-><init>(Lcom/gaia/ngallery/k/k$a;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    .line 225
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/gaia/ngallery/k/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .registers 3

    .line 169
    sget-object v0, Lcom/gaia/ngallery/ui/f;->b:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 172
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_3a

    .line 175
    :cond_22
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/ui/f$a;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->m:Lcom/gaia/ngallery/ui/f$a;

    .line 176
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/f;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/f;->a(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 250
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 251
    instance-of v0, p1, Lcom/gaia/ngallery/ui/b;

    if-eqz v0, :cond_c

    .line 252
    check-cast p1, Lcom/gaia/ngallery/ui/b;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/f;->c:Lcom/gaia/ngallery/ui/b;

    return-void

    .line 254
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget-object p1, Lcom/gaia/ngallery/ui/f;->b:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .line 77
    sget-object p3, Lcom/gaia/ngallery/ui/f;->b:Ljava/lang/String;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget p3, Lcom/gaia/ngallery/i$k;->fragment_list_host_dir_files:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    sget p2, Lcom/gaia/ngallery/i$h;->rv_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->l:Landroid/support/v7/widget/RecyclerView;

    .line 80
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/gaia/ngallery/ui/c/a;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/gaia/ngallery/i$f;->recycle_divider_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 84
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/gaia/ngallery/i$e;->divide_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p3, v1, v0, v2, v3}, Lcom/gaia/ngallery/ui/c/a;-><init>(Landroid/content/Context;III)V

    .line 81
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 85
    sget p2, Lcom/gaia/ngallery/i$h;->tv_selected_imgssss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->f:Landroid/widget/TextView;

    .line 86
    sget p2, Lcom/gaia/ngallery/i$h;->tv_cancel_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->g:Landroid/widget/TextView;

    .line 87
    sget p2, Lcom/gaia/ngallery/i$h;->confirm_choice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    .line 88
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->g:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 89
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setClickable(Z)V

    .line 91
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->g:Landroid/widget/TextView;

    new-instance p3, Lcom/gaia/ngallery/ui/f$1;

    invoke-direct {p3, p0}, Lcom/gaia/ngallery/ui/f$1;-><init>(Lcom/gaia/ngallery/ui/f;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance p2, Lcom/gaia/ngallery/ui/b/d;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/f;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/gaia/ngallery/ui/f$2;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/f$2;-><init>(Lcom/gaia/ngallery/ui/f;)V

    invoke-direct {p2, p3, v0}, Lcom/gaia/ngallery/ui/b/d;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/ui/b/d$a;)V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->e:Lcom/gaia/ngallery/ui/b/d;

    .line 122
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/gaia/ngallery/ui/f;->e:Lcom/gaia/ngallery/ui/b/d;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 123
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->d:Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/f;->d()V

    .line 126
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->i:Landroid/widget/Button;

    new-instance p3, Lcom/gaia/ngallery/ui/f$3;

    invoke-direct {p3, p0}, Lcom/gaia/ngallery/ui/f$3;-><init>(Lcom/gaia/ngallery/ui/f;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget p2, Lcom/gaia/ngallery/i$h;->tv_select_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f;->h:Landroid/widget/TextView;

    .line 137
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->h:Landroid/widget/TextView;

    new-instance p3, Lcom/gaia/ngallery/ui/f$4;

    invoke-direct {p3, p0}, Lcom/gaia/ngallery/ui/f$4;-><init>(Lcom/gaia/ngallery/ui/f;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f;->j:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gaia/ngallery/ui/f;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 261
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->c:Lcom/gaia/ngallery/ui/b;

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    invoke-virtual {v0}, Lcom/gaia/ngallery/k/k;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 268
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/k/k;->cancel(Z)Z

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/gaia/ngallery/ui/f;->a:Lcom/gaia/ngallery/k/k;

    .line 271
    :cond_15
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.f.AnonymousClass1 (com.gaia.ngallery.ui.f$1)
.class Lcom/gaia/ngallery/ui/f$1;
.super Ljava/lang/Object;
.source "ListHostDirFilesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/f;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/gaia/ngallery/ui/f$1;->a:Lcom/gaia/ngallery/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$1;->a:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->a(Lcom/gaia/ngallery/ui/f;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$1;->a:Lcom/gaia/ngallery/ui/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.f.AnonymousClass2 (com.gaia.ngallery.ui.f$2)
.class Lcom/gaia/ngallery/ui/f$2;
.super Ljava/lang/Object;
.source "ListHostDirFilesFragment.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/f;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/gaia/ngallery/ui/f$2;->a:Lcom/gaia/ngallery/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;I)Z
    .registers 4

    if-nez p2, :cond_8

    .line 113
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$2;->a:Lcom/gaia/ngallery/ui/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/f;->b()V

    goto :goto_1d

    .line 114
    :cond_8
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 115
    iget-object p2, p0, Lcom/gaia/ngallery/ui/f$2;->a:Lcom/gaia/ngallery/ui/f;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gaia/ngallery/ui/f;->a(Lcom/gaia/ngallery/ui/f;Ljava/lang/String;)V

    goto :goto_1d

    .line 117
    :cond_18
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$2;->a:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/f;->a(Lcom/gaia/ngallery/ui/f;I)V

    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    .line 102
    new-instance v0, Lcom/gaia/ngallery/model/c;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/gaia/ngallery/model/c;-><init>(Ljava/io/File;)V

    .line 103
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$2;->a:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->a(Lcom/gaia/ngallery/ui/f;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

###### Class com.gaia.ngallery.ui.f.AnonymousClass3 (com.gaia.ngallery.ui.f$3)
.class Lcom/gaia/ngallery/ui/f$3;
.super Ljava/lang/Object;
.source "ListHostDirFilesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/f;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/gaia/ngallery/ui/f$3;->a:Lcom/gaia/ngallery/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$3;->a:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->b(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/b;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/f$3;->a:Lcom/gaia/ngallery/ui/f;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/f;->a(Lcom/gaia/ngallery/ui/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/ui/b;->a(Ljava/util/ArrayList;)V

    .line 131
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$3;->a:Lcom/gaia/ngallery/ui/f;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.f.AnonymousClass4 (com.gaia.ngallery.ui.f$4)
.class Lcom/gaia/ngallery/ui/f$4;
.super Ljava/lang/Object;
.source "ListHostDirFilesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/f;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/gaia/ngallery/ui/f$4;->a:Lcom/gaia/ngallery/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 140
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$4;->a:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->c(Lcom/gaia/ngallery/ui/f;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.f.AnonymousClass5 (com.gaia.ngallery.ui.f$5)
.class Lcom/gaia/ngallery/ui/f$5;
.super Ljava/lang/Object;
.source "ListHostDirFilesFragment.java"

# interfaces
.implements Lcom/gaia/ngallery/k/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gaia/ngallery/ui/f;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/f;Ljava/lang/String;)V
    .registers 3

    .line 211
    iput-object p1, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/f$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/f;->a(Lcom/gaia/ngallery/ui/f;Ljava/util/List;)Ljava/util/List;

    .line 215
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->e(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/b/d;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/f;->d(Lcom/gaia/ngallery/ui/f;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/f$5;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/gaia/ngallery/ui/b/d;->a(Ljava/util/List;Ljava/io/File;)V

    .line 216
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->f(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/f$a;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 217
    iget-object p1, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/f;->g(Lcom/gaia/ngallery/ui/f;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 218
    iget-object v0, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/f;->f(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/f$a;

    move-result-object v0

    iget v0, v0, Lcom/gaia/ngallery/ui/f$a;->a:I

    iget-object v1, p0, Lcom/gaia/ngallery/ui/f$5;->b:Lcom/gaia/ngallery/ui/f;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/f;->f(Lcom/gaia/ngallery/ui/f;)Lcom/gaia/ngallery/ui/f$a;

    move-result-object v1

    iget v1, v1, Lcom/gaia/ngallery/ui/f$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_42
    return-void
.end method

###### Class com.gaia.ngallery.ui.f.a (com.gaia.ngallery.ui.f$a)
.class Lcom/gaia/ngallery/ui/f$a;
.super Ljava/lang/Object;
.source "ListHostDirFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Lcom/gaia/ngallery/ui/f$a;->a:I

    .line 280
    iput p2, p0, Lcom/gaia/ngallery/ui/f$a;->b:I

    return-void
.end method
