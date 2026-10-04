###### Class com.gaia.ngallery.sync.a.b (com.gaia.ngallery.sync.a.b)
.class public Lcom/gaia/ngallery/sync/a/b;
.super Ljava/lang/Object;
.source "RemoteComparableFile.java"


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>(ZJ)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/gaia/ngallery/sync/a/b;->a:Z

    .line 14
    iput-wide p2, p0, Lcom/gaia/ngallery/sync/a/b;->b:J

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/gaia/ngallery/sync/a/b;->a:Z

    return v0
.end method

.method public b()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/gaia/ngallery/sync/a/b;->b:J

    return-wide v0
.end method
