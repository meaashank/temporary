###### Class com.apktool.app.hider.a (com.apktool.app.hider.a)
.class public final Lcom/apktool/app/hider/a;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final A:Ljava/lang/Object;

.field public static final B:Ljava/lang/Object;

.field public static final C:Ljava/lang/Object;

.field public static final D:Z = true

.field public static final E:Z = true

.field public static final F:Z = false

.field public static final G:Z = true

.field public static final H:Z = false

.field public static final I:Z = true

.field public static final J:Z = false

.field public static final K:Z = false

.field public static final L:Z = false

.field public static final M:Z = true

.field public static final N:Z = true

.field public static final a:Z = false

.field public static final b:Ljava/lang/String; = "com.app.hider.master.pro"

.field public static final c:Ljava/lang/String; = "release"

.field public static final d:Ljava/lang/String; = "apphider"

.field public static final e:I = 0x32fd6

.field public static final f:Ljava/lang/String; = "2.1.3a"

.field public static final g:Z = false

.field public static final h:Z = false

.field public static final i:Z = true

.field public static final j:Z = true

.field public static final k:Z = true

.field public static final l:Z = false

.field public static final m:Z = true

.field public static final n:Z = true

.field public static final o:Ljava/lang/Object;

.field public static final p:Ljava/lang/String; = "com.prism.hide.gallery"

.field public static final q:Ljava/lang/String; = "/vGallery"

.field public static final r:Z = true

.field public static final s:I = 0x2

.field public static final t:Ljava/lang/Object;

.field public static final u:Ljava/lang/Object;

.field public static final v:Ljava/lang/Object;

.field public static final w:Z = false

.field public static final x:Ljava/lang/Object;

.field public static final y:Z = false

.field public static final z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$1;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$1;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->o:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$2;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$2;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->t:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$3;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$3;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->u:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$4;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$4;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->v:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$5;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$5;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->x:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$6;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$6;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->z:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$7;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$7;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->A:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$8;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$8;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->B:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/apktool/app/hider/BuildConfig$9;

    invoke-direct {v0}, Lcom/apktool/app/hider/BuildConfig$9;-><init>()V

    sput-object v0, Lcom/apktool/app/hider/a;->C:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$1 (com.apktool.app.hider.BuildConfig$1)
.class final Lcom/apktool/app/hider/BuildConfig$1;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string v1, "com.prism.ads.admob2.AdAdmobBanner"

    const-string v2, "ca-app-pub-9078095443651897/9789112925"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/apktool/app/hider/BuildConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$2 (com.apktool.app.hider.BuildConfig$2)
.class final Lcom/apktool/app/hider/BuildConfig$2;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$3 (com.apktool.app.hider.BuildConfig$3)
.class final Lcom/apktool/app/hider/BuildConfig$3;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$4 (com.apktool.app.hider.BuildConfig$4)
.class final Lcom/apktool/app/hider/BuildConfig$4;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string v1, "com.prism.ads.admob2.AdAdmobCardNative"

    const-string v2, "ca-app-pub-9078095443651897/8010435668"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/apktool/app/hider/BuildConfig$4;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$5 (com.apktool.app.hider.BuildConfig$5)
.class final Lcom/apktool/app/hider/BuildConfig$5;
.super Ljava/util/HashMap;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.prism.ads.admob2.AdAdmobInitializer"

    new-instance v1, Lcom/apktool/app/hider/BuildConfig$5$1;

    invoke-direct {v1, p0}, Lcom/apktool/app/hider/BuildConfig$5$1;-><init>(Lcom/apktool/app/hider/BuildConfig$5;)V

    invoke-virtual {p0, v0, v1}, Lcom/apktool/app/hider/BuildConfig$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.prism.ads.inmobi2.AdInMobiInitializer"

    new-instance v1, Lcom/apktool/app/hider/BuildConfig$5$2;

    invoke-direct {v1, p0}, Lcom/apktool/app/hider/BuildConfig$5$2;-><init>(Lcom/apktool/app/hider/BuildConfig$5;)V

    invoke-virtual {p0, v0, v1}, Lcom/apktool/app/hider/BuildConfig$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$5.AnonymousClass1 (com.apktool.app.hider.BuildConfig$5$1)
.class Lcom/apktool/app/hider/BuildConfig$5$1;
.super Ljava/util/HashMap;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/BuildConfig$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apktool/app/hider/BuildConfig$5;


# direct methods
.method constructor <init>(Lcom/apktool/app/hider/BuildConfig$5;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/apktool/app/hider/BuildConfig$5$1;->a:Lcom/apktool/app/hider/BuildConfig$5;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "admob_id"

    const-string v0, "ca-app-pub-9078095443651897~4676996245"

    invoke-virtual {p0, p1, v0}, Lcom/apktool/app/hider/BuildConfig$5$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$5.AnonymousClass2 (com.apktool.app.hider.BuildConfig$5$2)
.class Lcom/apktool/app/hider/BuildConfig$5$2;
.super Ljava/util/HashMap;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/BuildConfig$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apktool/app/hider/BuildConfig$5;


# direct methods
.method constructor <init>(Lcom/apktool/app/hider/BuildConfig$5;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/apktool/app/hider/BuildConfig$5$2;->a:Lcom/apktool/app/hider/BuildConfig$5;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "account_id"

    const-string v0, "ce03b7c830ad41178852f4852745e5f7"

    invoke-virtual {p0, p1, v0}, Lcom/apktool/app/hider/BuildConfig$5$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$6 (com.apktool.app.hider.BuildConfig$6)
.class final Lcom/apktool/app/hider/BuildConfig$6;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string v1, "com.prism.ads.admob2.AdAdmobInterstitial"

    const-string v2, "ca-app-pub-9078095443651897/6883188849"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/apktool/app/hider/BuildConfig$6;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$7 (com.apktool.app.hider.BuildConfig$7)
.class final Lcom/apktool/app/hider/BuildConfig$7;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string v1, "com.prism.ads.admob2.AdAdmobInterstitial"

    const-string v2, "ca-app-pub-9078095443651897/6892096042"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/apktool/app/hider/BuildConfig$7;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$8 (com.apktool.app.hider.BuildConfig$8)
.class final Lcom/apktool/app/hider/BuildConfig$8;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string v1, "com.prism.ads.admob2.AdAdmobInterstitial"

    const-string v2, "ca-app-pub-9078095443651897/4116942208"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/apktool/app/hider/BuildConfig$8;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.apktool.app.hider.BuildConfig$9 (com.apktool.app.hider.BuildConfig$9)
.class final Lcom/apktool/app/hider/BuildConfig$9;
.super Ljava/util/ArrayList;
.source "BuildConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apktool/app/hider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    const-string v1, "com.prism.ads.admob2.AdAdmobNativeInterstitialV2"

    const-string v2, "ca-app-pub-9078095443651897/2280913097"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/apktool/app/hider/BuildConfig$9;->add(Ljava/lang/Object;)Z

    return-void
.end method
