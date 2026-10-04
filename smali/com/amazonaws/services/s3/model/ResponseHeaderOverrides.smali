###### Class com.amazonaws.services.s3.model.ResponseHeaderOverrides (com.amazonaws.services.s3.model.ResponseHeaderOverrides)
.class public Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ResponseHeaderOverrides.java"


# static fields
.field public static final a:Ljava/lang/String; = "response-content-type"

.field public static final b:Ljava/lang/String; = "response-content-language"

.field public static final c:Ljava/lang/String; = "response-expires"

.field public static final d:Ljava/lang/String; = "response-cache-control"

.field public static final e:Ljava/lang/String; = "response-content-disposition"

.field public static final f:Ljava/lang/String; = "response-content-encoding"

.field private static final m:[Ljava/lang/String;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "response-cache-control"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "response-content-disposition"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "response-content-encoding"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "response-content-language"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "response-content-type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "response-expires"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->h:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->j:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 199
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->l:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .registers 2

    .line 263
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->l:Ljava/lang/String;

    return-object v0
.end method
