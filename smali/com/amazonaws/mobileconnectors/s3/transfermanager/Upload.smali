###### Class com.amazonaws.mobileconnectors.s3.transfermanager.Upload (com.amazonaws.mobileconnectors.s3.transfermanager.Upload)
.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
.super Ljava/lang/Object;
.source "Upload.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract a(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
.end method

.method public abstract b()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
.end method

.method public abstract c()V
.end method
