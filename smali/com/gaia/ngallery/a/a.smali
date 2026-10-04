###### Class com.gaia.ngallery.a.a (com.gaia.ngallery.a.a)
.class public Lcom/gaia/ngallery/a/a;
.super Ljava/lang/Object;
.source "GalleryAnalytics.java"


# static fields
.field private static final A:Ljava/lang/String; = "evt_open_album_ad_loaded"

.field private static final B:Ljava/lang/String; = "evt_open_album_ad_opened"

.field private static final C:Ljava/lang/String; = "evt_open_album_ad_clicked"

.field private static final D:Ljava/lang/String; = "evt_import_p_v_ad_loaded"

.field private static final E:Ljava/lang/String; = "evt_import_p_v_ad_opened"

.field private static final F:Ljava/lang/String; = "evt_import_p_v_ad_clicked"

.field public static final a:Ljava/lang/String; = "SCENCE_HOME"

.field public static final b:Ljava/lang/String; = "SCENCE_ALBUM"

.field public static final c:Ljava/lang/String; = "FROM_MEDIASTORE"

.field public static final d:Ljava/lang/String; = "FROM_INTERNALSTORAGE"

.field private static final e:Ljava/lang/String; = "event_click_album"

.field private static final f:Ljava/lang/String; = "event_click_cloud_setting"

.field private static final g:Ljava/lang/String; = "event_click_vault_setting"

.field private static final h:Ljava/lang/String; = "event_click_contactus"

.field private static final i:Ljava/lang/String; = "event_click_rateus"

.field private static final j:Ljava/lang/String; = "scence"

.field private static final k:Ljava/lang/String; = "event_click_float_button"

.field private static final l:Ljava/lang/String; = "event_click_sub_import"

.field private static final m:Ljava/lang/String; = "event_click_sub_takephoto"

.field private static final n:Ljava/lang/String; = "event_click_sub_recordvedio"

.field private static final o:Ljava/lang/String; = "event_click_sub_addalbum"

.field private static final p:Ljava/lang/String; = "event_click_import_ms"

.field private static final q:Ljava/lang/String; = "event_click_import_is"

.field private static final r:Ljava/lang/String; = "KEY_FROM"

.field private static final s:Ljava/lang/String; = "event_import_images"

.field private static final t:Ljava/lang/String; = "event_import_videos"

.field private static final u:Ljava/lang/String; = "event_click_login_gdrive"

.field private static final v:Ljava/lang/String; = "event_login_gdrive_success"

.field private static final w:Ljava/lang/String; = "event_click_syncnow"

.field private static final x:Ljava/lang/String; = "event_sync_success"

.field private static final y:Ljava/lang/String; = "event_sync_failed"

.field private static final z:Ljava/lang/String; = "event_click_standalone_ad"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_album"

    .line 22
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "event_click_float_button"

    .line 45
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    const-string v0, "scence"

    invoke-interface {p0, v0, p1}, Lcom/prism/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    const-string v0, "event_import_images"

    .line 77
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    const-string v0, "KEY_FROM"

    invoke-interface {p0, v0, p1}, Lcom/prism/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/prism/a/a/a;->a(I)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/model/AlbumFile;

    .line 89
    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 91
    :cond_1c
    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    if-lez v0, :cond_2b

    .line 95
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2b
    if-lez v1, :cond_30

    .line 97
    invoke-static {p0, p1, v1}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_30
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;
    .registers 3

    .line 17
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->o()Lcom/prism/a/a/a$a;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/prism/a/a/a$a;->getEventLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_cloud_setting"

    .line 26
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    const-string v0, "event_import_videos"

    .line 81
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    const-string v0, "KEY_FROM"

    invoke-interface {p0, v0, p1}, Lcom/prism/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/prism/a/a/a;->a(I)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_vault_setting"

    .line 30
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_contactus"

    .line 34
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_rateus"

    .line 38
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_sub_import"

    .line 49
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_sub_takephoto"

    .line 53
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_sub_recordvedio"

    .line 57
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_sub_addalbum"

    .line 61
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_import_ms"

    .line 65
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_import_is"

    .line 69
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_login_gdrive"

    .line 102
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_login_gdrive_success"

    .line 106
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_syncnow"

    .line 110
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_sync_success"

    .line 114
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_sync_failed"

    .line 118
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .registers 2

    const-string v0, "event_click_standalone_ad"

    .line 123
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .registers 2

    const-string v0, "evt_open_album_ad_loaded"

    .line 128
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .registers 2

    const-string v0, "evt_open_album_ad_opened"

    .line 132
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .registers 2

    const-string v0, "evt_open_album_ad_clicked"

    .line 136
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .registers 2

    const-string v0, "evt_import_p_v_ad_loaded"

    .line 142
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .registers 2

    const-string v0, "evt_import_p_v_ad_opened"

    .line 146
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .registers 2

    const-string v0, "evt_import_p_v_ad_clicked"

    .line 150
    invoke-static {p0, v0}, Lcom/gaia/ngallery/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/prism/a/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/prism/a/a/a;->a()V

    return-void
.end method
