###### Class com.amazonaws.ClientConfiguration (com.amazonaws.ClientConfiguration)
.class public Lcom/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field public static final a:I = 0x3a98

.field public static final b:I = 0x3a98

.field public static final c:I = 0xa

.field public static final d:Ljava/lang/String;

.field public static final e:Lcom/amazonaws/retry/RetryPolicy;

.field public static final f:Z = true


# instance fields
.field private A:Z

.field private B:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/amazonaws/retry/RetryPolicy;

.field private j:Ljava/net/InetAddress;

.field private k:Lcom/amazonaws/Protocol;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->d:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->c:Lcom/amazonaws/retry/RetryPolicy;

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->e:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->g:Ljava/lang/String;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->h:I

    .line 80
    sget-object v1, Lcom/amazonaws/ClientConfiguration;->e:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->i:Lcom/amazonaws/retry/RetryPolicy;

    .line 91
    sget-object v1, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->k:Lcom/amazonaws/Protocol;

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->l:Ljava/lang/String;

    .line 97
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    .line 103
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->n:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->o:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->p:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    const/16 v0, 0xa

    .line 125
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->s:I

    const/16 v0, 0x3a98

    .line 132
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->t:I

    .line 139
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->u:I

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->v:I

    .line 153
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->w:I

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, p0, Lcom/amazonaws/ClientConfiguration;->x:Z

    .line 175
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->z:Ljavax/net/ssl/TrustManager;

    .line 180
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->A:Z

    .line 185
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->B:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .registers 5

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->g:Ljava/lang/String;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->h:I

    .line 80
    sget-object v1, Lcom/amazonaws/ClientConfiguration;->e:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->i:Lcom/amazonaws/retry/RetryPolicy;

    .line 91
    sget-object v1, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->k:Lcom/amazonaws/Protocol;

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->l:Ljava/lang/String;

    .line 97
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    .line 103
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->n:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->o:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->p:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    const/16 v0, 0xa

    .line 125
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->s:I

    const/16 v0, 0x3a98

    .line 132
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->t:I

    .line 139
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->u:I

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->v:I

    .line 153
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->w:I

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, p0, Lcom/amazonaws/ClientConfiguration;->x:Z

    .line 175
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->z:Ljavax/net/ssl/TrustManager;

    .line 180
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->A:Z

    .line 185
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->B:Z

    .line 198
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->u:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->u:I

    .line 199
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->s:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->s:I

    .line 200
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->h:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->h:I

    .line 201
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->i:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->i:Lcom/amazonaws/retry/RetryPolicy;

    .line 202
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->j:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->j:Ljava/net/InetAddress;

    .line 203
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->k:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->k:Lcom/amazonaws/Protocol;

    .line 204
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->p:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->l:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->o:Ljava/lang/String;

    .line 207
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->m:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    .line 208
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->n:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    .line 210
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->r:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->r:Z

    .line 211
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->t:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->t:I

    .line 212
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->g:Ljava/lang/String;

    .line 213
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->x:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->x:Z

    .line 214
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->w:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->w:I

    .line 215
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->v:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->v:I

    .line 216
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->y:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->z:Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->z:Ljavax/net/ssl/TrustManager;

    .line 218
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->A:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->A:Z

    .line 219
    iget-boolean p1, p1, Lcom/amazonaws/ClientConfiguration;->B:Z

    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->B:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/Protocol;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->k:Lcom/amazonaws/Protocol;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 298
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->s:I

    return-void
.end method

.method public a(II)V
    .registers 3

    .line 866
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->v:I

    .line 867
    iput p2, p0, Lcom/amazonaws/ClientConfiguration;->w:I

    return-void
.end method

.method public a(Lcom/amazonaws/Protocol;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->k:Lcom/amazonaws/Protocol;

    return-void
.end method

.method public a(Lcom/amazonaws/retry/RetryPolicy;)V
    .registers 2

    .line 607
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->i:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->r:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/net/InetAddress;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->j:Ljava/net/InetAddress;

    return-void
.end method

.method public a(Ljavax/net/ssl/TrustManager;)V
    .registers 2

    .line 1054
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->z:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 773
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->x:Z

    return-void
.end method

.method public b()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->s:I

    return v0
.end method

.method public b(I)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(I)V

    return-object p0
.end method

.method public b(II)Lcom/amazonaws/ClientConfiguration;
    .registers 3

    .line 912
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/ClientConfiguration;->a(II)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/Protocol;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Lcom/amazonaws/Protocol;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/retry/RetryPolicy;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 620
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Lcom/amazonaws/retry/RetryPolicy;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 343
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/net/InetAddress;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 374
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/net/InetAddress;)V

    return-object p0
.end method

.method public b(Ljavax/net/ssl/TrustManager;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 1068
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Ljavax/net/ssl/TrustManager;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 785
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Z)V

    return-object p0
.end method

.method public c(Z)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 1032
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->a(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .line 424
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->l:Ljava/lang/String;

    return-void
.end method

.method public d(I)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 436
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->c(I)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 405
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/net/InetAddress;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->j:Ljava/net/InetAddress;

    return-object v0
.end method

.method public d(Z)V
    .registers 2

    .line 1089
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->A:Z

    return-void
.end method

.method public e(Z)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 1103
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->A:Z

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 650
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->h:I

    return-void

    .line 648
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxErrorRetry shoud be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->n:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .registers 2

    .line 415
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    return v0
.end method

.method public f(I)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 664
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->e(I)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 471
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Z)V
    .registers 2

    .line 1121
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->B:Z

    return-void
.end method

.method public g(Z)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 1132
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->f(Z)V

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .registers 2

    .line 693
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->t:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->o:Ljava/lang/String;

    return-void
.end method

.method public h(I)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 709
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->g(I)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 503
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->o:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->p:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .registers 2

    .line 735
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->u:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->p:Ljava/lang/String;

    return-void
.end method

.method public j(I)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 751
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->i(I)V

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/amazonaws/retry/RetryPolicy;
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->i:Lcom/amazonaws/retry/RetryPolicy;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .registers 2

    .line 636
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->h:I

    return v0
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public m()I
    .registers 2

    .line 679
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->t:I

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 967
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->y:Ljava/lang/String;

    return-void
.end method

.method public n()I
    .registers 2

    .line 722
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->u:I

    return v0
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .registers 2

    .line 995
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->m(Ljava/lang/String;)V

    return-object p0
.end method

.method public o()Z
    .registers 2

    .line 761
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->x:Z

    return v0
.end method

.method public p()[I
    .registers 4

    const/4 v0, 0x2

    .line 823
    new-array v0, v0, [I

    iget v1, p0, Lcom/amazonaws/ClientConfiguration;->v:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/amazonaws/ClientConfiguration;->w:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 940
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->y:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .registers 2

    .line 1006
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->r:Z

    return v0
.end method

.method public s()Ljavax/net/ssl/TrustManager;
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->z:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public t()Z
    .registers 2

    .line 1079
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->A:Z

    return v0
.end method

.method public u()Z
    .registers 2

    .line 1111
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->B:Z

    return v0
.end method
