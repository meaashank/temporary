###### Class com.a.a.k (com.a.a.k)
.class Lcom/a/a/k;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 35
    invoke-static {p0}, Lcom/a/a/k;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 40
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/a/a/k$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/a/a/k$1;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static a(Landroid/view/ViewManager;Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    .line 75
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    return-void

    :cond_9
    :goto_9
    return-void
.end method

.method static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 4

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_d

    .line 65
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_d
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .registers 2

    .line 30
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

###### Class com.a.a.k.AnonymousClass1 (com.a.a.k$1)
.class final Lcom/a/a/k$1;
.super Ljava/lang/Object;
.source "ViewUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/k;->a(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 41
    iput-object p1, p0, Lcom/a/a/k$1;->a:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/a/a/k$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/a/a/k$1;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/a/a/k$1;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/a/a/k$1;->a:Landroid/view/ViewTreeObserver;

    goto :goto_11

    .line 49
    :cond_b
    iget-object v0, p0, Lcom/a/a/k$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 52
    :goto_11
    invoke-static {v0, p0}, Lcom/a/a/k;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    iget-object v0, p0, Lcom/a/a/k$1;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
