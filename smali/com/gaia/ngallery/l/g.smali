###### Class com.gaia.ngallery.l.g (com.gaia.ngallery.l.g)
.class public Lcom/gaia/ngallery/l/g;
.super Ljava/lang/Object;
.source "GalleryPreferenceUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "CLOUD_SETTING_SYNC_WIFI_ONLY"

.field private static final b:Ljava/lang/String; = "AUTO_ROTATE"

.field private static final c:Ljava/lang/String; = "PREFERENCE_NAME_GALLERY"

.field private static final d:Ljava/lang/String; = "ITEM_HAS_BEEN_LAUNCHED"

.field private static e:Lcom/prism/commons/f/m;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/lang/Boolean;

.field private static h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/prism/commons/f/m;
    .registers 3

    .line 23
    sget-object v0, Lcom/gaia/ngallery/l/g;->e:Lcom/prism/commons/f/m;

    if-nez v0, :cond_19

    .line 24
    const-class v0, Lcom/prism/commons/f/b;

    monitor-enter v0

    .line 25
    :try_start_7
    sget-object v1, Lcom/gaia/ngallery/l/g;->e:Lcom/prism/commons/f/m;

    if-nez v1, :cond_14

    .line 26
    new-instance v1, Lcom/prism/commons/f/m;

    const-string v2, "PREFERENCE_NAME_GALLERY"

    invoke-direct {v1, v2}, Lcom/prism/commons/f/m;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/gaia/ngallery/l/g;->e:Lcom/prism/commons/f/m;

    .line 27
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 29
    :cond_19
    :goto_19
    sget-object v0, Lcom/gaia/ngallery/l/g;->e:Lcom/prism/commons/f/m;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4

    .line 35
    invoke-static {}, Lcom/gaia/ngallery/l/g;->a()Lcom/prism/commons/f/m;

    move-result-object v0

    const-string v1, "CLOUD_SETTING_SYNC_WIFI_ONLY"

    invoke-virtual {v0, p0, v1, p1}, Lcom/prism/commons/f/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gaia/ngallery/l/g;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .line 41
    sget-object v0, Lcom/gaia/ngallery/l/g;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    .line 42
    invoke-static {}, Lcom/gaia/ngallery/l/g;->a()Lcom/prism/commons/f/m;

    move-result-object v0

    const-string v1, "CLOUD_SETTING_SYNC_WIFI_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/prism/commons/f/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gaia/ngallery/l/g;->f:Ljava/lang/Boolean;

    .line 44
    :cond_15
    sget-object p0, Lcom/gaia/ngallery/l/g;->f:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .registers 4

    .line 50
    invoke-static {}, Lcom/gaia/ngallery/l/g;->a()Lcom/prism/commons/f/m;

    move-result-object v0

    const-string v1, "AUTO_ROTATE"

    invoke-virtual {v0, p0, v1, p1}, Lcom/prism/commons/f/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gaia/ngallery/l/g;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    .line 55
    sget-object v0, Lcom/gaia/ngallery/l/g;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    .line 56
    invoke-static {}, Lcom/gaia/ngallery/l/g;->a()Lcom/prism/commons/f/m;

    move-result-object v0

    const-string v1, "AUTO_ROTATE"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/prism/commons/f/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gaia/ngallery/l/g;->g:Ljava/lang/Boolean;

    .line 58
    :cond_15
    sget-object p0, Lcom/gaia/ngallery/l/g;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Z)V
    .registers 4

    .line 64
    invoke-static {}, Lcom/gaia/ngallery/l/g;->a()Lcom/prism/commons/f/m;

    move-result-object v0

    const-string v1, "ITEM_HAS_BEEN_LAUNCHED"

    invoke-virtual {v0, p0, v1, p1}, Lcom/prism/commons/f/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gaia/ngallery/l/g;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    .line 69
    sget-object v0, Lcom/gaia/ngallery/l/g;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    .line 70
    invoke-static {}, Lcom/gaia/ngallery/l/g;->a()Lcom/prism/commons/f/m;

    move-result-object v0

    const-string v1, "ITEM_HAS_BEEN_LAUNCHED"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/prism/commons/f/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gaia/ngallery/l/g;->h:Ljava/lang/Boolean;

    .line 72
    :cond_15
    sget-object p0, Lcom/gaia/ngallery/l/g;->h:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
