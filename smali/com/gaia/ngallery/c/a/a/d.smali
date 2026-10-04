###### Class com.gaia.ngallery.c.a.a.d (com.gaia.ngallery.c.a.a.d)
.class public Lcom/gaia/ngallery/c/a/a/d;
.super Ljava/lang/Object;
.source "EncryptedMediaModel.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/gaia/ngallery/c/a/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/c/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
