###### Class com.gaia.ngallery.sync.a.c (com.gaia.ngallery.sync.a.c)
.class public Lcom/gaia/ngallery/sync/a/c;
.super Ljava/lang/Object;
.source "RemoteComparator.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x5

.field public static final d:I = 0x6

.field public static final e:I = 0x9

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/gaia/ngallery/sync/a/c;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/sync/a/b;Lcom/gaia/ngallery/sync/a/a;)I
    .registers 11

    .line 22
    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 23
    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0x9

    return p1

    .line 26
    :cond_f
    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->b()Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_25

    .line 27
    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->d()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->c()J

    move-result-wide p1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_24

    const/4 p1, 0x2

    return p1

    :cond_24
    return v0

    :cond_25
    return v0

    .line 37
    :cond_26
    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 38
    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7f

    .line 39
    sget-object v0, Lcom/gaia/ngallery/sync/a/c;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote.lastModified():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/a/b;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " local.lastModefiedSyncedFromServer():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " < : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/a/b;->b()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->e()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_65

    const/4 v3, 0x1

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/a/b;->b()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/gaia/ngallery/sync/a/a;->e()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-gtz v0, :cond_7e

    const/4 p1, 0x6

    return p1

    :cond_7e
    return v1

    :cond_7f
    return v1

    .line 50
    :cond_80
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "can not compare remote and local that are both NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
