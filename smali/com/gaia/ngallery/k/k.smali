###### Class com.gaia.ngallery.k.k (com.gaia.ngallery.k.k)
.class public Lcom/gaia/ngallery/k/k;
.super Landroid/os/AsyncTask;
.source "ListHostDirFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/gaia/ngallery/k/k$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/gaia/ngallery/k/k;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gaia/ngallery/k/k$a;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/gaia/ngallery/k/k;->b:Lcom/gaia/ngallery/k/k$a;

    return-void
.end method

.method private static synthetic a(Ljava/io/File;)Z
    .registers 4

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 38
    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    return v2

    .line 40
    :cond_16
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    .line 42
    :cond_1d
    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->y(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v2

    :cond_24
    return v1
.end method

.method public static synthetic lambda$aVBhzMI1n8MCGBQcT9LIe9yiMNI(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/k/k;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 34
    :cond_4
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;->INSTANCE:Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    .line 47
    new-instance v1, Lcom/gaia/ngallery/k/k$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/k/k$1;-><init>(Lcom/gaia/ngallery/k/k;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz p1, :cond_40

    .line 55
    sget-object v0, Lcom/gaia/ngallery/k/k;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_40
    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 65
    iget-object v0, p0, Lcom/gaia/ngallery/k/k;->b:Lcom/gaia/ngallery/k/k$a;

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/k/k$a;->a(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/k;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/k;->a(Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.k.k.AnonymousClass1 (com.gaia.ngallery.k.k$1)
.class Lcom/gaia/ngallery/k/k$1;
.super Ljava/lang/Object;
.source "ListHostDirFilesTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/k/k;->a([Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/k/k;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/k/k;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/gaia/ngallery/k/k$1;->a:Lcom/gaia/ngallery/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 47
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/k/k$1;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

###### Class com.gaia.ngallery.k.k.a (com.gaia.ngallery.k.k$a)
.class public interface abstract Lcom/gaia/ngallery/k/k$a;
.super Ljava/lang/Object;
.source "ListHostDirFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.gaia.ngallery.k.$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI (com.gaia.ngallery.k.-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI)
.class public final synthetic Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;

    invoke-direct {v0}, Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;->INSTANCE:Lcom/gaia/ngallery/k/-$$Lambda$k$aVBhzMI1n8MCGBQcT9LIe9yiMNI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/k/k;->lambda$aVBhzMI1n8MCGBQcT9LIe9yiMNI(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
