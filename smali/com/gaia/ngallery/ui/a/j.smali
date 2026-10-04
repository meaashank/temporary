###### Class com.gaia.ngallery.ui.a.j (com.gaia.ngallery.ui.a.j)
.class public Lcom/gaia/ngallery/ui/a/j;
.super Lcom/prism/commons/a/b;
.source "SelectAlbumAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/gaia/ngallery/k/e;

.field private d:Lcom/gaia/ngallery/k/g;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/gaia/ngallery/ui/a/j;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/a/j;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/j;->b:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/j;->e:Ljava/util/List;

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Lcom/gaia/ngallery/b/b;)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/j;->d()V

    .line 150
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/j;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/j;->b()V

    return-void
.end method

.method private synthetic a(Landroid/support/design/widget/BottomSheetDialog;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .line 117
    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 118
    invoke-direct {p0, p2}, Lcom/gaia/ngallery/ui/a/j;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic a(Landroid/support/design/widget/BottomSheetDialog;Lcom/gaia/ngallery/b/a;)V
    .registers 3

    .line 113
    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 114
    invoke-virtual {p2}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 4

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/j;->d()V

    const-string v0, "load gallery cache error"

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/ui/a/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a([ILandroid/app/Activity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 p4, 0x0

    .line 75
    aget p5, p1, p4

    if-nez p5, :cond_9

    .line 77
    invoke-direct {p0, p2}, Lcom/gaia/ngallery/ui/a/j;->d(Landroid/app/Activity;)V

    goto :goto_22

    .line 78
    :cond_9
    aget p2, p1, p4

    if-lez p2, :cond_22

    .line 81
    aget p1, p1, p4

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/a/j;->a(Ljava/lang/Object;)V

    :cond_22
    :goto_22
    return-void
.end method

.method private static synthetic a([ILandroid/widget/RadioGroup;I)V
    .registers 3

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .registers 7

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/b/a;

    .line 97
    invoke-virtual {v2}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/gaia/ngallery/ui/a/j;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 101
    :cond_31
    new-instance v1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v1, p1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 105
    sget v2, Lcom/gaia/ngallery/i$k;->layout_bottomsheet_select_album:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(I)V

    .line 106
    sget v2, Lcom/gaia/ngallery/i$h;->tv_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v2, Lcom/gaia/ngallery/i$h;->rv_album_list:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 109
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 110
    new-instance v3, Lcom/gaia/ngallery/ui/b/b;

    invoke-direct {v3, p1, v0}, Lcom/gaia/ngallery/ui/b/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 112
    new-instance v0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;

    invoke-direct {v0, p0, v1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;-><init>(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v3, v0}, Lcom/gaia/ngallery/ui/b/b;->a(Lcom/gaia/ngallery/ui/b/b$a;)V

    .line 116
    sget v0, Lcom/gaia/ngallery/i$h;->ll_new_album:I

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;

    invoke-direct {v2, p0, v1, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;-><init>(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .registers 4

    .line 124
    new-instance v0, Lcom/gaia/ngallery/ui/a/e;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/a/e;-><init>()V

    .line 125
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ly7oEC-gkX6bE7N03qwfVeWZRv0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ly7oEC-gkX6bE7N03qwfVeWZRv0;-><init>(Lcom/gaia/ngallery/ui/a/j;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/e;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A;-><init>(Lcom/gaia/ngallery/ui/a/j;)V

    .line 129
    invoke-interface {v0, v1}, Lcom/prism/commons/a/a;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$nLwJ3ibnwRHB-vYTvM-z8WZrGBU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$nLwJ3ibnwRHB-vYTvM-z8WZrGBU;-><init>(Lcom/gaia/ngallery/ui/a/j;)V

    .line 130
    invoke-interface {v0, v1}, Lcom/prism/commons/a/a;->a(Lcom/prism/commons/a/a$c;)Lcom/prism/commons/a/a;

    move-result-object v0

    .line 131
    invoke-interface {v0, p1}, Lcom/prism/commons/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$2OY-D8IiKcJ-UNDB_fRnRLi2Dek(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;Lcom/gaia/ngallery/b/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->a(Landroid/support/design/widget/BottomSheetDialog;Lcom/gaia/ngallery/b/a;)V

    return-void
.end method

.method public static synthetic lambda$EyAIVn0fNnwy6KwF5JhEhazZw2A(Lcom/gaia/ngallery/ui/a/j;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/prism/commons/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ(Lcom/gaia/ngallery/ui/a/j;[ILandroid/app/Activity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/gaia/ngallery/ui/a/j;->a([ILandroid/app/Activity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$Ly7oEC-gkX6bE7N03qwfVeWZRv0(Lcom/gaia/ngallery/ui/a/j;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/j;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method

.method public static synthetic lambda$Qxc13zL_wBMN2XF_vxZ9QLHs0cs(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/a/j;->a(Landroid/support/design/widget/BottomSheetDialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Ud5XQQlNgjUoMYmmCc1xSRq-3XE([ILandroid/widget/RadioGroup;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->a([ILandroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic lambda$VJ3I_TSKCGp85l-BtFMQi8XVp0I(Lcom/gaia/ngallery/ui/a/j;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$nLwJ3ibnwRHB-vYTvM-z8WZrGBU(Lcom/gaia/ngallery/ui/a/j;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->b()V

    return-void
.end method

.method public static synthetic lambda$sq-DMBden1ZOp6X5SpNlHo5JKfI(Lcom/gaia/ngallery/ui/a/j;Landroid/app/Activity;Lcom/gaia/ngallery/b/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->a(Landroid/app/Activity;Lcom/gaia/ngallery/b/b;)V

    return-void
.end method

.method public static synthetic lambda$tkF1XdNlNekiViEYDV22ZVw62YY(Lcom/gaia/ngallery/ui/a/j;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/j;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 146
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/b;->c()I

    move-result v0

    if-nez v0, :cond_1f

    .line 147
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/a/j;->c()V

    .line 148
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;-><init>(Lcom/gaia/ngallery/ui/a/j;Landroid/app/Activity;)V

    new-instance v2, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY;-><init>(Lcom/gaia/ngallery/ui/a/j;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V

    goto :goto_22

    .line 156
    :cond_1f
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/j;->c(Landroid/app/Activity;)V

    :goto_22
    return-void
.end method

.method protected b(Landroid/app/Activity;)V
    .registers 9

    .line 54
    invoke-static {}, Lcom/gaia/ngallery/b/b;->a()Lcom/gaia/ngallery/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/b;->b()Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/b/a;

    .line 57
    invoke-virtual {v3}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getDisplayAlbumName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2d
    const/4 v2, 0x1

    .line 59
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/gaia/ngallery/i$k;->layout_dialog_select_album:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    sget v4, Lcom/gaia/ngallery/i$h;->select_album_radio_group:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    new-instance v6, Landroid/widget/RadioButton;

    invoke-direct {v6, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_4a

    .line 67
    :cond_62
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq-3XE;

    invoke-direct {v1, v2}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq-3XE;-><init>([I)V

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 71
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/gaia/ngallery/ui/a/j;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v4, Lcom/gaia/ngallery/i$n;->confirm:I

    new-instance v5, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;

    invoke-direct {v5, p0, v2, p1, v0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;-><init>(Lcom/gaia/ngallery/ui/a/j;[ILandroid/app/Activity;Ljava/util/List;)V

    .line 73
    invoke-virtual {v1, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/gaia/ngallery/i$n;->cancel:I

    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$VJ3I_TSKCGp85l-BtFMQi8XVp0I;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$VJ3I_TSKCGp85l-BtFMQi8XVp0I;-><init>(Lcom/gaia/ngallery/ui/a/j;)V

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$2OYD8IiKcJUNDB_fRnRLi2Dek (com.gaia.ngallery.ui.a.-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/ui/b/b$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;

.field private final synthetic f$1:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;->f$1:Landroid/support/design/widget/BottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/gaia/ngallery/b/a;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$2OY-D8IiKcJ-UNDB_fRnRLi2Dek;->f$1:Landroid/support/design/widget/BottomSheetDialog;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/j;->lambda$2OY-D8IiKcJ-UNDB_fRnRLi2Dek(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;Lcom/gaia/ngallery/b/a;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A (com.gaia.ngallery.ui.a.-$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A;->f$0:Lcom/gaia/ngallery/ui/a/j;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$EyAIVn0fNnwy6KwF5JhEhazZw2A;->f$0:Lcom/gaia/ngallery/ui/a/j;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->lambda$EyAIVn0fNnwy6KwF5JhEhazZw2A(Lcom/gaia/ngallery/ui/a/j;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ (com.gaia.ngallery.ui.a.-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;

.field private final synthetic f$1:[I

.field private final synthetic f$2:Landroid/app/Activity;

.field private final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;[ILandroid/app/Activity;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$1:[I

    iput-object p3, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$1:[I

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ;->f$3:Ljava/util/List;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/ui/a/j;->lambda$Kc5vxgFf1RvJ8_yGRRjoitWUVzQ(Lcom/gaia/ngallery/ui/a/j;[ILandroid/app/Activity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$Ly7oECgkX6bE7N03qwfVeWZRv0 (com.gaia.ngallery.ui.a.-$$Lambda$j$Ly7oEC-gkX6bE7N03qwfVeWZRv0)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ly7oEC-gkX6bE7N03qwfVeWZRv0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ly7oEC-gkX6bE7N03qwfVeWZRv0;->f$0:Lcom/gaia/ngallery/ui/a/j;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ly7oEC-gkX6bE7N03qwfVeWZRv0;->f$0:Lcom/gaia/ngallery/ui/a/j;

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/j;->lambda$Ly7oEC-gkX6bE7N03qwfVeWZRv0(Lcom/gaia/ngallery/ui/a/j;Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs (com.gaia.ngallery.ui.a.-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;

.field private final synthetic f$1:Landroid/support/design/widget/BottomSheetDialog;

.field private final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;->f$1:Landroid/support/design/widget/BottomSheetDialog;

    iput-object p3, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;->f$1:Landroid/support/design/widget/BottomSheetDialog;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Qxc13zL_wBMN2XF_vxZ9QLHs0cs;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/ui/a/j;->lambda$Qxc13zL_wBMN2XF_vxZ9QLHs0cs(Lcom/gaia/ngallery/ui/a/j;Landroid/support/design/widget/BottomSheetDialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq3XE (com.gaia.ngallery.ui.a.-$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq-3XE)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq-3XE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq-3XE;->f$0:[I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$Ud5XQQlNgjUoMYmmCc1xSRq-3XE;->f$0:[I

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->lambda$Ud5XQQlNgjUoMYmmCc1xSRq-3XE([ILandroid/widget/RadioGroup;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$VJ3I_TSKCGp85lBtFMQi8XVp0I (com.gaia.ngallery.ui.a.-$$Lambda$j$VJ3I_TSKCGp85l-BtFMQi8XVp0I)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$VJ3I_TSKCGp85l-BtFMQi8XVp0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$VJ3I_TSKCGp85l-BtFMQi8XVp0I;->f$0:Lcom/gaia/ngallery/ui/a/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$VJ3I_TSKCGp85l-BtFMQi8XVp0I;->f$0:Lcom/gaia/ngallery/ui/a/j;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/j;->lambda$VJ3I_TSKCGp85l-BtFMQi8XVp0I(Lcom/gaia/ngallery/ui/a/j;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$nLwJ3ibnwRHBvYTvMz8WZrGBU (com.gaia.ngallery.ui.a.-$$Lambda$j$nLwJ3ibnwRHB-vYTvM-z8WZrGBU)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$nLwJ3ibnwRHB-vYTvM-z8WZrGBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$c;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$nLwJ3ibnwRHB-vYTvM-z8WZrGBU;->f$0:Lcom/gaia/ngallery/ui/a/j;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$nLwJ3ibnwRHB-vYTvM-z8WZrGBU;->f$0:Lcom/gaia/ngallery/ui/a/j;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/j;->lambda$nLwJ3ibnwRHB-vYTvM-z8WZrGBU(Lcom/gaia/ngallery/ui/a/j;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$sqDMBden1ZOp6X5SpNlHo5JKfI (com.gaia.ngallery.ui.a.-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/b/b$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;->f$0:Lcom/gaia/ngallery/ui/a/j;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$sq-DMBden1ZOp6X5SpNlHo5JKfI;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/gaia/ngallery/b/b;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/j;->lambda$sq-DMBden1ZOp6X5SpNlHo5JKfI(Lcom/gaia/ngallery/ui/a/j;Landroid/app/Activity;Lcom/gaia/ngallery/b/b;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY (com.gaia.ngallery.ui.a.-$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/b/b$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/j;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY;->f$0:Lcom/gaia/ngallery/ui/a/j;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$j$tkF1XdNlNekiViEYDV22ZVw62YY;->f$0:Lcom/gaia/ngallery/ui/a/j;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/a/j;->lambda$tkF1XdNlNekiViEYDV22ZVw62YY(Lcom/gaia/ngallery/ui/a/j;Ljava/lang/Throwable;)V

    return-void
.end method
