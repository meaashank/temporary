###### Class com.gaia.ngallery.ui.e (com.gaia.ngallery.ui.e)
.class public Lcom/gaia/ngallery/ui/e;
.super Landroid/support/v4/app/Fragment;
.source "HostImportChoiceFragment.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "ARG_ALBUMFILES"

.field private static final c:Ljava/lang/String; = "ARG_GALLEY"

.field private static final d:I = 0x4


# instance fields
.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/gaia/ngallery/ui/b;

.field private i:Lcom/gaia/ngallery/ui/b/c;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/gaia/ngallery/ui/e;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/gaia/ngallery/ui/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gaia/ngallery/ui/e;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/gaia/ngallery/ui/e;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/e;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_ALBUMFILES"

    .line 58
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "ARG_GALLEY"

    .line 59
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/e;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/e;)Ljava/util/ArrayList;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3c

    .line 172
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    sget v0, Lcom/gaia/ngallery/i$n;->import_slctee_title:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 180
    :cond_3c
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    sget v1, Lcom/gaia/ngallery/i$n;->import_no_slct_title:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_48
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .registers 4

    .line 97
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    goto :goto_b

    .line 101
    :cond_1c
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->i:Lcom/gaia/ngallery/ui/b/c;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/c;->notifyDataSetChanged()V

    .line 104
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->l:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->m:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/e;->a()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 6

    .line 162
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41100000    # 9.0f

    .line 163
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v1, "#ffffff"

    .line 164
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/e;Landroid/view/View;I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/e;->b(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/e;)Ljava/util/ArrayList;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .registers 2

    .line 93
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 7

    .line 188
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 189
    sget-object v0, Lcom/gaia/ngallery/ui/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubItemClick name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 192
    invoke-virtual {p1, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_47

    .line 195
    :cond_3f
    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_47
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e;->i:Lcom/gaia/ngallery/ui/b/c;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/ui/b/c;->notifyItemChanged(I)V

    .line 201
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/e;->a()V

    .line 202
    sget-object p1, Lcom/gaia/ngallery/ui/e;->a:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visible: pos = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/e;)Lcom/gaia/ngallery/ui/b/c;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/e;->i:Lcom/gaia/ngallery/ui/b/c;

    return-object p0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/e;)Landroid/widget/TextView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/e;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/e;)Landroid/widget/TextView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/e;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/gaia/ngallery/ui/e;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/e;->a()V

    return-void
.end method

.method static synthetic g(Lcom/gaia/ngallery/ui/e;)Lcom/gaia/ngallery/ui/b;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/e;->h:Lcom/gaia/ngallery/ui/b;

    return-object p0
.end method

.method public static synthetic lambda$9ia_3R7df5ETBN7-Epf63TlfT_c(Lcom/gaia/ngallery/ui/e;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$U2b9x312D_c6C0gYFUkhKhhZoCw(Lcom/gaia/ngallery/ui/e;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/e;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .registers 2

    .line 207
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 212
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 213
    instance-of v0, p1, Lcom/gaia/ngallery/ui/b;

    if-eqz v0, :cond_c

    .line 214
    check-cast p1, Lcom/gaia/ngallery/ui/b;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/e;->h:Lcom/gaia/ngallery/ui/b;

    return-void

    .line 216
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

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 68
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_ALBUMFILES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_GALLEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/e;->f:Ljava/lang/String;

    :cond_21
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 76
    sget p3, Lcom/gaia/ngallery/i$k;->fragment_host_import_choice:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    sget p2, Lcom/gaia/ngallery/i$h;->editor_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 79
    new-instance p3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p3, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lcom/gaia/ngallery/g/a;->a(Landroid/content/Context;I)Lcom/gaia/ngallery/ui/widget/a/c;

    move-result-object p3

    .line 81
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 82
    sget v0, Lcom/gaia/ngallery/i$h;->tv_selected_imgssss:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/e;->j:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/gaia/ngallery/i$h;->tv_cancel_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/e;->k:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/gaia/ngallery/i$h;->tv_select_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/e;->l:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/gaia/ngallery/i$h;->confirm_choice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    .line 86
    sget v0, Lcom/gaia/ngallery/i$h;->tv_unselect_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/e;->m:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->l:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 88
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 89
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 90
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 91
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->m:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$e$9ia_3R7df5ETBN7-Epf63TlfT_c;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$e$9ia_3R7df5ETBN7-Epf63TlfT_c;-><init>(Lcom/gaia/ngallery/ui/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->l:Landroid/widget/TextView;

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw;-><init>(Lcom/gaia/ngallery/ui/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->m:Landroid/widget/TextView;

    new-instance v2, Lcom/gaia/ngallery/ui/e$1;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/e$1;-><init>(Lcom/gaia/ngallery/ui/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p3}, Lcom/gaia/ngallery/ui/widget/a/c;->b()I

    move-result p3

    mul-int/lit8 p3, p3, 0x3

    sub-int/2addr v0, p3

    div-int/2addr v0, v1

    .line 128
    new-instance p3, Lcom/gaia/ngallery/ui/b/c;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/e$2;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/e$2;-><init>(Lcom/gaia/ngallery/ui/e;)V

    invoke-direct {p3, v1, v0, v2}, Lcom/gaia/ngallery/ui/b/c;-><init>(Landroid/content/Context;ILcom/gaia/ngallery/f/c;)V

    iput-object p3, p0, Lcom/gaia/ngallery/ui/e;->i:Lcom/gaia/ngallery/ui/b/c;

    .line 139
    iget-object p3, p0, Lcom/gaia/ngallery/ui/e;->i:Lcom/gaia/ngallery/ui/b/c;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    sget-object p2, Lcom/gaia/ngallery/ui/e;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView files: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p2, p0, Lcom/gaia/ngallery/ui/e;->i:Lcom/gaia/ngallery/ui/b/c;

    iget-object p3, p0, Lcom/gaia/ngallery/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/gaia/ngallery/ui/b/c;->a(Ljava/util/List;)V

    .line 142
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/e;->g:Ljava/util/ArrayList;

    .line 143
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/e;->a()V

    .line 145
    iget-object p2, p0, Lcom/gaia/ngallery/ui/e;->n:Landroid/widget/Button;

    new-instance p3, Lcom/gaia/ngallery/ui/e$3;

    invoke-direct {p3, p0}, Lcom/gaia/ngallery/ui/e$3;-><init>(Lcom/gaia/ngallery/ui/e;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/gaia/ngallery/ui/e;->h:Lcom/gaia/ngallery/ui/b;

    return-void
.end method

###### Class com.gaia.ngallery.ui.e.AnonymousClass1 (com.gaia.ngallery.ui.e$1)
.class Lcom/gaia/ngallery/ui/e$1;
.super Ljava/lang/Object;
.source "HostImportChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/e;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/e;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 112
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/e;->a(Lcom/gaia/ngallery/ui/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 113
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    goto :goto_a

    .line 115
    :cond_1b
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/e;->b(Lcom/gaia/ngallery/ui/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/e;->c(Lcom/gaia/ngallery/ui/e;)Lcom/gaia/ngallery/ui/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/b/c;->notifyDataSetChanged()V

    .line 117
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/e;->d(Lcom/gaia/ngallery/ui/e;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/e;->e(Lcom/gaia/ngallery/ui/e;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$1;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/e;->f(Lcom/gaia/ngallery/ui/e;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.e.AnonymousClass2 (com.gaia.ngallery.ui.e$2)
.class Lcom/gaia/ngallery/ui/e$2;
.super Ljava/lang/Object;
.source "HostImportChoiceFragment.java"

# interfaces
.implements Lcom/gaia/ngallery/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gaia/ngallery/f/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/e;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/e;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/gaia/ngallery/ui/e$2;->a:Lcom/gaia/ngallery/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e$2;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/e;->a(Lcom/gaia/ngallery/ui/e;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .line 128
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/e$2;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .registers 3

    .line 128
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/e$2;->b(Landroid/view/View;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.e.AnonymousClass3 (com.gaia.ngallery.ui.e$3)
.class Lcom/gaia/ngallery/ui/e$3;
.super Ljava/lang/Object;
.source "HostImportChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/e;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/e;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/gaia/ngallery/ui/e$3;->a:Lcom/gaia/ngallery/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e$3;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/e;->b(Lcom/gaia/ngallery/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 152
    new-instance v2, Lcom/gaia/ngallery/model/c;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/gaia/ngallery/model/c;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 154
    :cond_2d
    iget-object v0, p0, Lcom/gaia/ngallery/ui/e$3;->a:Lcom/gaia/ngallery/ui/e;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/e;->g(Lcom/gaia/ngallery/ui/e;)Lcom/gaia/ngallery/ui/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/ui/b;->a(Ljava/util/ArrayList;)V

    .line 155
    iget-object p1, p0, Lcom/gaia/ngallery/ui/e$3;->a:Lcom/gaia/ngallery/ui/e;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$e$9ia_3R7df5ETBN7Epf63TlfT_c (com.gaia.ngallery.ui.-$$Lambda$e$9ia_3R7df5ETBN7-Epf63TlfT_c)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$e$9ia_3R7df5ETBN7-Epf63TlfT_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/e;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$e$9ia_3R7df5ETBN7-Epf63TlfT_c;->f$0:Lcom/gaia/ngallery/ui/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$e$9ia_3R7df5ETBN7-Epf63TlfT_c;->f$0:Lcom/gaia/ngallery/ui/e;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/e;->lambda$9ia_3R7df5ETBN7-Epf63TlfT_c(Lcom/gaia/ngallery/ui/e;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw (com.gaia.ngallery.ui.-$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/e;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw;->f$0:Lcom/gaia/ngallery/ui/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$e$U2b9x312D_c6C0gYFUkhKhhZoCw;->f$0:Lcom/gaia/ngallery/ui/e;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/e;->lambda$U2b9x312D_c6C0gYFUkhKhhZoCw(Lcom/gaia/ngallery/ui/e;Landroid/view/View;)V

    return-void
.end method
