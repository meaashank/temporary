###### Class com.amazonaws.transform.VoidUnmarshaller (com.amazonaws.transform.VoidUnmarshaller)
.class public Lcom/amazonaws/transform/VoidUnmarshaller;
.super Ljava/lang/Object;
.source "VoidUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Ljava/lang/Void;",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 23
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/VoidUnmarshaller;->a(Lorg/w3c/dom/Node;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/w3c/dom/Node;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
