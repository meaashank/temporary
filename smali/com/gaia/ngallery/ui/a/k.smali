###### Class com.gaia.ngallery.ui.a.k (com.gaia.ngallery.ui.a.k)
.class public Lcom/gaia/ngallery/ui/a/k;
.super Lcom/prism/commons/a/b;
.source "ShareAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prism/commons/a/b<",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/k/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = ".share.fileprovider"


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/gaia/ngallery/ui/a/k;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/a/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 2

    .line 34
    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/k;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/prism/commons/a/b;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/k;->c:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/k/c;)Landroid/content/Intent;
    .registers 8

    .line 71
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lcom/gaia/ngallery/k/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Lcom/gaia/ngallery/k/c;->a()Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object p3

    .line 74
    sget-object v1, Lcom/gaia/ngallery/ui/a/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file provider auto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    sget-object v0, Lcom/gaia/ngallery/ui/a/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntent url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.STREAM"

    .line 78
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5e

    const-string p1, "image/*"

    .line 80
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6a

    .line 81
    :cond_5e
    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_6a

    const-string p1, "video/*"

    .line 82
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_6a
    :goto_6a
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 91
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/k/c;

    .line 94
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/gaia/ngallery/k/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/gaia/ngallery/ui/a/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_31
    const-string p1, "android.intent.extra.STREAM"

    .line 98
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "image/*"

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 46
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/k;->d:Ljava/lang/String;

    if-nez p1, :cond_12

    .line 47
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/e;->d()Ljava/io/File;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/k;->d:Ljava/lang/String;

    .line 50
    :cond_12
    iget-object p1, p0, Lcom/gaia/ngallery/ui/a/k;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/k/c;",
            ">;)V"
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    .line 109
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/k/c;

    invoke-direct {p0, p1, v0, v1}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/k/c;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1b

    .line 111
    :cond_17
    invoke-direct {p0, p1, v0, p2}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    :goto_1b
    sget-object v1, Lcom/gaia/ngallery/ui/a/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget v1, Lcom/gaia/ngallery/i$n;->title_share_chooser:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/gaia/ngallery/ui/a/k;->a(Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_4f

    :catch_42
    move-exception p1

    .line 118
    sget-object p2, Lcom/gaia/ngallery/ui/a/k;->a:Ljava/lang/String;

    const-string v0, "share failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p2, "share failed"

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/k;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".share.fileprovider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic b(Landroid/app/Activity;Ljava/util/List;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$44STnApEN3H11cPxAhgEDozn2n8(Lcom/gaia/ngallery/ui/a/k;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/prism/commons/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$9_xE1WMy2_BeyVix1Oe7Odek3b0(Lcom/gaia/ngallery/ui/a/k;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->c()V

    return-void
.end method

.method public static synthetic lambda$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s(Lcom/gaia/ngallery/ui/a/k;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/a/k;->b(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$rwG1zIo61uAGcwAh2c9svCo42Ik(Lcom/gaia/ngallery/ui/a/k;)V
    .registers 1

    invoke-virtual {p0}, Lcom/prism/commons/a/b;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 6

    .line 56
    new-instance v0, Lcom/gaia/ngallery/ui/a/l;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/k;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/a/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gaia/ngallery/ui/a/l;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    .line 57
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0;-><init>(Lcom/gaia/ngallery/ui/a/k;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$b;)Lcom/prism/commons/a/a;

    .line 58
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik;-><init>(Lcom/gaia/ngallery/ui/a/k;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$a;)Lcom/prism/commons/a/a;

    .line 59
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8;-><init>(Lcom/gaia/ngallery/ui/a/k;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$d;)Lcom/prism/commons/a/a;

    .line 60
    new-instance v1, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;-><init>(Lcom/gaia/ngallery/ui/a/k;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/a/l;->a(Lcom/prism/commons/a/a$e;)Lcom/prism/commons/a/a;

    .line 63
    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/ui/a/l;->a(Landroid/app/Activity;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8 (com.gaia.ngallery.ui.a.-$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$d;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/k;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8;->f$0:Lcom/gaia/ngallery/ui/a/k;

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$44STnApEN3H11cPxAhgEDozn2n8;->f$0:Lcom/gaia/ngallery/ui/a/k;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/a/k;->lambda$44STnApEN3H11cPxAhgEDozn2n8(Lcom/gaia/ngallery/ui/a/k;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0 (com.gaia.ngallery.ui.a.-$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$b;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/k;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0;->f$0:Lcom/gaia/ngallery/ui/a/k;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskStart()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$9_xE1WMy2_BeyVix1Oe7Odek3b0;->f$0:Lcom/gaia/ngallery/ui/a/k;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/k;->lambda$9_xE1WMy2_BeyVix1Oe7Odek3b0(Lcom/gaia/ngallery/ui/a/k;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$k$Amjx_pwVoh9uSZncdtnM1Lp7s (com.gaia.ngallery.ui.a.-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$e;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/k;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/k;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;->f$0:Lcom/gaia/ngallery/ui/a/k;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;->f$0:Lcom/gaia/ngallery/ui/a/k;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s;->f$1:Landroid/app/Activity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/a/k;->lambda$A-mjx_pwVoh9uSZ-ncdtnM1Lp7s(Lcom/gaia/ngallery/ui/a/k;Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.a.$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik (com.gaia.ngallery.ui.a.-$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik)
.class public final synthetic Lcom/gaia/ngallery/ui/a/-$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prism/commons/a/a$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/a/k;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/a/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik;->f$0:Lcom/gaia/ngallery/ui/a/k;

    return-void
.end method


# virtual methods
.method public final onBackgroundTaskComplete()V
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/a/-$$Lambda$k$rwG1zIo61uAGcwAh2c9svCo42Ik;->f$0:Lcom/gaia/ngallery/ui/a/k;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/a/k;->lambda$rwG1zIo61uAGcwAh2c9svCo42Ik(Lcom/gaia/ngallery/ui/a/k;)V

    return-void
.end method
