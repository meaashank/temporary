###### Class com.amazonaws.services.s3.model.InstructionFileId (com.amazonaws.services.s3.model.InstructionFileId)
.class public final Lcom/amazonaws/services/s3/model/InstructionFileId;
.super Lcom/amazonaws/services/s3/model/S3ObjectId;
.source "InstructionFileId.java"


# static fields
.field public static final a:Ljava/lang/String; = "instruction"

.field public static final b:Ljava/lang/String; = "instruction"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "."


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/InstructionFileId;
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;
    .registers 2

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
