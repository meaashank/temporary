###### Class com.amazonaws.services.s3.model.S3DataSource (com.amazonaws.services.s3.model.S3DataSource)
.class public interface abstract Lcom/amazonaws/services/s3/model/S3DataSource;
.super Ljava/lang/Object;
.source "S3DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/S3DataSource$Utils;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/io/File;)V
.end method

.method public abstract a(Ljava/io/InputStream;)V
.end method

.method public abstract k()Ljava/io/File;
.end method

.method public abstract o()Ljava/io/InputStream;
.end method

###### Class com.amazonaws.services.s3.model.S3DataSource.Utils (com.amazonaws.services.s3.model.S3DataSource$Utils)
.class public final enum Lcom/amazonaws/services/s3/model/S3DataSource$Utils;
.super Ljava/lang/Enum;
.source "S3DataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/S3DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Utils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/S3DataSource$Utils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/S3DataSource$Utils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/S3DataSource$Utils;

    sput-object v0, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->$VALUES:[Lcom/amazonaws/services/s3/model/S3DataSource$Utils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V
    .registers 5

    if-eqz p1, :cond_5

    .line 48
    invoke-static {p3, p4}, Lcom/amazonaws/util/IOUtils;->release(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 52
    :cond_5
    invoke-interface {p0, p2}, Lcom/amazonaws/services/s3/model/S3DataSource;->a(Ljava/io/InputStream;)V

    .line 53
    invoke-interface {p0, p1}, Lcom/amazonaws/services/s3/model/S3DataSource;->a(Ljava/io/File;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3DataSource$Utils;
    .registers 2

    .line 37
    const-class v0, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/S3DataSource$Utils;
    .registers 1

    .line 37
    sget-object v0, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->$VALUES:[Lcom/amazonaws/services/s3/model/S3DataSource$Utils;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/S3DataSource$Utils;

    return-object v0
.end method
