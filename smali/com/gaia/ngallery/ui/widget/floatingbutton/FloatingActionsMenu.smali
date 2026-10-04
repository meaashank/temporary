###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu)
.class public Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;,
        Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;,
        Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;,
        Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;
    }
.end annotation


# static fields
.field private static H:Landroid/view/animation/Interpolator; = null

.field private static I:Landroid/view/animation/Interpolator; = null

.field private static J:Landroid/view/animation/Interpolator; = null

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field private static final g:Ljava/lang/String;

.field private static final h:I = 0x12c

.field private static final i:F = 0.0f

.field private static final j:F = 135.0f


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

.field private G:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Landroid/animation/AnimatorSet;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

.field private z:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-class v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->g:Ljava/lang/String;

    .line 449
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->H:Landroid/view/animation/Interpolator;

    .line 450
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->I:Landroid/view/animation/Interpolator;

    .line 451
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->J:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->w:Landroid/animation/AnimatorSet;

    .line 64
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->x:Landroid/animation/AnimatorSet;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->w:Landroid/animation/AnimatorSet;

    .line 64
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->x:Landroid/animation/AnimatorSet;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)I
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 220
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->m:I

    return p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->z:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    .line 160
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    .line 190
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    sget v0, Lcom/gaia/ngallery/i$h;->fab_expand_menu_button:I

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->setId(I)V

    .line 191
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->p:I

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->setSize(I)V

    .line 192
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$2;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$2;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 97
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$f;->fab_actions_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gaia/ngallery/i$f;->fab_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/gaia/ngallery/i$f;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    .line 98
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$f;->fab_labels_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->t:I

    .line 99
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/gaia/ngallery/i$f;->fab_shadow_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->u:I

    .line 101
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    .line 102
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 104
    sget-object v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 105
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->m:I

    .line 106
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->n:I

    .line 107
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->o:I

    .line 108
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->p:I

    .line 109
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->q:Z

    .line 110
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    .line 111
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->C:I

    .line 112
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->D:I

    .line 113
    sget v0, Lcom/gaia/ngallery/i$p;->FloatingActionsMenu_fab_expandBackgroundColor:I

    const v1, 0x106000d

    invoke-direct {p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->k:I

    .line 114
    invoke-direct {p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->l:I

    .line 115
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->C:I

    if-eqz p2, :cond_cf

    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->i()Z

    move-result p2

    if-nez p2, :cond_c7

    goto :goto_cf

    .line 118
    :cond_c7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation labels in horizontal expand orientation is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_cf
    :goto_cf
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .registers 2

    .line 596
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    return-void
.end method

.method private a(Z)V
    .registers 6

    .line 563
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    .line 564
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    .line 565
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;->a(Z)V

    .line 566
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->x:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_13

    const-wide/16 v2, 0x0

    goto :goto_15

    :cond_13
    const-wide/16 v2, 0x12c

    :goto_15
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 567
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 568
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 569
    iget p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->l:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setBackgroundColor(I)V

    .line 570
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setClickable(Z)V

    .line 572
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->G:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;

    if-eqz p1, :cond_33

    .line 573
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->G:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;

    invoke-interface {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;->b()V

    :cond_33
    return-void
.end method

.method private b(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0xc

    .line 290
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->n:I

    return p0
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->o:I

    return p0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->q:Z

    return p0
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->w:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic f(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->x:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic f()Landroid/view/animation/Interpolator;
    .registers 1

    .line 33
    sget-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->H:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic g(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    return p0
.end method

.method static synthetic g()Landroid/view/animation/Interpolator;
    .registers 1

    .line 33
    sget-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->J:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic h()Landroid/view/animation/Interpolator;
    .registers 1

    .line 33
    sget-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->I:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private i()Z
    .registers 3

    .line 129
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private j()V
    .registers 7

    .line 536
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->C:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 538
    :goto_c
    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    if-ge v1, v2, :cond_49

    .line 539
    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    .line 540
    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 542
    iget-object v4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    if-eq v2, v4, :cond_46

    if-eqz v3, :cond_46

    sget v3, Lcom/gaia/ngallery/i$h;->fab_label:I

    .line 543
    invoke-virtual {v2, v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29

    goto :goto_46

    .line 545
    :cond_29
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 546
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->C:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 547
    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {p0, v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 550
    sget v4, Lcom/gaia/ngallery/i$h;->fab_label:I

    invoke-virtual {v2, v4, v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_49
    return-void
.end method

.method public static synthetic lambda$GPPGbb61_ojz49_F39ScchaIsaE(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 555
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Z)V

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;)V
    .registers 3

    .line 204
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 205
    iget p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    .line 207
    iget p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->C:I

    if-eqz p1, :cond_14

    .line 208
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->j()V

    :cond_14
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Z)V

    return-void
.end method

.method public b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;)V
    .registers 4

    .line 213
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 215
    sget v0, Lcom/gaia/ngallery/i$h;->fab_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 216
    iget p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    return-void
.end method

.method public c()V
    .registers 2

    .line 579
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v0, :cond_8

    .line 580
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a()V

    goto :goto_b

    .line 582
    :cond_8
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->d()V

    :goto_b
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 446
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .registers 3

    .line 587
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    .line 589
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;->a(Z)V

    .line 590
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 591
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 593
    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->k:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setBackgroundColor(I)V

    .line 594
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setClickable(Z)V

    .line 595
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/-$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/-$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->G:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;

    if-eqz v0, :cond_2f

    .line 601
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->G:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;

    invoke-interface {v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;->a()V

    :cond_2f
    return-void
.end method

.method public e()Z
    .registers 2

    .line 616
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 431
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 436
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 441
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 525
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 527
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 528
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    .line 530
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->C:I

    if-eqz v0, :cond_15

    .line 531
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->j()V

    :cond_15
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 295
    sget-object v5, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLayout before: l:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " t:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " r:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " b:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    .line 301
    iget v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    packed-switch v5, :pswitch_data_2ba

    goto/16 :goto_2b8

    .line 389
    :pswitch_59
    iget v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    if-ne v5, v11, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    :goto_60
    if-eqz v5, :cond_6c

    sub-int/2addr v3, v1

    .line 391
    iget-object v1, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v3, v1

    goto :goto_6d

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    sub-int/2addr v4, v2

    .line 393
    iget v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->B:I

    sub-int/2addr v4, v2

    iget v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->B:I

    iget-object v3, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v11

    add-int/2addr v4, v2

    .line 394
    iget-object v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    iget-object v3, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v12, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v2, v1, v4, v3, v12}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->layout(IIII)V

    if-eqz v5, :cond_96

    .line 396
    iget v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    sub-int v2, v1, v2

    goto :goto_a0

    :cond_96
    iget-object v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    .line 398
    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    add-int/2addr v2, v3

    .line 400
    :goto_a0
    iget v3, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    sub-int/2addr v3, v10

    :goto_a3
    if-ltz v3, :cond_2b8

    .line 401
    invoke-virtual {v0, v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 403
    iget-object v13, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_11e

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v6, :cond_b4

    goto :goto_11e

    :cond_b4
    if-eqz v5, :cond_bb

    .line 405
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v2, v13

    .line 406
    :cond_bb
    iget-object v13, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v13}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v11

    add-int/2addr v13, v4

    .line 407
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12, v2, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v13, v1, v2

    int-to-float v13, v13

    .line 412
    iget-boolean v14, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v14, :cond_de

    const/4 v14, 0x0

    goto :goto_df

    :cond_de
    move v14, v13

    :goto_df
    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 413
    iget-boolean v14, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v14, :cond_e9

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_ea

    :cond_e9
    const/4 v14, 0x0

    :goto_ea
    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    .line 415
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    .line 416
    invoke-static {v14}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v7, v11, [F

    aput v8, v7, v9

    aput v13, v7, v10

    invoke-virtual {v15, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 417
    invoke-static {v14}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v15, v11, [F

    aput v13, v15, v9

    aput v8, v15, v10

    invoke-virtual {v7, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 418
    invoke-virtual {v14, v12}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Landroid/view/View;)V

    if-eqz v5, :cond_116

    .line 420
    iget v7, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    sub-int/2addr v2, v7

    goto :goto_11e

    .line 422
    :cond_116
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v2, v7

    iget v7, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    add-int/2addr v2, v7

    :cond_11e
    :goto_11e
    add-int/lit8 v3, v3, -0x1

    goto :goto_a3

    .line 304
    :pswitch_121
    iget v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    if-nez v5, :cond_127

    const/4 v7, 0x1

    goto :goto_128

    :cond_127
    const/4 v7, 0x0

    :goto_128
    if-eqz p1, :cond_12f

    .line 307
    iget-object v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    invoke-virtual {v5}, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;->a()V

    :cond_12f
    if-eqz v7, :cond_139

    .line 310
    iget-object v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v4, v2

    .line 312
    :cond_139
    iget v4, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->D:I

    if-nez v4, :cond_142

    iget v1, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    div-int/2addr v1, v11

    sub-int/2addr v3, v1

    goto :goto_146

    :cond_142
    iget v3, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    div-int/2addr v3, v11

    add-int/2addr v3, v1

    .line 315
    :goto_146
    iget-object v1, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v11

    sub-int v1, v3, v1

    .line 316
    iget-object v4, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    iget-object v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v5}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v4, v1, v2, v5, v12}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->layout(IIII)V

    .line 318
    iget v1, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    div-int/2addr v1, v11

    iget v4, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->t:I

    add-int/2addr v1, v4

    .line 319
    iget v4, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->D:I

    if-nez v4, :cond_16f

    sub-int v1, v3, v1

    goto :goto_170

    :cond_16f
    add-int/2addr v1, v3

    :goto_170
    if-eqz v7, :cond_177

    .line 323
    iget v4, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    sub-int v4, v2, v4

    goto :goto_181

    :cond_177
    iget-object v4, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    .line 325
    invoke-virtual {v4}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    add-int/2addr v4, v5

    .line 327
    :goto_181
    iget v5, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    sub-int/2addr v5, v10

    :goto_184
    if-ltz v5, :cond_2b8

    .line 328
    invoke-virtual {v0, v5}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 330
    iget-object v13, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_2a8

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v6, :cond_196

    goto/16 :goto_2a8

    .line 332
    :cond_196
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v11

    sub-int v13, v3, v13

    if-eqz v7, :cond_1a4

    .line 333
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v4, v14

    .line 334
    :cond_1a4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v12, v13, v4, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v14, v2, v4

    int-to-float v14, v14

    .line 339
    iget-boolean v15, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v15, :cond_1ba

    const/4 v15, 0x0

    goto :goto_1bb

    :cond_1ba
    move v15, v14

    :goto_1bb
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 340
    iget-boolean v15, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v15, :cond_1c5

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1c6

    :cond_1c5
    const/4 v15, 0x0

    :goto_1c6
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 342
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    .line 343
    invoke-static {v15}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move/from16 v16, v2

    new-array v2, v11, [F

    aput v8, v2, v9

    aput v14, v2, v10

    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 344
    invoke-static {v15}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v6, v11, [F

    aput v14, v6, v9

    aput v8, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 345
    invoke-virtual {v15, v12}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Landroid/view/View;)V

    .line 347
    sget v2, Lcom/gaia/ngallery/i$h;->fab_label:I

    invoke-virtual {v12, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_296

    .line 349
    iget v6, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->D:I

    if-nez v6, :cond_203

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v1, v6

    goto :goto_208

    .line 351
    :cond_203
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    .line 353
    :goto_208
    iget v15, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->D:I

    if-nez v15, :cond_20e

    move v15, v6

    goto :goto_20f

    :cond_20e
    move v15, v1

    .line 357
    :goto_20f
    iget v10, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->D:I

    if-nez v10, :cond_214

    move v6, v1

    .line 361
    :cond_214
    iget v10, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->u:I

    sub-int v10, v4, v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v10, v10, v17

    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v8, v10, v17

    invoke-virtual {v2, v15, v10, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 365
    new-instance v8, Landroid/graphics/Rect;

    .line 366
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v15, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    div-int/2addr v15, v11

    sub-int v15, v4, v15

    .line 368
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v13, v13, v17

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 369
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v4

    iget v9, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    div-int/2addr v9, v11

    add-int/2addr v13, v9

    invoke-direct {v8, v10, v15, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    iget-object v6, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    new-instance v9, Landroid/view/TouchDelegate;

    invoke-direct {v9, v8, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v6, v9}, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;->a(Landroid/view/TouchDelegate;)V

    .line 372
    iget-boolean v6, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v6, :cond_260

    const/4 v6, 0x0

    goto :goto_261

    :cond_260
    move v6, v14

    :goto_261
    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 373
    iget-boolean v6, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v6, :cond_26b

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_26c

    :cond_26b
    const/4 v6, 0x0

    :goto_26c
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 375
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    .line 376
    invoke-static {v6}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v11, [F

    const/4 v10, 0x0

    const/4 v13, 0x0

    aput v13, v9, v10

    const/4 v15, 0x1

    aput v14, v9, v15

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 377
    invoke-static {v6}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v11, [F

    aput v14, v9, v10

    aput v13, v9, v15

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 378
    invoke-virtual {v6, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Landroid/view/View;)V

    goto :goto_299

    :cond_296
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_299
    if-eqz v7, :cond_29f

    .line 381
    iget v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    sub-int/2addr v4, v2

    goto :goto_2ad

    .line 383
    :cond_29f
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v4, v2

    iget v2, v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    add-int/2addr v4, v2

    goto :goto_2ad

    :cond_2a8
    :goto_2a8
    move/from16 v16, v2

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_2ad
    add-int/lit8 v5, v5, -0x1

    move/from16 v2, v16

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_184

    :cond_2b8
    :goto_2b8
    return-void

    nop

    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_121
        :pswitch_121
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->measureChildren(II)V

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    .line 231
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->B:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 234
    :goto_c
    iget v5, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    if-ge v1, v5, :cond_61

    .line 235
    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 237
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1d

    goto :goto_5e

    .line 241
    :cond_1d
    iget v6, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    packed-switch v6, :pswitch_data_9e

    goto :goto_46

    .line 249
    :pswitch_23
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 250
    iget v6, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->B:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->B:I

    goto :goto_46

    .line 244
    :pswitch_35
    iget v6, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    .line 245
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 254
    :goto_46
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->i()Z

    move-result v6

    if-nez v6, :cond_5e

    .line 255
    sget v6, Lcom/gaia/ngallery/i$h;->fab_label:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5e

    .line 257
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 262
    :cond_61
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->i()Z

    move-result v1

    if-nez v1, :cond_71

    .line 263
    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->A:I

    if-lez v2, :cond_6e

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->t:I

    add-int/2addr v0, v2

    :cond_6e
    add-int v4, v1, v0

    goto :goto_73

    .line 265
    :cond_71
    iget v3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->B:I

    .line 268
    :goto_73
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->r:I

    packed-switch v0, :pswitch_data_aa

    goto :goto_92

    .line 276
    :pswitch_79
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    add-int/lit8 v1, v1, -0x1

    mul-int v0, v0, v1

    add-int/2addr v4, v0

    .line 277
    invoke-direct {p0, v4}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->b(I)I

    goto :goto_92

    .line 271
    :pswitch_86
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->s:I

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->E:I

    add-int/lit8 v1, v1, -0x1

    mul-int v0, v0, v1

    add-int/2addr v3, v0

    .line 272
    invoke-direct {p0, v3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->b(I)I

    .line 284
    :goto_92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 285
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    return-void

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_86
        :pswitch_86
        :pswitch_79
        :pswitch_79
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 637
    instance-of v0, p1, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2a

    .line 638
    check-cast p1, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    .line 639
    iget-boolean v0, p1, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    .line 640
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->F:Lcom/gaia/ngallery/ui/widget/floatingbutton/a;

    iget-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/a;->a(Z)V

    .line 642
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->z:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;

    if-eqz v0, :cond_22

    .line 643
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->z:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;

    iget-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    if-eqz v1, :cond_1e

    const/high16 v1, 0x43070000    # 135.0f

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->a(F)V

    .line 646
    :cond_22
    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2d

    .line 648
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_2d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 628
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 629
    new-instance v1, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 630
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->v:Z

    iput-boolean v0, v1, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    return-object v1
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 621
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->y:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->G:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.AnonymousClass1 (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$1)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;
.super Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/content/Context;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method b()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->a:I

    .line 164
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->d:I

    .line 165
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->c(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->e:I

    .line 166
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->d(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->h:Z

    .line 167
    invoke-super {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->b()V

    return-void
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 172
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;

    invoke-super {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;

    .line 175
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    const-string v2, "rotation"

    const/4 v3, 0x2

    .line 177
    new-array v4, v3, [F

    fill-array-data v4, :array_44

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "rotation"

    .line 178
    new-array v3, v3, [F

    fill-array-data v3, :array_4c

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 180
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->e(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;->i:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->f(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_44
    .array-data 4
        0x43070000    # 135.0f
        0x0
    .end array-data

    :array_4c
    .array-data 4
        0x0
        0x43070000    # 135.0f
    .end array-data
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.AnonymousClass2 (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$2)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$2;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 195
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$2;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->c()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.SavedState (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$SavedState)
.class public Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 670
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState$1;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 660
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;)V
    .registers 3

    .line 652
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 656
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 666
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    iget-boolean p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.SavedState.AnonymousClass1 (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$SavedState$1)
.class final Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState$1;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;
    .registers 4

    .line 674
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;
    .registers 2

    .line 679
    new-array p1, p1, [Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 670
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState$1;->a(Landroid/os/Parcel;)Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 670
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState$1;->a(I)[Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$SavedState;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.a (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$a)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

.field private b:Landroid/animation/ObjectAnimator;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ObjectAnimator;

.field private e:Landroid/animation/ObjectAnimator;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 461
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    .line 462
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    .line 456
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->c:Landroid/animation/ObjectAnimator;

    .line 457
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    .line 458
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->e:Landroid/animation/ObjectAnimator;

    .line 464
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->f()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->c:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->g()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->h()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->e:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->h()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->e:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 470
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->e:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_9a

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 472
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->c:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 473
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->c:Landroid/animation/ObjectAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_a2

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 475
    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->g(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)I

    move-result p1

    packed-switch p1, :pswitch_data_8e

    goto :goto_8d

    .line 483
    :pswitch_70
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 484
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_8d

    .line 478
    :pswitch_7f
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 479
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7f
        :pswitch_70
        :pswitch_70
    .end packed-switch

    :array_9a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private a(Landroid/animation/Animator;Landroid/view/View;)V
    .registers 4

    .line 509
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;

    invoke-direct {v0, p0, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 496
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->f:Z

    if-nez v0, :cond_51

    .line 497
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Landroid/animation/Animator;Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Landroid/animation/Animator;Landroid/view/View;)V

    .line 500
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->f(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 501
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->f(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 502
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->e(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 503
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->e(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->f:Z

    :cond_51
    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.a.AnonymousClass1 (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$a$1)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;->a(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;Landroid/view/View;)V
    .registers 3

    .line 509
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;->b:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 512
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 517
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$a$1;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.b (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$b)
.class public interface abstract Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$b;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu.c (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionsMenu$c)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;
.super Landroid/graphics/drawable/LayerDrawable;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v0, 0x1

    .line 134
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 141
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->a:F

    return v0
.end method

.method public a(F)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->a:F

    .line 147
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 153
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->a:F

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu$c;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 154
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE (com.gaia.ngallery.ui.widget.floatingbutton.-$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE)
.class public final synthetic Lcom/gaia/ngallery/ui/widget/floatingbutton/-$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/-$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE;->f$0:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/-$$Lambda$FloatingActionsMenu$GPPGbb61_ojz49_F39ScchaIsaE;->f$0:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->lambda$GPPGbb61_ojz49_F39ScchaIsaE(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method
