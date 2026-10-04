###### Class com.gaia.ngallery.ui.StandaloneVersionAdActivity (com.gaia.ngallery.ui.StandaloneVersionAdActivity)
.class public Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StandaloneVersionAdActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    .line 26
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/prism/commons/f/p;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->b()V

    return-void
.end method

.method private b()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->finish()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->a()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->a()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->a()V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->a()V

    return-void
.end method

.method public static synthetic lambda$Dh99Xc16IWP-lszqD3RWzhDV2Z4(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$GI_PjFr_9FV9nNlvekH2To9t4Es(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$i9--JIC70mad4RKSjyTOpgJ55Y4(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$vb2D4ucEcLH7h_-newZX7R7NdbE(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$wLkuJmMqyzMfqNrivR5eS1N4FXw(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->e(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget p1, Lcom/gaia/ngallery/i$k;->activity_standalone_version_ad:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->setContentView(I)V

    .line 17
    sget p1, Lcom/gaia/ngallery/i$h;->bt_get_pro:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw;-><init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget p1, Lcom/gaia/ngallery/i$h;->iv_pro_icon:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_-newZX7R7NdbE;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_-newZX7R7NdbE;-><init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget p1, Lcom/gaia/ngallery/i$h;->iv_pro_impression:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWP-lszqD3RWzhDV2Z4;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWP-lszqD3RWzhDV2Z4;-><init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    sget p1, Lcom/gaia/ngallery/i$h;->ll_pro_title:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es;-><init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget p1, Lcom/gaia/ngallery/i$h;->ll_skip:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$i9--JIC70mad4RKSjyTOpgJ55Y4;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$i9--JIC70mad4RKSjyTOpgJ55Y4;-><init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWPlszqD3RWzhDV2Z4 (com.gaia.ngallery.ui.-$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWP-lszqD3RWzhDV2Z4)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWP-lszqD3RWzhDV2Z4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWP-lszqD3RWzhDV2Z4;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$Dh99Xc16IWP-lszqD3RWzhDV2Z4;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->lambda$Dh99Xc16IWP-lszqD3RWzhDV2Z4(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es (com.gaia.ngallery.ui.-$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$GI_PjFr_9FV9nNlvekH2To9t4Es;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->lambda$GI_PjFr_9FV9nNlvekH2To9t4Es(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$StandaloneVersionAdActivity$i9JIC70mad4RKSjyTOpgJ55Y4 (com.gaia.ngallery.ui.-$$Lambda$StandaloneVersionAdActivity$i9--JIC70mad4RKSjyTOpgJ55Y4)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$i9--JIC70mad4RKSjyTOpgJ55Y4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$i9--JIC70mad4RKSjyTOpgJ55Y4;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$i9--JIC70mad4RKSjyTOpgJ55Y4;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->lambda$i9--JIC70mad4RKSjyTOpgJ55Y4(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_newZX7R7NdbE (com.gaia.ngallery.ui.-$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_-newZX7R7NdbE)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_-newZX7R7NdbE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_-newZX7R7NdbE;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$vb2D4ucEcLH7h_-newZX7R7NdbE;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->lambda$vb2D4ucEcLH7h_-newZX7R7NdbE(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw (com.gaia.ngallery.ui.-$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$StandaloneVersionAdActivity$wLkuJmMqyzMfqNrivR5eS1N4FXw;->f$0:Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;->lambda$wLkuJmMqyzMfqNrivR5eS1N4FXw(Lcom/gaia/ngallery/ui/StandaloneVersionAdActivity;Landroid/view/View;)V

    return-void
.end method
