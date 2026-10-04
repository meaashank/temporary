###### Class com.gaia.ngallery.g.h (com.gaia.ngallery.g.h)
.class public Lcom/gaia/ngallery/g/h;
.super Ljava/lang/Object;
.source "IndexedFilenameIterator.java"


# static fields
.field private static final a:C = '_'


# instance fields
.field private b:Lcom/gaia/ngallery/g/d;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/g/d;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/gaia/ngallery/g/h;->c:I

    .line 14
    iput-object p1, p0, Lcom/gaia/ngallery/g/h;->b:Lcom/gaia/ngallery/g/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 18
    iget v0, p0, Lcom/gaia/ngallery/g/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaia/ngallery/g/h;->c:I

    .line 19
    iget v0, p0, Lcom/gaia/ngallery/g/h;->c:I

    if-nez v0, :cond_26

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/g/h;->b:Lcom/gaia/ngallery/g/d;

    invoke-interface {v1}, Lcom/gaia/ngallery/g/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/g/h;->b:Lcom/gaia/ngallery/g/d;

    invoke-interface {v1}, Lcom/gaia/ngallery/g/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/g/h;->b:Lcom/gaia/ngallery/g/d;

    invoke-interface {v1}, Lcom/gaia/ngallery/g/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaia/ngallery/g/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/g/h;->b:Lcom/gaia/ngallery/g/d;

    invoke-interface {v1}, Lcom/gaia/ngallery/g/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
