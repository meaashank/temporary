###### Class com.gaia.ngallery.k.c (com.gaia.ngallery.k.c)
.class public Lcom/gaia/ngallery/k/c;
.super Ljava/lang/Object;
.source "ExportedAlbumFile.java"


# instance fields
.field private a:Lcom/gaia/ngallery/model/AlbumFile;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/gaia/ngallery/k/c;->a:Lcom/gaia/ngallery/model/AlbumFile;

    .line 21
    iput-object p2, p0, Lcom/gaia/ngallery/k/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/gaia/ngallery/model/AlbumFile;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/gaia/ngallery/k/c;->a:Lcom/gaia/ngallery/model/AlbumFile;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/gaia/ngallery/k/c;->b:Ljava/lang/String;

    return-object v0
.end method
