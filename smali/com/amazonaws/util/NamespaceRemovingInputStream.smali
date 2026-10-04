###### Class com.amazonaws.util.NamespaceRemovingInputStream (com.amazonaws.util.NamespaceRemovingInputStream)
.class Lcom/amazonaws/util/NamespaceRemovingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "NamespaceRemovingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
    }
.end annotation


# static fields
.field private static final a:I = 0xc8


# instance fields
.field private final b:[B

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 48
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0xc8

    .line 33
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:[B

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->c:Z

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 5

    .line 121
    new-instance v0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;-><init>(Ljava/lang/String;)V

    const-string v1, "xmlns"

    .line 122
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_f

    return v2

    :cond_f
    const-string v1, " "

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->b(Ljava/lang/String;)Z

    const-string v1, "="

    .line 126
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    const-string v1, " "

    .line 128
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->b(Ljava/lang/String;)Z

    const-string v1, "\""

    .line 130
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    const-string v1, "\""

    .line 132
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    .line 135
    :cond_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public read()I
    .registers 8

    .line 57
    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->f()V

    .line 58
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_55

    .line 59
    iget-boolean v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->c:Z

    if-nez v1, :cond_55

    .line 60
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 61
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 62
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:[B

    iget-object v4, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:[B

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 65
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:[B

    add-int/2addr v1, v5

    sget-object v6, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    invoke-direct {p0, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_55

    :goto_41
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_4d

    .line 70
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 72
    :cond_4d
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 73
    iput-boolean v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->c:Z

    :cond_55
    return v0
.end method

.method public read([B)I
    .registers 4

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_16

    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    if-nez v0, :cond_d

    return v2

    :cond_d
    return v0

    :cond_e
    add-int v2, v0, p2

    int-to-byte v1, v1

    .line 94
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return p3
.end method

###### Class com.amazonaws.util.NamespaceRemovingInputStream.StringPrefixSlicer (com.amazonaws.util.NamespaceRemovingInputStream$StringPrefixSlicer)
.class final Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
.super Ljava/lang/Object;
.source "NamespaceRemovingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/NamespaceRemovingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringPrefixSlicer"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 168
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    goto :goto_a

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 177
    :cond_a
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
