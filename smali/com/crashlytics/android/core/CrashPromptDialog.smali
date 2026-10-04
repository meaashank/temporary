###### Class com.crashlytics.android.core.CrashPromptDialog (com.crashlytics.android.core.CrashPromptDialog)
.class Lcom/crashlytics/android/core/CrashPromptDialog;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;,
        Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog$Builder;

.field private final latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    .line 133
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->dialog:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public static create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/p;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
    .registers 8

    .line 50
    new-instance v0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V

    .line 51
    new-instance v1, Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/DialogStringResolver;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/p;)V

    .line 52
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/crashlytics/android/core/CrashPromptDialog;->createDialogView(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;

    move-result-object p0

    .line 56
    new-instance v3, Lcom/crashlytics/android/core/CrashPromptDialog$1;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$1;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 67
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getSendButtonTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    iget-boolean p0, p1, Lio/fabric/sdk/android/services/settings/p;->d:Z

    if-eqz p0, :cond_45

    .line 73
    new-instance p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$2;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 81
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getCancelButtonTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_45
    iget-boolean p0, p1, Lio/fabric/sdk/android/services/settings/p;->f:Z

    if-eqz p0, :cond_55

    .line 86
    new-instance p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;

    invoke-direct {p0, p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$3;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 95
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getAlwaysSendButtonTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    :cond_55
    new-instance p0, Lcom/crashlytics/android/core/CrashPromptDialog;

    invoke-direct {p0, v2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog;-><init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    return-object p0
.end method

.method private static createDialogView(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;
    .registers 7

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x5

    .line 107
    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v1

    .line 109
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xf

    .line 110
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 111
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x1030044

    .line 112
    invoke-virtual {v2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 115
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 117
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xe

    .line 118
    invoke-static {v0, p0}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v1

    const/16 v3, 0xa

    .line 119
    invoke-static {v0, v3}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v0

    .line 118
    invoke-virtual {p1, p0, v1, v3, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 120
    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private static dipsToPixels(FI)I
    .registers 2

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public await()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->await()V

    return-void
.end method

.method public getOptIn()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->getOptIn()Z

    move-result v0

    return v0
.end method

.method public show()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AnonymousClass1 (com.crashlytics.android.core.CrashPromptDialog$1)
.class final Lcom/crashlytics/android/core/CrashPromptDialog$1;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/p;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$1;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 60
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$1;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AnonymousClass2 (com.crashlytics.android.core.CrashPromptDialog$2)
.class final Lcom/crashlytics/android/core/CrashPromptDialog$2;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/p;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 77
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AnonymousClass3 (com.crashlytics.android.core.CrashPromptDialog$3)
.class final Lcom/crashlytics/android/core/CrashPromptDialog$3;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/p;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 90
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;->sendUserReportsWithoutPrompting(Z)V

    .line 91
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AlwaysSendCallback (com.crashlytics.android.core.CrashPromptDialog$AlwaysSendCallback)
.class interface abstract Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AlwaysSendCallback"
.end annotation


# virtual methods
.method public abstract sendUserReportsWithoutPrompting(Z)V
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.OptInLatch (com.crashlytics.android.core.CrashPromptDialog$OptInLatch)
.class Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptInLatch"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private send:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>()V

    return-void
.end method


# virtual methods
.method await()V
    .registers 2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method getOptIn()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    return v0
.end method

.method setOptIn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 30
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
