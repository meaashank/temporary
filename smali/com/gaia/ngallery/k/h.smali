###### Class com.gaia.ngallery.k.h (com.gaia.ngallery.k.h)
.class public abstract Lcom/gaia/ngallery/k/h;
.super Landroid/os/AsyncTask;
.source "GaiaShowProgressTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Pr:",
        "Ljava/lang/Object;",
        "PP:",
        "Ljava/lang/Object;",
        "Rt:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TPr;TPP;TRt;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/gaia/ngallery/ui/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/gaia/ngallery/k/h;->a:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/gaia/ngallery/ui/d;

    sget v1, Lcom/gaia/ngallery/i$o;->CustomProgressDialog:I

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/ui/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .registers 2

    .line 40
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 41
    iget-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42
    iget-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->dismiss()V

    :cond_14
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRt;)V"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/d;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 50
    iget-object p1, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/d;->dismiss()V

    :cond_14
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRt;)V"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/d;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 34
    iget-object p1, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/d;->dismiss()V

    :cond_14
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .line 23
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 24
    iget-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/gaia/ngallery/ui/d;

    iget-object v1, p0, Lcom/gaia/ngallery/k/h;->a:Landroid/content/Context;

    sget v2, Lcom/gaia/ngallery/i$o;->CustomProgressDialog:I

    invoke-direct {v0, v1, v2}, Lcom/gaia/ngallery/ui/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    .line 27
    :cond_12
    iget-object v0, p0, Lcom/gaia/ngallery/k/h;->b:Lcom/gaia/ngallery/ui/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/d;->show()V

    return-void
.end method
