###### Class com.amazonaws.services.s3.model.transform.RequestXmlFactory (com.amazonaws.services.s3.model.transform.RequestXmlFactory)
.class public Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;
.super Ljava/lang/Object;
.source "RequestXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)[B
    .registers 3

    .line 76
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "RestoreRequest"

    .line 78
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Days"

    .line 79
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 80
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 82
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)[B"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "CompleteMultipartUpload"

    .line 39
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    if-eqz p0, :cond_53

    .line 41
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/PartETag;

    const-string v2, "Part"

    .line 53
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "PartNumber"

    .line 54
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "ETag"

    .line 55
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 56
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_18

    .line 59
    :cond_53
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 61
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p0

    return-object p0
.end method

###### Class com.amazonaws.services.s3.model.transform.RequestXmlFactory.AnonymousClass1 (com.amazonaws.services.s3.model.transform.RequestXmlFactory$1)
.class final Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;
.super Ljava/lang/Object;
.source "RequestXmlFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->a(Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazonaws/services/s3/model/PartETag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/PartETag;Lcom/amazonaws/services/s3/model/PartETag;)I
    .registers 5

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PartETag;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/PartETag;->a()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 p1, -0x1

    return p1

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PartETag;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/PartETag;->a()I

    move-result p2

    if-le p1, p2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 41
    check-cast p1, Lcom/amazonaws/services/s3/model/PartETag;

    check-cast p2, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;->a(Lcom/amazonaws/services/s3/model/PartETag;Lcom/amazonaws/services/s3/model/PartETag;)I

    move-result p1

    return p1
.end method
