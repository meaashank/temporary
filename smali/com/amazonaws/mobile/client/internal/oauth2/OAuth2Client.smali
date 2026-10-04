###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Client (com.amazonaws.mobile.client.internal.oauth2.OAuth2Client)
.class public Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;
.super Ljava/lang/Object;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "OAuth2Client"

.field public static final b:Ljava/lang/String; = "com.android.chrome"

.field public static final c:Ljava/lang/String; = "com.amazonaws.mobile.client.oauth2"

.field public static final d:Ljava/lang/String; = "tokenUri"

.field public static final e:Ljava/lang/String; = "createDate"

.field public static final f:Ljava/lang/String; = "signOutRedirectUri"

.field public static final g:Ljava/lang/String; = "signInRedirectUri"

.field private static final r:J = 0xea60L


# instance fields
.field final h:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field final i:Landroid/support/customtabs/CustomTabsServiceConnection;

.field final j:Landroid/content/Context;

.field k:Z

.field l:Landroid/support/customtabs/CustomTabsClient;

.field m:Landroid/support/customtabs/CustomTabsSession;

.field n:Landroid/support/customtabs/CustomTabsCallback;

.field o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

.field p:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field q:Ljava/lang/String;

.field private final s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->k:Z

    .line 76
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->h:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 77
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Landroid/content/Context;

    .line 78
    sget-object p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    .line 79
    new-instance p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    invoke-direct {p1, p0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;-><init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 80
    new-instance p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;

    invoke-direct {p1, p0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;-><init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->n:Landroid/support/customtabs/CustomTabsCallback;

    .line 96
    new-instance p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;

    invoke-direct {p1, p0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;-><init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->i:Landroid/support/customtabs/CustomTabsServiceConnection;

    .line 110
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Landroid/content/Context;

    const-string p2, "com.android.chrome"

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->i:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, p2, v0}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 112
    sget-object p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a:Ljava/lang/String;

    const-string p2, "OAuth2Client: Failed to pre-warm custom tab, first page load may be slower"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->y:Z

    return p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Lcom/amazonaws/mobile/client/Callback;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    .line 136
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    .line 137
    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    iput-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    .line 138
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->t:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->u:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->v:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->w:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 5

    .line 222
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->m:Landroid/support/customtabs/CustomTabsSession;

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    .line 223
    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 224
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v2, "com.android.chrome"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->y:Z

    .line 228
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    const-string p2, "redirect_uri"

    .line 124
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 128
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v1, "signOutRedirectUri"

    invoke-virtual {v0, v1, p2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Landroid/net/Uri;)V

    return-void

    .line 126
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The sign-out URI must contain a redirect_uri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;",
            ">;)V"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    .line 342
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Refresh called without refresh token available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :cond_18
    :try_start_18
    const-string v1, "grant_type"

    .line 347
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2b

    const-string v1, "grant_type"

    .line 348
    sget-object v2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v1, "refresh_token"

    .line 350
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    if-eqz v0, :cond_3b

    const-string v1, "refresh_token"

    .line 355
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 352
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The refresh flow must contain a refresh_token"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_43
    :goto_43
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2, p3}, Lcom/amazonaws/mobile/client/internal/oauth2/HTTPUtil;->a(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/HTTPUtil;->a(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;

    move-result-object p1

    .line 359
    iget-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    invoke-virtual {p2, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;)V

    .line 360
    invoke-interface {p4, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5c} :catch_5d

    goto :goto_68

    :catch_5d
    move-exception p1

    .line 362
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Failed to refresh tokens with service"

    invoke-direct {p2, p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p4, p2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_68
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;",
            ">;)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v1, "proofKey"

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 298
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    sget-object v2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->NONE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->equals(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 300
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Proof key could not be found from current session."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :cond_1e
    :try_start_1e
    const-string v1, "client_id"

    .line 305
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9e

    const-string v1, "redirect_uri"

    .line 308
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_96

    const-string v1, "code"

    .line 312
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_46

    if-eqz p4, :cond_3e

    const-string v1, "code"

    .line 316
    invoke-interface {p3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 314
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The token exchange must contain a code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    const-string p4, "code_verifier"

    .line 318
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_5e

    if-eqz v0, :cond_56

    const-string p4, "code_verifier"

    .line 322
    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 320
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The token exchange must contain a code verifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    :goto_5e
    const-string p4, "grant_type"

    .line 324
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_71

    const-string p4, "grant_type"

    .line 325
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->AUTHORIZATION_CODE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$GrantTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_71
    iget-object p4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v0, "tokenUri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance p4, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p2, p3}, Lcom/amazonaws/mobile/client/internal/oauth2/HTTPUtil;->a(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/HTTPUtil;->a(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;

    move-result-object p1

    .line 331
    iget-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    invoke-virtual {p2, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;)V

    .line 332
    invoke-interface {p5, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    goto :goto_b1

    .line 309
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The token exchange must contain a redirect_uri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_9e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The token exchange must contain a client_id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_a6} :catch_a6

    :catch_a6
    move-exception p1

    .line 334
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Failed to exchange code for tokens"

    invoke-direct {p2, p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p5, p2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_b1
    return-void
.end method

.method public a(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;",
            ">;)V"
        }
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a()Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;

    move-result-object v0

    .line 371
    iget-object v1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->f:Ljava/lang/Long;

    if-eqz v1, :cond_4f

    .line 372
    iget-object v1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_4f

    .line 375
    iget-object v1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->d:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v2, "tokenUri"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 376
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobile/client/Callback;)V

    goto :goto_4f

    .line 378
    :cond_45
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No cached tokens available, refresh not available."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 382
    :cond_4f
    :goto_4f
    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    .line 384
    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_57
    return-void
.end method

.method public a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 118
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->k:Z

    .line 119
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Z)V

    return-void
.end method

.method public b(Landroid/net/Uri;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    .line 171
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 173
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$3;->a:[I

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c0

    .line 187
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_b5

    .line 175
    :pswitch_17
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoauth/util/Pkce;->generateRandom()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/util/Pkce;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v3, "proofKey"

    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v2, "proofKeyHash"

    invoke-virtual {v0, v2, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code_challenge_method"

    .line 179
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    .line 180
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "code_challenge"

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 191
    :pswitch_42
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "client_id"

    .line 192
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->t:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->t:Ljava/lang/String;

    if-eqz v1, :cond_ad

    const-string v1, "redirect_uri"

    .line 196
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 200
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v3, "signInRedirectUri"

    invoke-virtual {v2, v3, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v1, "response_type"

    .line 202
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_77

    const-string v1, "response_type"

    const-string v2, "code"

    .line 204
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    :cond_77
    const-string v1, "state"

    .line 207
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    if-nez v0, :cond_94

    .line 209
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoauth/util/Pkce;->generateRandom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    const-string v0, "state"

    .line 210
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 214
    :cond_94
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v1, "state"

    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Landroid/net/Uri;)V

    goto :goto_bf

    .line 198
    :cond_a5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The authorize URI must contain a redirect_uri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The authorize URI must contain a client_id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_b5
    const-string v0, "Unsupported PKCE mode was chosen, please choose another"

    .line 187
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bb} :catch_bb

    :catch_bb
    move-exception p1

    .line 217
    invoke-interface {p2, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_bf
    return-void

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_42
    .end packed-switch
.end method

.method public b(Landroid/net/Uri;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v2, "signInRedirectUri"

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v3, "signOutRedirectUri"

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_be

    .line 238
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 239
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 240
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 241
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 242
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_be

    const-string v1, "code"

    .line 243
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    .line 244
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    iget-object v5, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->s:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    const-string v6, "state"

    invoke-virtual {v5, v6}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    return v0

    :cond_6f
    const-string v2, "error"

    .line 248
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->u:Ljava/lang/String;

    const-string v2, "error_description"

    .line 249
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->v:Ljava/lang/String;

    const-string v2, "error_uri"

    .line 250
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->w:Ljava/lang/String;

    .line 251
    iput-boolean v4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->y:Z

    .line 253
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->u:Ljava/lang/String;

    if-eqz v2, :cond_a6

    .line 254
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    if-eqz p1, :cond_a5

    .line 255
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;

    const-string v1, "Authorization call failed with response from authorization server"

    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->w:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 258
    iput-object v3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    :cond_a5
    return v4

    :cond_a6
    if-eqz v1, :cond_bd

    .line 262
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    if-eqz v0, :cond_bc

    .line 263
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;

    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;-><init>()V

    .line 264
    iput-object v1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->b:Ljava/lang/String;

    .line 265
    iput-object p1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->a:Landroid/net/Uri;

    .line 266
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 267
    iput-object v3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    :cond_bc
    return v4

    :cond_bd
    return v0

    :cond_be
    if-eqz v2, :cond_10a

    .line 275
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 277
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 278
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_10a

    .line 280
    iput-boolean v4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->y:Z

    .line 281
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    if-eqz p1, :cond_109

    .line 282
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {p1, v3}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    .line 283
    iput-object v3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->x:Lcom/amazonaws/mobile/client/Callback;

    :cond_109
    return v4

    :cond_10a
    return v0
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.AnonymousClass1 (com.amazonaws.mobile.client.internal.oauth2.OAuth2Client$1)
.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;
.super Landroid/support/customtabs/CustomTabsCallback;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 5

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    const/4 p2, 0x6

    if-ne p1, p2, :cond_45

    .line 85
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 86
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2d

    .line 87
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Lcom/amazonaws/mobile/client/Callback;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "User cancelled flow or flow interrupted."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 88
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-static {p1, p2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    goto :goto_45

    .line 89
    :cond_2d
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    if-eqz p1, :cond_45

    .line 90
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "User cancelled flow or flow interrupted."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 91
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iput-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Lcom/amazonaws/mobile/client/Callback;

    :cond_45
    :goto_45
    return-void
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.AnonymousClass2 (com.amazonaws.mobile.client.internal.oauth2.OAuth2Client$2)
.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .registers 5

    .line 100
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iput-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Landroid/support/customtabs/CustomTabsClient;

    .line 101
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Landroid/support/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 102
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object p2, p2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Landroid/support/customtabs/CustomTabsClient;

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    iget-object v0, v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->n:Landroid/support/customtabs/CustomTabsCallback;

    invoke-virtual {p2, v0}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object p2

    iput-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->m:Landroid/support/customtabs/CustomTabsSession;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 107
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->a:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Landroid/support/customtabs/CustomTabsClient;

    return-void
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.AnonymousClass3 (com.amazonaws.mobile.client.internal.oauth2.OAuth2Client$3)
.class synthetic Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$3;
.super Ljava/lang/Object;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 173
    invoke-static {}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->values()[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$3;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$3;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$3;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->NONE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.PKCEMode (com.amazonaws.mobile.client.internal.oauth2.OAuth2Client$PKCEMode)
.class public final enum Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;
.super Ljava/lang/Enum;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PKCEMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

.field public static final enum NONE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

.field public static final enum S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;


# instance fields
.field private encode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 146
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    const-string v1, "NONE"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->NONE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    .line 147
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    const-string v1, "S256"

    const-string v2, "S256"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    const/4 v0, 0x2

    .line 145
    new-array v0, v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->NONE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->encode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;
    .registers 2

    .line 145
    const-class v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;
    .registers 1

    .line 145
    sget-object v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->$VALUES:[Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;)Z
    .registers 3

    .line 160
    iget-object p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->encode:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->encode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->encode:Ljava/lang/String;

    return-object v0
.end method
