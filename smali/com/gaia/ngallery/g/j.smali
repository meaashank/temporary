###### Class com.gaia.ngallery.g.j (com.gaia.ngallery.g.j)
.class public Lcom/gaia/ngallery/g/j;
.super Ljava/lang/Object;
.source "UnusedFilenameSelector.java"


# instance fields
.field private a:Lcom/gaia/ngallery/g/h;


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/g/h;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/gaia/ngallery/g/j;->a:Lcom/gaia/ngallery/g/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1a

    .line 23
    iget-object v1, p0, Lcom/gaia/ngallery/g/j;->a:Lcom/gaia/ngallery/g/h;

    invoke-virtual {v1}, Lcom/gaia/ngallery/g/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method
