###### Class com.amazonaws.util.XpathUtils (com.amazonaws.util.XpathUtils)
.class public Lcom/amazonaws/util/XpathUtils;
.super Ljava/lang/Object;
.source "XpathUtils.java"


# static fields
.field private static a:Lcom/amazonaws/logging/Log;

.field private static b:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/amazonaws/util/XpathUtils;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->a:Lcom/amazonaws/logging/Log;

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/NodeList;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 265
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Double;
    .registers 2

    .line 105
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static a()Ljavax/xml/xpath/XPath;
    .registers 1

    .line 335
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .registers 2

    .line 60
    new-instance v0, Lcom/amazonaws/util/NamespaceRemovingInputStream;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    sget-object p0, Lcom/amazonaws/util/XpathUtils;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 3

    .line 77
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/URL;)Lorg/w3c/dom/Document;
    .registers 1

    .line 90
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/w3c/dom/Node;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 121
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, ""

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Integer;
    .registers 2

    .line 136
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Boolean;
    .registers 2

    .line 152
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static e(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Float;
    .registers 2

    .line 168
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static f(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Long;
    .registers 2

    .line 184
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static g(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Byte;
    .registers 2

    .line 200
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static h(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/util/Date;
    .registers 2

    .line 217
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_c
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/nio/ByteBuffer;
    .registers 4

    .line 237
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {p0}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    .line 241
    :cond_c
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->a(Lorg/w3c/dom/Node;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 242
    invoke-static {p0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 243
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v1
.end method

.method public static j(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_4
    invoke-static {}, Lcom/amazonaws/util/XpathUtils;->a()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, p1, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method private static k(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    .line 281
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->a(Lorg/w3c/dom/Node;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "."

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 293
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->j(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_17

    return-object v1

    .line 297
    :cond_17
    invoke-static {}, Lcom/amazonaws/util/XpathUtils;->a()Ljavax/xml/xpath/XPath;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
