###### Class com.gaia.ngallery.model.e (com.gaia.ngallery.model.e)
.class public Lcom/gaia/ngallery/model/e;
.super Ljava/lang/Object;
.source "UriImportSourceFile.java"

# interfaces
.implements Lcom/gaia/ngallery/model/b;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/gaia/ngallery/model/e;->a:Landroid/net/Uri;

    .line 19
    iput-object p1, p0, Lcom/gaia/ngallery/model/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/gaia/ngallery/model/e;->a:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/model/e;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 32
    iget-object v0, p0, Lcom/gaia/ngallery/model/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 34
    :try_start_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v1, "_display_name"

    .line 35
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception p1

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_34
    :goto_34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    if-nez v1, :cond_4c

    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 p1, 0x2f

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4c

    add-int/lit8 p1, p1, 0x1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_4c
    return-object v1
.end method

.method public b()Ljava/io/InputStream;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/gaia/ngallery/model/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/model/e;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
