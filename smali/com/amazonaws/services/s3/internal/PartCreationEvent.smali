###### Class com.amazonaws.services.s3.internal.PartCreationEvent (com.amazonaws.services.s3.internal.PartCreationEvent)
.class public Lcom/amazonaws/services/s3/internal/PartCreationEvent;
.super Ljava/lang/Object;
.source "PartCreationEvent.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:Z

.field private final d:Lcom/amazonaws/services/s3/OnFileDelete;


# direct methods
.method constructor <init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 34
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a:Ljava/io/File;

    .line 35
    iput p2, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b:I

    .line 36
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c:Z

    .line 37
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d:Lcom/amazonaws/services/s3/OnFileDelete;

    return-void

    .line 33
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "part must not be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a:Ljava/io/File;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b:I

    return v0
.end method

.method public c()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c:Z

    return v0
.end method

.method public d()Lcom/amazonaws/services/s3/OnFileDelete;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d:Lcom/amazonaws/services/s3/OnFileDelete;

    return-object v0
.end method
