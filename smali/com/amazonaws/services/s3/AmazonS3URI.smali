###### Class com.amazonaws.services.s3.AmazonS3URI (com.amazonaws.services.s3.AmazonS3URI)
.class public Lcom/amazonaws/services/s3/AmazonS3URI;
.super Ljava/lang/Object;
.source "AmazonS3URI.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/net/URI;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^(.+\\.)?s3[.-]([a-z0-9-]+)\\."

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->a:Ljava/util/regex/Pattern;

    const-string v0, "[&;]"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 62
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/net/URI;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 3

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/net/URI;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Z)V
    .registers 9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_150

    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->c:Ljava/net/URI;

    const-string v0, "s3"

    .line 81
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_55

    .line 82
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    .line 85
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    .line 87
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    if-eqz p2, :cond_3e

    .line 92
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v3, :cond_33

    .line 95
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    goto :goto_3d

    .line 99
    :cond_33
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    :goto_3d
    return-void

    .line 88
    :cond_3e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid S3 URI: no bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 104
    :cond_55
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 110
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3URI;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_122

    .line 117
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a8

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_74

    goto :goto_a8

    .line 157
    :cond_74
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v4, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a5

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a5

    const-string p2, "/"

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9a

    goto :goto_a5

    .line 167
    :cond_9a
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    goto :goto_101

    .line 164
    :cond_a5
    :goto_a5
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    goto :goto_101

    .line 121
    :cond_a8
    :goto_a8
    iput-boolean v3, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    if-eqz p2, :cond_b1

    .line 125
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_b5

    :cond_b1
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p2

    :goto_b5
    const-string v1, "/"

    .line 127
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 128
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    goto :goto_101

    :cond_c2
    const/16 v1, 0x2f

    .line 132
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_d8

    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    goto :goto_101

    .line 139
    :cond_d8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_ec

    .line 142
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    goto :goto_101

    .line 148
    :cond_ec
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/services/s3/AmazonS3URI;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    add-int/2addr v1, v3

    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/AmazonS3URI;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    .line 171
    :goto_101
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    const-string p1, "amazonaws"

    const/4 p2, 0x2

    .line 173
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 175
    iput-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    goto :goto_121

    .line 177
    :cond_11b
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    :goto_121
    return-void

    .line 112
    :cond_122
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid S3 URI: hostname does not appear to be a valid S3 endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 106
    :cond_139
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid S3 URI: no hostname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 76
    :cond_150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_76

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_5a

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3e

    const/16 v1, 0x66

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 378
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' in escape sequence."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_24

    .line 190
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 191
    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    const-string v3, "versionId="

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/16 p0, 0xa

    .line 193
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/services/s3/AmazonS3URI;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x3

    .line 308
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_30

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_26

    .line 310
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_2d

    .line 313
    :cond_26
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 317
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_28

    :try_start_2
    const-string p1, "UTF-8"

    .line 261
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%3A"

    const-string v0, ":"

    .line 262
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%2F"

    const-string v0, "/"

    .line 263
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "+"

    const-string v0, " "

    .line 264
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 268
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_28
    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 4

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-gt p2, v0, :cond_24

    add-int/lit8 v0, p2, 0x1

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 340
    invoke-static {v0}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(C)I

    move-result p2

    shl-int/lit8 p2, p2, 0x4

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(C)I

    move-result p1

    or-int/2addr p1, p2

    int-to-char p1, p1

    .line 341
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 333
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid percent-encoded string:\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 286
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_18

    .line 288
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-object p0
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->c:Ljava/net/URI;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_76

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_76

    .line 388
    :cond_12
    check-cast p1, Lcom/amazonaws/services/s3/AmazonS3URI;

    .line 390
    iget-boolean v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    iget-boolean v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    if-eq v2, v3, :cond_1b

    return v1

    .line 391
    :cond_1b
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->c:Ljava/net/URI;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->c:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 392
    :cond_26
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_39

    :cond_35
    iget-object v2, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    if-eqz v2, :cond_3a

    :goto_39
    return v1

    .line 393
    :cond_3a
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_4d

    :cond_49
    iget-object v2, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    if-eqz v2, :cond_4e

    :goto_4d
    return v1

    .line 394
    :cond_4e
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_61

    :cond_5d
    iget-object v2, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    if-eqz v2, :cond_62

    :goto_61
    return v1

    .line 395
    :cond_62
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    if-eqz v2, :cond_6f

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_75

    :cond_6f
    iget-object p1, p1, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    if-nez p1, :cond_74

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    return v0

    :cond_76
    :goto_76
    return v1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->c:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 401
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 402
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 403
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 404
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 405
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_45
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->c:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
