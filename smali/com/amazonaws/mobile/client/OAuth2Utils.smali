###### Class com.amazonaws.mobile.client.OAuth2Utils (com.amazonaws.mobile.client.OAuth2Utils)
.class Lcom/amazonaws/mobile/client/OAuth2Utils;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/Uri;

.field private c:Landroid/support/customtabs/CustomTabsServiceConnection;

.field private d:Landroid/support/customtabs/CustomTabsClient;

.field private e:Landroid/support/customtabs/CustomTabsSession;

.field private f:Landroid/support/customtabs/CustomTabsCallback;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 3559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3560
    iput-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->a:Landroid/content/Context;

    .line 3561
    iput-object p2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->b:Landroid/net/Uri;

    .line 3562
    new-instance p1, Landroid/support/customtabs/CustomTabsCallback;

    invoke-direct {p1}, Landroid/support/customtabs/CustomTabsCallback;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->f:Landroid/support/customtabs/CustomTabsCallback;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/OAuth2Utils;)Landroid/support/customtabs/CustomTabsClient;
    .registers 1

    .line 3548
    iget-object p0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->d:Landroid/support/customtabs/CustomTabsClient;

    return-object p0
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/OAuth2Utils;Landroid/support/customtabs/CustomTabsClient;)Landroid/support/customtabs/CustomTabsClient;
    .registers 2

    .line 3548
    iput-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->d:Landroid/support/customtabs/CustomTabsClient;

    return-object p1
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/OAuth2Utils;Landroid/support/customtabs/CustomTabsSession;)Landroid/support/customtabs/CustomTabsSession;
    .registers 2

    .line 3548
    iput-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->e:Landroid/support/customtabs/CustomTabsSession;

    return-object p1
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/OAuth2Utils;)Landroid/support/customtabs/CustomTabsCallback;
    .registers 1

    .line 3548
    iget-object p0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->f:Landroid/support/customtabs/CustomTabsCallback;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method a()V
    .registers 4

    .line 3567
    new-instance v0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/OAuth2Utils$1;-><init>(Lcom/amazonaws/mobile/client/OAuth2Utils;)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->c:Landroid/support/customtabs/CustomTabsServiceConnection;

    .line 3580
    iget-object v0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->a:Landroid/content/Context;

    const-string v1, "com.android.chrome"

    iget-object v2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->c:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-static {v0, v1, v2}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method a(Landroid/net/Uri;)V
    .registers 5

    .line 3609
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->e:Landroid/support/customtabs/CustomTabsSession;

    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    .line 3610
    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 3611
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v2, "com.android.chrome"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3612
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3613
    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3614
    iget-object v1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3585
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoauth/util/Pkce;->generateRandom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->g:Ljava/lang/String;

    .line 3586
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3587
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3588
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_16

    :cond_32
    const-string v0, "code"

    .line 3590
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "response_type"

    const-string v1, "code"

    .line 3591
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_41
    const-string v0, "client_id"

    .line 3593
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_59

    if-eqz p2, :cond_51

    const-string p3, "client_id"

    .line 3595
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_59

    .line 3597
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Client id must be specified for an authorization request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    :goto_59
    const-string p2, "state"

    .line 3600
    iget-object p3, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3601
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/OAuth2Utils;->a(Landroid/net/Uri;)V

    return-void
.end method

.method b(Landroid/net/Uri;)Z
    .registers 5

    .line 3619
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    .line 3620
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3621
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3622
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "code"

    .line 3623
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "state"

    .line 3624
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3625
    iget-object v2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    return v1

    :cond_55
    const-string v0, "error"

    .line 3628
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->h:Ljava/lang/String;

    const-string v0, "error_description"

    .line 3629
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->i:Ljava/lang/String;

    .line 3631
    iget-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils;->h:Ljava/lang/String;

    if-eqz p1, :cond_6b

    const/4 p1, 0x1

    return p1

    :cond_6b
    return v1
.end method

###### Class com.amazonaws.mobile.client.OAuth2Utils.AnonymousClass1 (com.amazonaws.mobile.client.OAuth2Utils$1)
.class Lcom/amazonaws/mobile/client/OAuth2Utils$1;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "AWSMobileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/OAuth2Utils;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/OAuth2Utils;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/OAuth2Utils;)V
    .registers 2

    .line 3567
    iput-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .registers 5

    .line 3570
    iget-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    invoke-static {p1, p2}, Lcom/amazonaws/mobile/client/OAuth2Utils;->a(Lcom/amazonaws/mobile/client/OAuth2Utils;Landroid/support/customtabs/CustomTabsClient;)Landroid/support/customtabs/CustomTabsClient;

    .line 3571
    iget-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    invoke-static {p1}, Lcom/amazonaws/mobile/client/OAuth2Utils;->a(Lcom/amazonaws/mobile/client/OAuth2Utils;)Landroid/support/customtabs/CustomTabsClient;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 3572
    iget-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    iget-object p2, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    invoke-static {p2}, Lcom/amazonaws/mobile/client/OAuth2Utils;->a(Lcom/amazonaws/mobile/client/OAuth2Utils;)Landroid/support/customtabs/CustomTabsClient;

    move-result-object p2

    iget-object v0, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    invoke-static {v0}, Lcom/amazonaws/mobile/client/OAuth2Utils;->b(Lcom/amazonaws/mobile/client/OAuth2Utils;)Landroid/support/customtabs/CustomTabsCallback;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazonaws/mobile/client/OAuth2Utils;->a(Lcom/amazonaws/mobile/client/OAuth2Utils;Landroid/support/customtabs/CustomTabsSession;)Landroid/support/customtabs/CustomTabsSession;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 3577
    iget-object p1, p0, Lcom/amazonaws/mobile/client/OAuth2Utils$1;->a:Lcom/amazonaws/mobile/client/OAuth2Utils;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazonaws/mobile/client/OAuth2Utils;->a(Lcom/amazonaws/mobile/client/OAuth2Utils;Landroid/support/customtabs/CustomTabsClient;)Landroid/support/customtabs/CustomTabsClient;

    return-void
.end method
