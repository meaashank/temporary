###### Class com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileUpload (com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileUpload)
.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
.super Ljava/lang/Object;
.source "MultipleFileUpload.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
            ">;"
        }
    .end annotation
.end method
