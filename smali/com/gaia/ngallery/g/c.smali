###### Class com.gaia.ngallery.g.c (com.gaia.ngallery.g.c)
.class public Lcom/gaia/ngallery/g/c;
.super Ljava/lang/Object;
.source "EncodedFilename.java"

# interfaces
.implements Lcom/gaia/ngallery/g/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/g/b;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/gaia/ngallery/g/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/g/c;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/gaia/ngallery/g/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/l/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/g/c;->c:Ljava/lang/String;

    const-string v0, ".22"

    .line 26
    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string v0, ".11"

    .line 28
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/g/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/g/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 35
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 36
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4b

    if-ge v2, v1, :cond_4b

    if-eq v0, v3, :cond_34

    if-ge v2, v0, :cond_34

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/g/c;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/g/c;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/g/c;->c:Ljava/lang/String;

    return-void

    .line 40
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not pase encoded filename with no suffix point:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not parse encoded filename with no extension:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/gaia/ngallery/g/b;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gaia/ngallery/g/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/gaia/ngallery/l/c;->d(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 48
    new-instance v1, Lcom/gaia/ngallery/g/b;

    iget-object v2, p0, Lcom/gaia/ngallery/g/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/gaia/ngallery/g/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/gaia/ngallery/g/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/gaia/ngallery/g/c;->b:Ljava/lang/String;

    return-object v0
.end method
