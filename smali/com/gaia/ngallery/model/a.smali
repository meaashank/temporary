###### Class com.gaia.ngallery.model.a (com.gaia.ngallery.model.a)
.class public Lcom/gaia/ngallery/model/a;
.super Ljava/lang/Object;
.source "AlbumFileId.java"


# instance fields
.field private a:Lcom/gaia/ngallery/model/AlbumFile;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/gaia/ngallery/model/a;->a:Lcom/gaia/ngallery/model/AlbumFile;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/gaia/ngallery/model/a;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 20
    iget-object v0, p0, Lcom/gaia/ngallery/model/a;->a:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prism/commons/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/model/a;->b:Ljava/lang/String;

    .line 22
    :cond_10
    iget-object v0, p0, Lcom/gaia/ngallery/model/a;->b:Ljava/lang/String;

    return-object v0
.end method
