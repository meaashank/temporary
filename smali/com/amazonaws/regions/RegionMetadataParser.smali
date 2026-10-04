###### Class com.amazonaws.regions.RegionMetadataParser (com.amazonaws.regions.RegionMetadataParser)
.class public Lcom/amazonaws/regions/RegionMetadataParser;
.super Ljava/lang/Object;
.source "RegionMetadataParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Region"

.field private static final b:Ljava/lang/String; = "Name"

.field private static final c:Ljava/lang/String; = "Domain"

.field private static final d:Ljava/lang/String; = "Endpoint"

.field private static final e:Ljava/lang/String; = "ServiceName"

.field private static final f:Ljava/lang/String; = "Http"

.field private static final g:Ljava/lang/String; = "Https"

.field private static final h:Ljava/lang/String; = "Hostname"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/w3c/dom/Element;Z)Lcom/amazonaws/regions/Region;
    .registers 5

    const-string v0, "Name"

    .line 148
    invoke-static {v0, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Domain"

    .line 149
    invoke-static {v1, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/amazonaws/regions/Region;

    invoke-direct {v2, v0, v1}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Endpoint"

    .line 154
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 156
    :goto_18
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 158
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 157
    invoke-static {v2, v1, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Lcom/amazonaws/regions/Region;Lorg/w3c/dom/Element;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2a
    return-object v2
.end method

.method public static a(Ljava/io/InputStream;)Lcom/amazonaws/regions/RegionMetadata;
    .registers 3

    .line 60
    new-instance v0, Lcom/amazonaws/regions/RegionMetadata;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/amazonaws/regions/RegionMetadataParser;->b(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/regions/RegionMetadata;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 2

    .line 189
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 193
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/amazonaws/regions/Region;Lorg/w3c/dom/Element;Z)V
    .registers 7

    const-string v0, "ServiceName"

    .line 170
    invoke-static {v0, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hostname"

    .line 171
    invoke-static {v1, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Http"

    .line 172
    invoke-static {v2, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Https"

    .line 173
    invoke-static {v3, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3d

    .line 175
    invoke-static {v1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    goto :goto_3d

    .line 176
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid service endpoint ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is detected."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->c()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->d()Ljava/util/Map;

    move-result-object p2

    const-string v1, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->e()Ljava/util/Map;

    move-result-object p0

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".amazonaws.com"

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_3b
    .catchall {:try_start_0 .. :try_end_c} :catchall_39

    .line 126
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_f

    :catch_f
    const-string p0, "Region"

    .line 131
    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 133
    :goto_1b
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 134
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 135
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 136
    check-cast v2, Lorg/w3c/dom/Element;

    .line 137
    invoke-static {v2, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->a(Lorg/w3c/dom/Element;Z)Lcom/amazonaws/regions/Region;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_38
    return-object v0

    :catchall_39
    move-exception p1

    goto :goto_59

    :catch_3b
    move-exception p1

    .line 121
    :try_start_3c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse region metadata file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_57
    move-exception p1

    .line 119
    throw p1
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_39

    .line 126
    :goto_59
    :try_start_59
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5c

    .line 129
    :catch_5c
    throw p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p1, p2}, Lcom/amazonaws/regions/RegionMetadataParser;->b(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0}, Lcom/amazonaws/regions/RegionMetadataParser;->b(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
