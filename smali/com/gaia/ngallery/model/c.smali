###### Class com.gaia.ngallery.model.c (com.gaia.ngallery.model.c)
.class public Lcom/gaia/ngallery/model/c;
.super Ljava/lang/Object;
.source "LocalImportSourceFile.java"

# interfaces
.implements Lcom/gaia/ngallery/model/b;
.implements Lcom/gaia/ngallery/model/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/model/c;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/model/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/gaia/ngallery/model/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .registers 4

    .line 29
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/model/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/gaia/ngallery/model/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaia/ngallery/l/f;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 39
    instance-of v1, p1, Lcom/gaia/ngallery/model/c;

    if-nez v1, :cond_8

    goto :goto_20

    .line 42
    :cond_8
    check-cast p1, Lcom/gaia/ngallery/model/c;

    .line 43
    iget-object v1, p0, Lcom/gaia/ngallery/model/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/gaia/ngallery/model/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/gaia/ngallery/model/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/gaia/ngallery/model/c;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v0
.end method
