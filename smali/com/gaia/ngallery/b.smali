###### Class com.gaia.ngallery.b (com.gaia.ngallery.b)
.class public final Lcom/gaia/ngallery/b;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/b$a;,
        Lcom/gaia/ngallery/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "KEY_INPUT_FILTER_VISIBILITY"

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/gaia/ngallery/e;

.field private static d:Lcom/prism/hider/vault/commons/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/gaia/ngallery/b;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/prism/hider/vault/commons/i;
    .registers 1

    .line 59
    sget-object v0, Lcom/gaia/ngallery/b;->d:Lcom/prism/hider/vault/commons/i;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/gaia/ngallery/b$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/b$1;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/b;->d:Lcom/prism/hider/vault/commons/i;

    .line 107
    :cond_b
    sget-object v0, Lcom/gaia/ngallery/b;->d:Lcom/prism/hider/vault/commons/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x4

    .line 123
    invoke-static {p0, v0}, Lcom/gaia/ngallery/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 4

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gaia/ngallery/ui/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_START_GALLEY_CMD"

    .line 137
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-static {p0}, Lcom/gaia/ngallery/l/g;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "KEY_SHOW_PROVERSION_AD"

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    invoke-static {p0, v1}, Lcom/gaia/ngallery/l/g;->c(Landroid/content/Context;Z)V

    .line 144
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/gaia/ngallery/e;Lcom/prism/hider/vault/commons/i;)V
    .registers 4

    .line 51
    sget-object v0, Lcom/gaia/ngallery/b;->c:Lcom/gaia/ngallery/e;

    if-nez v0, :cond_6

    .line 52
    sput-object p1, Lcom/gaia/ngallery/b;->c:Lcom/gaia/ngallery/e;

    .line 53
    :cond_6
    sput-object p2, Lcom/gaia/ngallery/b;->d:Lcom/prism/hider/vault/commons/i;

    .line 54
    invoke-static {p0}, Lcom/gaia/ngallery/b;->d(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/gaia/ngallery/i/a;->a()Lcom/gaia/ngallery/i/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/i/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Lcom/gaia/ngallery/e;
    .registers 1

    .line 118
    sget-object v0, Lcom/gaia/ngallery/b;->c:Lcom/gaia/ngallery/e;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x3

    .line 127
    invoke-static {p0, v0}, Lcom/gaia/ngallery/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/gaia/ngallery/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    const/16 v0, 0xa

    .line 131
    invoke-static {p0, v0}, Lcom/gaia/ngallery/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .registers 4

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/gaia/ngallery/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/gaia/ngallery/b$b;-><init>(Lcom/gaia/ngallery/b$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/gaia/ngallery/b$a;

    invoke-direct {v1, v2}, Lcom/gaia/ngallery/b$a;-><init>(Lcom/gaia/ngallery/b$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

###### Class com.gaia.ngallery.b.AnonymousClass1 (com.gaia.ngallery.b$1)
.class final Lcom/gaia/ngallery/b$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Lcom/prism/hider/vault/commons/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .registers 3

    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/prism/hider/vault/commons/j;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

###### Class com.gaia.ngallery.b.a (com.gaia.ngallery.b$a)
.class Lcom/gaia/ngallery/b$a;
.super Landroid/content/BroadcastReceiver;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "reason"

.field private static final b:Ljava/lang/String; = "recentapps"

.field private static final c:Ljava/lang/String; = "homekey"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaia/ngallery/b$1;)V
    .registers 2

    .line 163
    invoke-direct {p0}, Lcom/gaia/ngallery/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 173
    invoke-static {}, Lcom/gaia/ngallery/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeKeyRecevier.onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "reason"

    .line 176
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_34

    const-string v0, "homekey"

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "recentapps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 179
    :cond_2d
    invoke-static {p1}, Lcom/gaia/ngallery/j/b;->a(Landroid/content/Context;)Lcom/gaia/ngallery/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/b;->g()V

    :cond_34
    return-void
.end method

###### Class com.gaia.ngallery.b.C0049b (com.gaia.ngallery.b$b)
.class Lcom/gaia/ngallery/b$b;
.super Landroid/content/BroadcastReceiver;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaia/ngallery/b$1;)V
    .registers 2

    .line 154
    invoke-direct {p0}, Lcom/gaia/ngallery/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 158
    invoke-static {}, Lcom/gaia/ngallery/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p1}, Lcom/gaia/ngallery/j/b;->a(Landroid/content/Context;)Lcom/gaia/ngallery/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/j/b;->g()V

    return-void
.end method
