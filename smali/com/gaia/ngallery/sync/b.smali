###### Class com.gaia.ngallery.sync.b (com.gaia.ngallery.sync.b)
.class public Lcom/gaia/ngallery/sync/b;
.super Ljava/lang/Object;
.source "GlobalSyncStatus.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4


# instance fields
.field private e:I

.field private f:J

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/gaia/ngallery/sync/b;->e:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/gaia/ngallery/sync/b;->f:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/gaia/ngallery/sync/b;->g:I

    .line 17
    iput v0, p0, Lcom/gaia/ngallery/sync/b;->h:I

    .line 18
    iput v0, p0, Lcom/gaia/ngallery/sync/b;->i:I

    .line 19
    iput v0, p0, Lcom/gaia/ngallery/sync/b;->j:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/gaia/ngallery/sync/b;->e:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/gaia/ngallery/sync/b;->e:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/gaia/ngallery/sync/b;->f:J

    return-void
.end method

.method public b()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/gaia/ngallery/sync/b;->f:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/gaia/ngallery/sync/b;->g:I

    return-void
.end method

.method public c()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/gaia/ngallery/sync/b;->g:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/gaia/ngallery/sync/b;->h:I

    return-void
.end method

.method public d()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/gaia/ngallery/sync/b;->h:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/gaia/ngallery/sync/b;->i:I

    return-void
.end method

.method public e()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/gaia/ngallery/sync/b;->i:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/gaia/ngallery/sync/b;->j:I

    return-void
.end method

.method public f()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/gaia/ngallery/sync/b;->j:I

    return v0
.end method
