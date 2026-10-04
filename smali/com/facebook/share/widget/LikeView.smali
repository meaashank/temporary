###### Class com.facebook.share.widget.LikeView (com.facebook.share.widget.LikeView)
.class public Lcom/facebook/share/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;,
        Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;,
        Lcom/facebook/share/widget/LikeView$OnErrorListener;,
        Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;,
        Lcom/facebook/share/widget/LikeView$HorizontalAlignment;,
        Lcom/facebook/share/widget/LikeView$Style;,
        Lcom/facebook/share/widget/LikeView$ObjectType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NO_FOREGROUND_COLOR:I = -0x1


# instance fields
.field private auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private containerView:Landroid/widget/LinearLayout;

.field private creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

.field private edgePadding:I

.field private explicitlyDisabled:Z

.field private foregroundColor:I

.field private horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field private internalPadding:I

.field private likeActionController:Lcom/facebook/share/internal/LikeActionController;

.field private likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

.field private likeButton:Lcom/facebook/share/internal/LikeButton;

.field private likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;

.field private socialSentenceView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 293
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 294
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 295
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const/4 v0, -0x1

    .line 296
    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 312
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 294
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 295
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const/4 v0, -0x1

    .line 296
    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 322
    invoke-direct {p0, p2}, Lcom/facebook/share/widget/LikeView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/widget/LikeView;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;)Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/share/widget/LikeView;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->toggleLike()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/share/widget/LikeView;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object p0
.end method

.method private associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 4

    .line 636
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 638
    new-instance p1, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 640
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 643
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 644
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 645
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    .line 646
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .registers 4

    .line 586
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 587
    :goto_4
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_13

    .line 588
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    :cond_13
    if-eqz v1, :cond_18

    .line 592
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 594
    :cond_18
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .registers 5

    .line 598
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "style"

    .line 599
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$Style;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auxiliary_position"

    .line 600
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 602
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "horizontal_alignment"

    .line 603
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 605
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "object_id"

    .line 606
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    const-string v3, ""

    .line 608
    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "object_type"

    .line 609
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 611
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 4

    .line 501
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    .line 502
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    .line 503
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 504
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$color;->com_facebook_likeview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    :cond_29
    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/LikeView;->setBackgroundColor(I)V

    .line 509
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 510
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V

    .line 516
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeSocialSentenceView(Landroid/content/Context;)V

    .line 517
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeLikeCountView(Landroid/content/Context;)V

    .line 519
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/LikeView;->addView(Landroid/view/View;)V

    .line 525
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 526
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method private initializeLikeButton(Landroid/content/Context;)V
    .registers 4

    .line 530
    new-instance v0, Lcom/facebook/share/internal/LikeButton;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 532
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-direct {v0, p1, v1}, Lcom/facebook/share/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    .line 533
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    new-instance v0, Lcom/facebook/share/widget/LikeView$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/LikeView$1;-><init>(Lcom/facebook/share/widget/LikeView;)V

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 544
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initializeLikeCountView(Landroid/content/Context;)V
    .registers 3

    .line 563
    new-instance v0, Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    .line 565
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 568
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initializeSocialSentenceView(Landroid/content/Context;)V
    .registers 4

    .line 548
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 549
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 551
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    .line 549
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 552
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 553
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 559
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .registers 4

    if-eqz p1, :cond_9d

    .line 454
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_9d

    .line 458
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    .line 464
    :cond_17
    sget v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_object_id:I

    .line 465
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 464
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 466
    sget v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_object_type:I

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 468
    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v1

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 466
    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 469
    sget v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_style:I

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    .line 471
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$Style;->access$000(Lcom/facebook/share/widget/LikeView$Style;)I

    move-result v1

    .line 470
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 469
    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$Style;->fromInt(I)Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 472
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    if-eqz v0, :cond_95

    .line 476
    sget v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_auxiliary_view_position:I

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 478
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->access$100(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)I

    move-result v1

    .line 477
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 476
    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->fromInt(I)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 479
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eqz v0, :cond_8d

    .line 484
    sget v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_horizontal_alignment:I

    sget-object v1, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 486
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->access$200(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)I

    move-result v1

    .line 485
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 484
    invoke-static {v0}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->fromInt(I)Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 487
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-eqz v0, :cond_85

    .line 492
    sget v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_foreground_color:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 488
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported value for LikeView \'style\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9d
    :goto_9d
    return-void
.end method

.method private setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 5

    .line 617
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->tearDownObjectAssociations()V

    .line 619
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 620
    iput-object p2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 622
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 626
    :cond_e
    new-instance v0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 627
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 628
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    :cond_21
    return-void
.end method

.method private tearDownObjectAssociations()V
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 654
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 655
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 663
    :cond_14
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    if-eqz v0, :cond_1f

    .line 664
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->cancel()V

    .line 666
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 669
    :cond_1f
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    return-void
.end method

.method private toggleLike()V
    .registers 5

    .line 572
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 574
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-nez v1, :cond_d

    .line 575
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 578
    :cond_d
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 581
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v3

    .line 578
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/share/internal/LikeActionController;->toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    :cond_18
    return-void
.end method

.method private updateBoxCountCaretPosition()V
    .registers 4

    .line 766
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    goto :goto_2e

    .line 776
    :pswitch_e
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_1b

    :cond_19
    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_2e

    .line 772
    :pswitch_1f
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_2e

    .line 768
    :pswitch_27
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1f
        :pswitch_e
    .end packed-switch
.end method

.method private updateLayout()V
    .registers 7

    .line 695
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 696
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    .line 697
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 698
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v3, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_19

    const/4 v2, 0x3

    goto :goto_22

    :cond_19
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v3, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v2, v3, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x5

    :goto_22
    or-int/lit8 v3, v2, 0x30

    .line 703
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 704
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 707
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 713
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 714
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    goto :goto_68

    .line 715
    :cond_4d
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    if-ne v0, v1, :cond_f1

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 717
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 718
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateBoxCountCaretPosition()V

    .line 719
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    :goto_68
    const/4 v1, 0x0

    .line 724
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 729
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 731
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v5, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-ne v3, v5, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x1

    :goto_7e
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 736
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v2, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eq v1, v2, :cond_9f

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v2, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-ne v1, v2, :cond_94

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v1, v2, :cond_94

    goto :goto_9f

    .line 744
    :cond_94
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 745
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_ad

    .line 740
    :cond_9f
    :goto_9f
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 741
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    :goto_ad
    sget-object v1, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_f2

    goto :goto_f0

    .line 756
    :pswitch_bb
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v1, v2, :cond_cd

    .line 757
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_f0

    .line 759
    :cond_cd
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_f0

    .line 753
    :pswitch_d9
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_f0

    .line 750
    :pswitch_e5
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_f0
    return-void

    :cond_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_d9
        :pswitch_bb
    .end packed-switch
.end method

.method private updateLikeStateAndLayout()V
    .registers 4

    .line 673
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 675
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-nez v1, :cond_1a

    .line 676
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 677
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    goto :goto_42

    .line 680
    :cond_1a
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 681
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->shouldEnableView()Z

    move-result v1

    and-int/2addr v0, v1

    .line 687
    :goto_42
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 688
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setEnabled(Z)V

    .line 690
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    return-void
.end method


# virtual methods
.method public getOnErrorListener()Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 448
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 450
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    goto :goto_5

    .line 362
    :cond_3
    sget-object p1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 364
    :goto_5
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eq v0, p1, :cond_e

    .line 365
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 367
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    :cond_e
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 440
    iput-boolean p1, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 442
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method public setForegroundColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    if-eq v0, p1, :cond_9

    .line 393
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    goto :goto_5

    .line 377
    :cond_3
    sget-object p1, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 379
    :goto_5
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-eq v0, p1, :cond_e

    .line 380
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 382
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    :cond_e
    return-void
.end method

.method public setLikeViewStyle(Lcom/facebook/share/widget/LikeView$Style;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    goto :goto_5

    .line 348
    :cond_3
    sget-object p1, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    .line 349
    :goto_5
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    if-eq v0, p1, :cond_e

    .line 350
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 352
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    :cond_e
    return-void
.end method

.method public setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 332
    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_8

    goto :goto_a

    .line 333
    :cond_8
    sget-object p2, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 335
    :goto_a
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eq p2, v0, :cond_1c

    .line 336
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 338
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    :cond_1c
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/share/widget/LikeView$OnErrorListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-void
.end method

###### Class com.facebook.share.widget.LikeView.AnonymousClass1 (com.facebook.share.widget.LikeView$1)
.class Lcom/facebook/share/widget/LikeView$1;
.super Ljava/lang/Object;
.source "LikeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/LikeView;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView$1;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 536
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$1;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$300(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method

###### Class com.facebook.share.widget.LikeView.AnonymousClass2 (com.facebook.share.widget.LikeView$2)
.class synthetic Lcom/facebook/share/widget/LikeView$2;
.super Ljava/lang/Object;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 748
    invoke-static {}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->values()[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    :try_start_9
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

###### Class com.facebook.share.widget.LikeView.AuxiliaryViewPosition (com.facebook.share.widget.LikeView$AuxiliaryViewPosition)
.class public final enum Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuxiliaryViewPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field static DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 235
    new-instance v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "BOTTOM"

    const-string v2, "bottom"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 243
    new-instance v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "INLINE"

    const-string v2, "inline"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 249
    new-instance v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "TOP"

    const-string v2, "top"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const/4 v0, 0x3

    .line 227
    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->$VALUES:[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 251
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->stringValue:Ljava/lang/String;

    .line 267
    iput p4, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->intValue:I

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)I
    .registers 1

    .line 228
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->getValue()I

    move-result p0

    return p0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .registers 6

    .line 254
    invoke-static {}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->values()[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 255
    invoke-direct {v3}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValue()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .registers 2

    .line 227
    const-class v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .registers 1

    .line 227
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->$VALUES:[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->stringValue:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.share.widget.LikeView.HorizontalAlignment (com.facebook.share.widget.LikeView$HorizontalAlignment)
.class public final enum Lcom/facebook/share/widget/LikeView$HorizontalAlignment;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$HorizontalAlignment;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field public static final enum CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field static DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field public static final enum LEFT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field public static final enum RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 179
    new-instance v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    const-string v1, "CENTER"

    const-string v2, "center"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 185
    new-instance v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    const-string v1, "LEFT"

    const-string v2, "left"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 192
    new-instance v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    const-string v1, "RIGHT"

    const-string v2, "right"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    const/4 v0, 0x3

    .line 171
    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v1, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->$VALUES:[Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 194
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sput-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->stringValue:Ljava/lang/String;

    .line 210
    iput p4, p0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->intValue:I

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)I
    .registers 1

    .line 172
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->getValue()I

    move-result p0

    return p0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/LikeView$HorizontalAlignment;
    .registers 6

    .line 197
    invoke-static {}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->values()[Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 198
    invoke-direct {v3}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValue()I
    .registers 2

    .line 219
    iget v0, p0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$HorizontalAlignment;
    .registers 2

    .line 171
    const-class v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$HorizontalAlignment;
    .registers 1

    .line 171
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->$VALUES:[Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->stringValue:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.share.widget.LikeView.LikeActionControllerCreationCallback (com.facebook.share.widget.LikeView$LikeActionControllerCreationCallback)
.class Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;
.super Ljava/lang/Object;
.source "LikeView.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$CreationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeActionControllerCreationCallback"
.end annotation


# instance fields
.field private isCancelled:Z

.field final synthetic this$0:Lcom/facebook/share/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .registers 2

    .line 830
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V
    .registers 3

    .line 830
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 835
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->isCancelled:Z

    return-void
.end method

.method public onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 4

    .line 842
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->isCancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_1e

    .line 847
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController;->shouldEnableView()Z

    move-result v0

    if-nez v0, :cond_14

    .line 848
    new-instance p2, Lcom/facebook/FacebookException;

    const-string v0, "Cannot use LikeView. The device may not be supported."

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 854
    :cond_14
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/LikeView;->access$1100(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/LikeActionController;)V

    .line 855
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$700(Lcom/facebook/share/widget/LikeView;)V

    :cond_1e
    if-eqz p2, :cond_31

    .line 859
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 860
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/share/widget/LikeView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 864
    :cond_31
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/facebook/share/widget/LikeView;->access$1202(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;)Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    return-void
.end method

###### Class com.facebook.share.widget.LikeView.LikeControllerBroadcastReceiver (com.facebook.share.widget.LikeView$LikeControllerBroadcastReceiver)
.class Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeControllerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .registers 2

    .line 796
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V
    .registers 3

    .line 796
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 799
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_25

    const-string v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    .line 804
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    .line 807
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView;->access$600(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :cond_25
    :goto_25
    if-nez v0, :cond_28

    return-void

    :cond_28
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 815
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$700(Lcom/facebook/share/widget/LikeView;)V

    goto :goto_72

    :cond_36
    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 818
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 819
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;

    move-result-object p1

    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/share/widget/LikeView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_72

    :cond_54
    const-string p2, "com.facebook.sdk.LikeActionController.DID_RESET"

    .line 821
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 824
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    iget-object p2, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p2}, Lcom/facebook/share/widget/LikeView;->access$600(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->access$900(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/share/widget/LikeView;->access$1000(Lcom/facebook/share/widget/LikeView;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 825
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$700(Lcom/facebook/share/widget/LikeView;)V

    :cond_72
    :goto_72
    return-void
.end method

###### Class com.facebook.share.widget.LikeView.ObjectType (com.facebook.share.widget.LikeView$ObjectType)
.class public final enum Lcom/facebook/share/widget/LikeView$ObjectType;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$ObjectType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 71
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 76
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "OPEN_GRAPH"

    const-string v2, "open_graph"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 81
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "PAGE"

    const-string v2, "page"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$ObjectType;

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->$VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 83
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->stringValue:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 6

    .line 86
    invoke-static {}, Lcom/facebook/share/widget/LikeView$ObjectType;->values()[Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 2

    .line 66
    const-class v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 1

    .line 66
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->$VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$ObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->intValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->stringValue:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.share.widget.LikeView.OnErrorListener (com.facebook.share.widget.LikeView$OnErrorListener)
.class public interface abstract Lcom/facebook/share/widget/LikeView$OnErrorListener;
.super Ljava/lang/Object;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/facebook/FacebookException;)V
.end method

###### Class com.facebook.share.widget.LikeView.Style (com.facebook.share.widget.LikeView$Style)
.class public final enum Lcom/facebook/share/widget/LikeView$Style;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$Style;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum BUTTON:Lcom/facebook/share/widget/LikeView$Style;

.field static DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum STANDARD:Lcom/facebook/share/widget/LikeView$Style;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 124
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string v1, "STANDARD"

    const-string v2, "standard"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    .line 130
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string v1, "BUTTON"

    const-string v2, "button"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->BUTTON:Lcom/facebook/share/widget/LikeView$Style;

    .line 136
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string v1, "BOX_COUNT"

    const-string v2, "box_count"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    const/4 v0, 0x3

    .line 116
    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BUTTON:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->$VALUES:[Lcom/facebook/share/widget/LikeView$Style;

    .line 138
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    .line 154
    iput p4, p0, Lcom/facebook/share/widget/LikeView$Style;->intValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/LikeView$Style;)I
    .registers 1

    .line 117
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$Style;->getValue()I

    move-result p0

    return p0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/LikeView$Style;
    .registers 6

    .line 141
    invoke-static {}, Lcom/facebook/share/widget/LikeView$Style;->values()[Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 142
    invoke-direct {v3}, Lcom/facebook/share/widget/LikeView$Style;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValue()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/facebook/share/widget/LikeView$Style;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$Style;
    .registers 2

    .line 116
    const-class v0, Lcom/facebook/share/widget/LikeView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$Style;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$Style;
    .registers 1

    .line 116
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->$VALUES:[Lcom/facebook/share/widget/LikeView$Style;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$Style;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    return-object v0
.end method
