###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Tokens (com.amazonaws.mobile.client.internal.oauth2.OAuth2Tokens)
.class public Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;
.super Ljava/lang/Object;
.source "OAuth2Tokens.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Long;

.field g:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 8

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->b:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->c:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->d:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->a:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->f:Ljava/lang/Long;

    .line 19
    iput-object p6, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->g:Ljava/lang/Long;

    .line 20
    iput-object p7, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->g:Ljava/lang/Long;

    return-object v0
.end method
