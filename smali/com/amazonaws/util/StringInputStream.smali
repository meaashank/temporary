###### Class com.amazonaws.util.StringInputStream (com.amazonaws.util.StringInputStream)
.class public Lcom/amazonaws/util/StringInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "StringInputStream.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 37
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    iput-object p1, p0, Lcom/amazonaws/util/StringInputStream;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/amazonaws/util/StringInputStream;->a:Ljava/lang/String;

    return-object v0
.end method
