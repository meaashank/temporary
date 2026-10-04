###### Class com.dueeeke.dkplayer.activity.list.tiktok.ViewPagerLayoutManager (com.dueeeke.dkplayer.activity.list.tiktok.ViewPagerLayoutManager)
.class public Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ViewPagerLayoutManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v7/widget/PagerSnapHelper;

.field private c:Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:I

.field private f:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 131
    new-instance p1, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;

    invoke-direct {p1, p0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;-><init>(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)V

    iput-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->f:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 27
    invoke-direct {p0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 131
    new-instance p1, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;

    invoke-direct {p1, p0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;-><init>(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)V

    iput-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->f:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 32
    invoke-direct {p0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a()V

    return-void
.end method

.method static synthetic a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->c:Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    return-object p0
.end method

.method private a()V
    .registers 2

    .line 36
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->b:Landroid/support/v7/widget/PagerSnapHelper;

    return-void
.end method

.method static synthetic b(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->e:I

    return p0
.end method


# virtual methods
.method public a(Lcom/dueeeke/dkplayer/activity/list/tiktok/a;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->c:Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 44
    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->b:Landroid/support/v7/widget/PagerSnapHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/PagerSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 45
    iput-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->d:Landroid/support/v7/widget/RecyclerView;

    .line 46
    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->f:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 3

    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 5

    packed-switch p1, :pswitch_data_42

    goto :goto_41

    .line 84
    :pswitch_4
    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->b:Landroid/support/v7/widget/PagerSnapHelper;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/PagerSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 87
    invoke-virtual {p0, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getPosition(Landroid/view/View;)I

    goto :goto_41

    .line 77
    :pswitch_10
    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->b:Landroid/support/v7/widget/PagerSnapHelper;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/PagerSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 80
    invoke-virtual {p0, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getPosition(Landroid/view/View;)I

    goto :goto_41

    .line 67
    :pswitch_1c
    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->b:Landroid/support/v7/widget/PagerSnapHelper;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/PagerSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 70
    invoke-virtual {p0, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->c:Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    .line 72
    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->c:Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    invoke-virtual {p0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    invoke-interface {v0, p1, v1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/a;->a(IZ)V

    :cond_41
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_10
        :pswitch_4
    .end packed-switch
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 119
    iput p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->e:I

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 105
    iput p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->e:I

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

###### Class com.dueeeke.dkplayer.activity.list.tiktok.ViewPagerLayoutManager.AnonymousClass1 (com.dueeeke.dkplayer.activity.list.tiktok.ViewPagerLayoutManager$1)
.class Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;
.super Ljava/lang/Object;
.source "ViewPagerLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 134
    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-virtual {p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 135
    iget-object p1, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/a;->a()V

    :cond_1a
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->b(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)I

    move-result v0

    if-ltz v0, :cond_21

    .line 142
    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-virtual {v2, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/a;->a(ZI)V

    goto :goto_39

    .line 144
    :cond_21
    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-static {v0}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->a(Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;)Lcom/dueeeke/dkplayer/activity/list/tiktok/a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager$1;->a:Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;

    invoke-virtual {v2, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/ViewPagerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/dueeeke/dkplayer/activity/list/tiktok/a;->a(ZI)V

    :cond_39
    :goto_39
    return-void
.end method
