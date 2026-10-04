###### Class com.amazonaws.services.s3.model.transform.AbstractHandler (com.amazonaws.services.s3.model.transform.AbstractHandler)
.class abstract Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AbstractHandler.java"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->b:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.end method

.method protected final varargs a([Ljava/lang/String;)Z
    .registers 8

    .line 75
    array-length v0, p1

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    return v2

    .line 80
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    aget-object v4, p1, v1

    const-string v5, "*"

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_32
    const/4 p1, 0x1

    return p1
.end method

.method public final characters([CII)V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Z
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 41
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
