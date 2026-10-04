###### Class com.amazonaws.services.s3.S3ClientOptions (com.amazonaws.services.s3.S3ClientOptions)
.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    }
.end annotation


# static fields
.field public static final a:Z = false

.field public static final b:Z = false

.field public static final c:Z = false

.field public static final d:Z = false

.field public static final e:Z = false


# instance fields
.field private f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 190
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->g:Z

    .line 191
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->h:Z

    .line 192
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->i:Z

    .line 193
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 204
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->g:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->g:Z

    .line 205
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->h:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->h:Z

    .line 206
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->i:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->i:Z

    .line 207
    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->j:Z

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->j:Z

    return-void
.end method

.method private constructor <init>(ZZZZZ)V
    .registers 6

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 216
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->g:Z

    .line 217
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->h:Z

    .line 218
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->i:Z

    .line 219
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->j:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .registers 7

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZ)V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .registers 2

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method public b(Z)Lcom/amazonaws/services/s3/S3ClientOptions;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;->a(Z)V

    return-object p0
.end method

.method public b()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->g:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->h:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->i:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->j:Z

    return v0
.end method

###### Class com.amazonaws.services.s3.S3ClientOptions.AnonymousClass1 (com.amazonaws.services.s3.S3ClientOptions$1)
.class synthetic Lcom/amazonaws/services/s3/S3ClientOptions$1;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/S3ClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.services.s3.S3ClientOptions.Builder (com.amazonaws.services.s3.S3ClientOptions$Builder)
.class public final Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/S3ClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a:Z

    .line 53
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b:Z

    .line 54
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c:Z

    .line 55
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->d:Z

    .line 56
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a:Z

    return-object p0
.end method

.method public a()Lcom/amazonaws/services/s3/S3ClientOptions;
    .registers 9

    .line 66
    new-instance v7, Lcom/amazonaws/services/s3/S3ClientOptions;

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a:Z

    iget-boolean v2, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b:Z

    iget-boolean v3, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c:Z

    iget-boolean v4, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->d:Z

    iget-boolean v5, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->e:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V

    return-object v7
.end method

.method public b()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c:Z

    return-object p0
.end method

.method public c()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->e:Z

    return-object p0
.end method

.method public c(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .registers 2

    .line 141
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->d:Z

    return-object p0
.end method
