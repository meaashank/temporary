###### Class com.amazonaws.handlers.AsyncHandler (com.amazonaws.handlers.AsyncHandler)
.class public interface abstract Lcom/amazonaws/handlers/AsyncHandler;
.super Ljava/lang/Object;
.source "AsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQUEST:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;TRESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method
