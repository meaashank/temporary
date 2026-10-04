###### Class com.gaia.ngallery.ui.d (com.gaia.ngallery.ui.d)
.class public Lcom/gaia/ngallery/ui/d;
.super Landroid/app/ProgressDialog;
.source "GaiaProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/d;->setCancelable(Z)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/d;->setCanceledOnTouchOutside(Z)V

    .line 38
    sget p1, Lcom/gaia/ngallery/i$k;->layout_progress_dialog:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/d;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/d;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 40
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 41
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 47
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
