###### Class com.amazonaws.transform.StaxUnmarshallerContext (com.amazonaws.transform.StaxUnmarshallerContext)
.class public Lcom/amazonaws/transform/StaxUnmarshallerContext;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:Lorg/xmlpull/v1/XmlPullParser;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a:Ljava/util/Deque;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->e:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->f:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    .line 72
    iput-object p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->g:Ljava/util/Map;

    return-void
.end method

.method private f()V
    .registers 3

    .line 256
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a:Ljava/util/Deque;

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_4a

    .line 259
    :cond_2b
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4a

    .line 260
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, ""

    goto :goto_48

    :cond_40
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_48
    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d:Ljava/lang/String;

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 104
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 106
    :cond_14
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    iput v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    .line 107
    invoke-direct {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->f()V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->g:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->f:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .registers 8

    const-string v0, "."

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, -0x1

    move v2, p2

    const/4 p2, -0x1

    :cond_d
    :goto_d
    const-string v3, "/"

    add-int/2addr p2, v1

    .line 151
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v0, :cond_23

    add-int/lit8 v3, p2, 0x1

    .line 153
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 158
    :cond_23
    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result p2

    if-ne p2, v2, :cond_43

    iget-object p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    return v1
.end method

.method public b()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .registers 2

    .line 171
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public d()I
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    .line 186
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 187
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    .line 190
    :cond_15
    invoke-direct {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->f()V

    .line 193
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    .line 194
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    .line 195
    iget-object v2, v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->a:Ljava/lang/String;

    iget v3, v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->b:I

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 197
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->e:Ljava/util/Map;

    iget-object v1, v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_44
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b:I

    return v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->e:Ljava/util/Map;

    return-object v0
.end method

###### Class com.amazonaws.transform.StaxUnmarshallerContext.MetadataExpression (com.amazonaws.transform.StaxUnmarshallerContext$MetadataExpression)
.class Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/StaxUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataExpression"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->a:Ljava/lang/String;

    .line 250
    iput p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->b:I

    .line 251
    iput-object p3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->c:Ljava/lang/String;

    return-void
.end method
