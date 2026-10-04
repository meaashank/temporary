###### Class com.gaia.ngallery.d (com.gaia.ngallery.d)
.class public Lcom/gaia/ngallery/d;
.super Ljava/lang/Object;
.source "GalleryBugReporter.java"


# static fields
.field private static final a:Ljava/lang/String; = "sync_failed"

.field private static final b:Ljava/lang/String; = "import_failed"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/prism/bugreport/commons/b;
    .registers 1

    .line 15
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->n()Lcom/prism/bugreport/commons/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    .line 22
    new-instance v0, Lcom/prism/bugreport/commons/a$a;

    invoke-direct {v0}, Lcom/prism/bugreport/commons/a$a;-><init>()V

    const-string v1, "sync_failed"

    invoke-virtual {v0, v1}, Lcom/prism/bugreport/commons/a$a;->a(Ljava/lang/String;)Lcom/prism/bugreport/commons/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prism/bugreport/commons/a$a;->a(Ljava/lang/Throwable;)Lcom/prism/bugreport/commons/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prism/bugreport/commons/a$a;->a()Lcom/prism/bugreport/commons/a;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/gaia/ngallery/d;->a()Lcom/prism/bugreport/commons/b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/prism/bugreport/commons/b;->a(Landroid/content/Context;Lcom/prism/bugreport/commons/a;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    .line 28
    new-instance v0, Lcom/prism/bugreport/commons/a$a;

    invoke-direct {v0}, Lcom/prism/bugreport/commons/a$a;-><init>()V

    const-string v1, "import_failed"

    invoke-virtual {v0, v1}, Lcom/prism/bugreport/commons/a$a;->a(Ljava/lang/String;)Lcom/prism/bugreport/commons/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prism/bugreport/commons/a$a;->a(Ljava/lang/Throwable;)Lcom/prism/bugreport/commons/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prism/bugreport/commons/a$a;->a()Lcom/prism/bugreport/commons/a;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/gaia/ngallery/d;->a()Lcom/prism/bugreport/commons/b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/prism/bugreport/commons/b;->a(Landroid/content/Context;Lcom/prism/bugreport/commons/a;)V

    return-void
.end method
