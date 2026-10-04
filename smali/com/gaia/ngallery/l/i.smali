###### Class com.gaia.ngallery.l.i (com.gaia.ngallery.l.i)
.class public final Lcom/gaia/ngallery/l/i;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/l/i$a;
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(I)I
    .registers 1

    .line 13
    sput p0, Lcom/gaia/ngallery/l/i;->a:I

    return p0
.end method

.method public static a()V
    .registers 2

    const-string v0, "KeyboardUtils"

    const-string v1, "Please refer to the following code."

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "input_method"

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_b

    return-void

    .line 36
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_16

    .line 37
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_16
    const/4 p0, 0x2

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/gaia/ngallery/l/i$a;)V
    .registers 4

    const v0, 0x1020002

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-static {p0}, Lcom/gaia/ngallery/l/i;->e(Landroid/app/Activity;)I

    move-result v1

    sput v1, Lcom/gaia/ngallery/l/i;->a:I

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/l/i$1;

    invoke-direct {v1, p1, p0}, Lcom/gaia/ngallery/l/i$1;-><init>(Lcom/gaia/ngallery/l/i$a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "input_method"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    const-string v0, "input_method"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x2

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static a(Landroid/app/Activity;I)Z
    .registers 2

    .line 112
    invoke-static {p0}, Lcom/gaia/ngallery/l/i;->e(Landroid/app/Activity;)I

    move-result p0

    if-lt p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic b()I
    .registers 1

    .line 13
    sget v0, Lcom/gaia/ngallery/l/i;->a:I

    return v0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "input_method"

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_b

    return-void

    .line 65
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_16

    .line 66
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    const-string v0, "input_method"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_b

    return-void

    .line 79
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static c(Landroid/app/Activity;)Z
    .registers 2

    .line 100
    invoke-static {p0}, Lcom/gaia/ngallery/l/i;->e(Landroid/app/Activity;)I

    move-result p0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static synthetic d(Landroid/app/Activity;)I
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/gaia/ngallery/l/i;->e(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private static e(Landroid/app/Activity;)I
    .registers 2

    const v0, 0x1020002

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    return p0
.end method

###### Class com.gaia.ngallery.l.i.AnonymousClass1 (com.gaia.ngallery.l.i$1)
.class final Lcom/gaia/ngallery/l/i$1;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/l/i;->a(Landroid/app/Activity;Lcom/gaia/ngallery/l/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/l/i$a;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/l/i$a;Landroid/app/Activity;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/gaia/ngallery/l/i$1;->a:Lcom/gaia/ngallery/l/i$a;

    iput-object p2, p0, Lcom/gaia/ngallery/l/i$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/gaia/ngallery/l/i$1;->a:Lcom/gaia/ngallery/l/i$a;

    if-eqz v0, :cond_18

    .line 136
    iget-object v0, p0, Lcom/gaia/ngallery/l/i$1;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/i;->d(Landroid/app/Activity;)I

    move-result v0

    .line 137
    invoke-static {}, Lcom/gaia/ngallery/l/i;->b()I

    move-result v1

    if-eq v1, v0, :cond_18

    .line 138
    iget-object v1, p0, Lcom/gaia/ngallery/l/i$1;->a:Lcom/gaia/ngallery/l/i$a;

    invoke-interface {v1, v0}, Lcom/gaia/ngallery/l/i$a;->a(I)V

    .line 139
    invoke-static {v0}, Lcom/gaia/ngallery/l/i;->a(I)I

    :cond_18
    return-void
.end method

###### Class com.gaia.ngallery.l.i.a (com.gaia.ngallery.l.i$a)
.class public interface abstract Lcom/gaia/ngallery/l/i$a;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/l/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method
