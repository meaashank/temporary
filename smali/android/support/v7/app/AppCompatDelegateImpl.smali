###### Class android.support.v7.app.AppCompatDelegateImpl (android.support.v7.app.AppCompatDelegateImpl)
.class Landroid/support/v7/app/AppCompatDelegateImpl;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;,
        Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;,
        Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;,
        Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final IS_PRE_LOLLIPOP:Z

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroid/support/v7/app/ActionBar;

.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field final mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

.field private mClosingActionMenu:Z

.field final mContext:Landroid/content/Context;

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mHandleNativeActionModes:Z

.field mHasActionBar:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsDestroyed:Z

.field mIsFloating:Z

.field private mLocalNightMode:I

.field private mLongPressBackDown:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    .line 119
    new-array v0, v2, [I

    const v3, 0x1010054

    aput v3, v0, v1

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    .line 128
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    if-eqz v0, :cond_2c

    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->sInstalledExceptionHandler:Z

    if-nez v0, :cond_2c

    .line 130
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$1;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    sput-boolean v2, Landroid/support/v7/app/AppCompatDelegateImpl;->sInstalledExceptionHandler:Z

    :cond_2c
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 6

    .line 244
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    const/16 v1, -0x64

    .line 215
    iput v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 223
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$2;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 245
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 247
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    .line 249
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 250
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    if-nez p2, :cond_4e

    .line 254
    new-instance p2, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {p2, p0, p3}, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 256
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 258
    sget-object p2, Landroid/support/v7/app/AppCompatDelegateImpl;->sWindowBackgroundStyleable:[I

    invoke-static {p1, v0, p2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 260
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4a

    .line 262
    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p3, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_4a
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void

    .line 251
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyFixedSizeWindow()V
    .registers 6

    .line 731
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 737
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 739
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 740
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 738
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 742
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 743
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 744
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 746
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 747
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 748
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 747
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 750
    :cond_4f
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 751
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 752
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 751
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 754
    :cond_60
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 755
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 756
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 758
    :cond_71
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 759
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 760
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 759
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 762
    :cond_82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .registers 8

    .line 551
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 553
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 559
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 560
    invoke-virtual {p0, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    goto :goto_2b

    .line 561
    :cond_1e
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x6c

    .line 563
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    .line 565
    :cond_2b
    :goto_2b
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_38

    .line 566
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    .line 568
    :cond_38
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xa

    .line 569
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->requestWindowFeature(I)Z

    .line 571
    :cond_45
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    .line 572
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 577
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 581
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    const/4 v5, 0x0

    if-nez v1, :cond_d5

    .line 582
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v1, :cond_72

    .line 584
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    goto/16 :goto_104

    .line 589
    :cond_72
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_d3

    .line 595
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 596
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 599
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_94

    .line 600
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_96

    .line 602
    :cond_94
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 606
    :goto_96
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 607
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/DecorContentParent;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 611
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 616
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    if-eqz v1, :cond_be

    .line 617
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v4}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 619
    :cond_be
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    if-eqz v1, :cond_c8

    .line 620
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 622
    :cond_c8
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_104

    .line 623
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    goto :goto_104

    :cond_d3
    move-object v0, v5

    goto :goto_104

    .line 627
    :cond_d5
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-eqz v1, :cond_e2

    .line 628
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_ea

    .line 631
    :cond_e2
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 634
    :goto_ea
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_f9

    .line 637
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$3;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_104

    .line 659
    :cond_f9
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImpl$4;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-interface {v1, v3}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    :cond_104
    :goto_104
    if-eqz v0, :cond_15b

    .line 680
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_114

    .line 681
    sget v1, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    .line 685
    :cond_114
    invoke-static {v0}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 687
    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 690
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_14d

    .line 694
    :goto_12c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_13d

    .line 695
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 696
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 697
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_12c

    :cond_13d
    const/4 v2, -0x1

    .line 702
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 703
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 707
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14d

    .line 708
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_14d
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 715
    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImpl$5;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    return-object v0

    .line 670
    :cond_15b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1a1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureAutoNightModeManager()V
    .registers 3

    .line 2117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-nez v0, :cond_11

    .line 2118
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    :cond_11
    return-void
.end method

.method private ensureSubDecor()V
    .registers 3

    .line 517
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_54

    .line 518
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    .line 521
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 523
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_1e

    .line 524
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 525
    :cond_1e
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 527
    :cond_2c
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_35

    .line 528
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :cond_35
    :goto_35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyFixedSizeWindow()V

    .line 534
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 544
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_54

    if-eqz v0, :cond_4f

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_54

    :cond_4f
    const/16 v0, 0x6c

    .line 545
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    :cond_54
    return-void
.end method

.method private getNightMode()I
    .registers 3

    .line 2066
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    goto :goto_d

    :cond_9
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImpl;->getDefaultNightMode()I

    move-result v0

    :goto_d
    return v0
.end method

.method private initWindowDecorActionBar()V
    .registers 4

    .line 319
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 321
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    goto :goto_3d

    .line 325
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 326
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_31

    .line 328
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_31

    .line 329
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 331
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3c

    .line 332
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_3c
    return-void

    :cond_3d
    :goto_3d
    return-void
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 5

    .line 1518
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1519
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    return v1

    .line 1523
    :cond_a
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    .line 1527
    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    if-nez v0, :cond_1b

    .line 1528
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    .line 1531
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1533
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1535
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 4

    .line 1424
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1425
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    .line 1426
    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    const/4 p1, 0x1

    return p1
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .registers 8

    .line 1475
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1478
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_65

    :cond_d
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_65

    .line 1480
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1481
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1482
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1485
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3a

    .line 1486
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1487
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1488
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1489
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_3f

    .line 1492
    :cond_3a
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1496
    :goto_3f
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_55

    if-nez v4, :cond_50

    .line 1498
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1499
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1501
    :cond_50
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_55
    if-eqz v4, :cond_65

    .line 1505
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1506
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1510
    :cond_65
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1511
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1512
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return v2
.end method

.method private invalidatePanelMenu(I)V
    .registers 4

    .line 1839
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    .line 1841
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-nez p1, :cond_19

    .line 1842
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1843
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    :cond_19
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1693
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 1694
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1695
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_14

    .line 1696
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1704
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 1709
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v2

    if-nez p1, :cond_45

    .line 1710
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_45

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1711
    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1712
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_45

    .line 1713
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 1714
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p1, :cond_65

    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1715
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result p1

    goto :goto_6c

    .line 1718
    :cond_3e
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result p1

    goto :goto_6c

    .line 1721
    :cond_45
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez p1, :cond_67

    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    if-eqz p1, :cond_4e

    goto :goto_67

    .line 1727
    :cond_4e
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz p1, :cond_65

    .line 1729
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-eqz p1, :cond_5d

    .line 1732
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1733
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x1

    :goto_5e
    if-eqz p1, :cond_65

    .line 1738
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->openPanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_6c

    :cond_65
    const/4 p1, 0x0

    goto :goto_6c

    .line 1724
    :cond_67
    :goto_67
    iget-boolean p1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    .line 1726
    invoke-virtual {p0, v2, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :goto_6c
    if-eqz p1, :cond_85

    .line 1745
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    if-eqz p2, :cond_7e

    .line 1748
    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_85

    :cond_7e
    const-string p2, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 1750
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return p1
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 16

    .line 1329
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_f8

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-eqz v0, :cond_a

    goto/16 :goto_f8

    .line 1335
    :cond_a
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 1336
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1337
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    return-void

    .line 1344
    :cond_27
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1345
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1347
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void

    .line 1351
    :cond_3b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_48

    return-void

    .line 1357
    :cond_48
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_4f

    return-void

    .line 1362
    :cond_4f
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_6c

    iget-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    if-eqz p2, :cond_5a

    goto :goto_6c

    .line 1398
    :cond_5a
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz p2, :cond_d4

    .line 1401
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_d4

    .line 1402
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_d4

    const/4 v6, -0x1

    goto :goto_d5

    .line 1363
    :cond_6c
    :goto_6c
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez p2, :cond_7b

    .line 1365
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result p2

    if-eqz p2, :cond_7a

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez p2, :cond_8c

    :cond_7a
    return-void

    .line 1367
    :cond_7b
    iget-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    if-eqz p2, :cond_8c

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8c

    .line 1369
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1373
    :cond_8c
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result p2

    if-eqz p2, :cond_f7

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->hasPanelItems()Z

    move-result p2

    if-nez p2, :cond_99

    goto :goto_f7

    .line 1377
    :cond_99
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_a6

    .line 1379
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1382
    :cond_a6
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    .line 1383
    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1385
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 1386
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_c0

    .line 1387
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1389
    :cond_c0
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_d4

    .line 1396
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_d4
    const/4 v6, -0x2

    .line 1407
    :goto_d5
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1409
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->x:I

    iget v9, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->y:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1416
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->gravity:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1417
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1419
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    return-void

    :cond_f7
    :goto_f7
    return-void

    :cond_f8
    :goto_f8
    return-void
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .line 1815
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1823
    :cond_8
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1c

    .line 1825
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_1c
    if-eqz v1, :cond_2a

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_2a

    .line 1830
    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez p3, :cond_2a

    .line 1831
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_2a
    return v1
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 1539
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 1544
    :cond_6
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 1548
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eq v0, p1, :cond_19

    .line 1550
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1553
    :cond_19
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1556
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1559
    :cond_27
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_34

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_32

    goto :goto_34

    :cond_32
    const/4 v3, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v3, 0x1

    :goto_35
    if-eqz v3, :cond_40

    .line 1562
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_40

    .line 1565
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1568
    :cond_40
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_f4

    if-eqz v3, :cond_4e

    .line 1569
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v4, :cond_f4

    .line 1572
    :cond_4e
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_a2

    .line 1573
    :cond_57
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_66

    .line 1574
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_66

    :cond_65
    return v1

    :cond_66
    if-eqz v3, :cond_80

    .line 1579
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_80

    .line 1580
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    if-nez v4, :cond_77

    .line 1581
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    .line 1583
    :cond_77
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1588
    :cond_80
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1589
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 1591
    invoke-virtual {p1, v5}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    if-eqz v3, :cond_9f

    .line 1593
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_9f

    .line 1595
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {p1, v5, p2}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    :cond_9f
    return v1

    .line 1601
    :cond_a0
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    .line 1606
    :cond_a2
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1610
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_b4

    .line 1611
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1612
    iput-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1616
    :cond_b4
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_d1

    if-eqz v3, :cond_cb

    .line 1617
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p2, :cond_cb

    .line 1620
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;

    invoke-interface {p2, v5, v0}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1622
    :cond_cb
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v1

    :cond_d1
    if-eqz p2, :cond_d8

    .line 1628
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_d9

    :cond_d8
    const/4 p2, -0x1

    .line 1627
    :goto_d9
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1629
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_e5

    const/4 p2, 0x1

    goto :goto_e6

    :cond_e5
    const/4 p2, 0x0

    :goto_e6
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    .line 1630
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1631
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1635
    :cond_f4
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1636
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1637
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    return v2
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 7

    .line 1431
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_86

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_86

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 1432
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1433
    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 1435
    :cond_22
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 1437
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_46

    if-nez p2, :cond_33

    goto :goto_46

    .line 1457
    :cond_33
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p2}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1458
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p2, :cond_85

    .line 1459
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p2

    .line 1460
    iget-object p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_85

    :cond_46
    :goto_46
    if-eqz p1, :cond_85

    .line 1438
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p2, :cond_85

    .line 1440
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-eqz p2, :cond_65

    iget p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_65

    .line 1442
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1443
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1446
    :cond_65
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p2

    .line 1450
    iget-object v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_85

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    if-nez v0, :cond_85

    iget-object v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1451
    invoke-interface {p1, v1, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1452
    iget-object p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1453
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    :cond_85
    :goto_85
    return-void

    .line 1466
    :cond_86
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1468
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1469
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    const/4 p2, 0x0

    .line 1471
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->openPanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private sanitizeWindowFeatureId(I)I
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    const-string p1, "AppCompatDelegate"

    const-string v0, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1959
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_e
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1c

    const-string p1, "AppCompatDelegate"

    const-string v0, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 1963
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    return p1

    :cond_1c
    return p1
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1278
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_a
    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    if-eq p1, v1, :cond_23

    .line 1286
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_23

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    .line 1287
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 1294
    :cond_1e
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_a

    :cond_23
    :goto_23
    return v0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .registers 7

    .line 2129
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_34

    .line 2132
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 2134
    :try_start_12
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 2135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2134
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2138
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_25} :catch_2b

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1

    :catch_2b
    move-exception v0

    const-string v1, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    .line 2142
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_34
    return v1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .registers 3

    .line 1951
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-nez v0, :cond_5

    return-void

    .line 1952
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateForNightMode(I)Z
    .registers 6

    .line 2074
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2076
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    const/16 p1, 0x20

    goto :goto_16

    :cond_14
    const/16 p1, 0x10

    :goto_16
    if-eq v2, p1, :cond_44

    .line 2083
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldRecreateOnNightModeChange()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2089
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 2090
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_42

    .line 2095
    :cond_26
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2096
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2099
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    or-int/2addr p1, v3

    iput p1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 2100
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_42

    .line 2104
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flush(Landroid/content/res/Resources;)V

    :cond_42
    :goto_42
    const/4 p1, 0x1

    return p1

    :cond_44
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 484
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 485
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public applyDayNight()Z
    .registers 4

    .line 2004
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getNightMode()I

    move-result v0

    .line 2005
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->mapNightMode(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 2007
    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->updateForNightMode(I)Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v0, :cond_1b

    .line 2012
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2013
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V

    :cond_1b
    const/4 v0, 0x1

    .line 2016
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    return v1
.end method

.method callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .registers 5

    if-nez p3, :cond_13

    if-nez p2, :cond_f

    if-ltz p1, :cond_f

    .line 1761
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_f

    .line 1762
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    aget-object p2, p2, p1

    :cond_f
    if-eqz p2, :cond_13

    .line 1768
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    .line 1773
    iget-boolean p2, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-nez p2, :cond_1a

    return-void

    .line 1776
    :cond_1a
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez p2, :cond_23

    .line 1780
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_23
    return-void
.end method

.method checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 1643
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1647
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    .line 1648
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1650
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_1c

    const/16 v1, 0x6c

    .line 1651
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1c
    const/4 p1, 0x0

    .line 1653
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mClosingActionMenu:Z

    return-void
.end method

.method closePanel(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1657
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void
.end method

.method closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .registers 6

    if-eqz p2, :cond_18

    .line 1661
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1662
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1663
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void

    .line 1667
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 1668
    iget-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_39

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_39

    .line 1669
    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_39

    .line 1672
    iget p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    :cond_39
    const/4 p2, 0x0

    .line 1676
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    .line 1677
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    .line 1678
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    .line 1681
    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 p2, 0x1

    .line 1685
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    .line 1687
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-ne p2, p1, :cond_4b

    .line 1688
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    :cond_4b
    return-void
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1234
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_62

    .line 1235
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1236
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 1237
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 1238
    const-class v2, Landroid/support/v7/app/AppCompatViewInflater;

    .line 1239
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_5b

    .line 1245
    :cond_22
    :try_start_22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1246
    new-array v3, v1, [Ljava/lang/Class;

    .line 1247
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1248
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_36} :catch_37

    goto :goto_62

    :catch_37
    move-exception v2

    const-string v3, "AppCompatDelegate"

    .line 1250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate custom view inflater "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_62

    .line 1242
    :cond_5b
    :goto_5b
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1258
    :cond_62
    :goto_62
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    if-eqz v0, :cond_80

    .line 1259
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_76

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1261
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_7e

    const/4 v1, 0x1

    goto :goto_7e

    :cond_76
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1263
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_7e
    :goto_7e
    move v7, v1

    goto :goto_81

    :cond_80
    const/4 v7, 0x0

    .line 1266
    :goto_81
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    sget-boolean v8, Landroid/support/v7/app/AppCompatDelegateImpl;->IS_PRE_LOLLIPOP:Z

    const/4 v9, 0x1

    .line 1269
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1266
    invoke-virtual/range {v2 .. v10}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method dismissPopups()V
    .registers 3

    .line 1976
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_9

    .line 1977
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1980
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_28

    .line 1981
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1982
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1984
    :try_start_20
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    const/4 v0, 0x0

    .line 1990
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1992
    :cond_28
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    const/4 v0, 0x0

    .line 1994
    invoke-virtual {p0, v0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1995
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3b

    .line 1996
    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    :cond_3b
    return-void
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1165
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v4/view/KeyEventDispatcher$Component;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDialog;

    if-eqz v0, :cond_1c

    .line 1167
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1168
    invoke-static {v0, p1}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 1173
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_2d

    .line 1175
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    .line 1180
    :cond_2d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-eqz v1, :cond_40

    .line 1184
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_44

    :cond_40
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_44
    return p1
.end method

.method doInvalidatePanelMenu(I)V
    .registers 6

    const/4 v0, 0x1

    .line 1848
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v1

    .line 1850
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_25

    .line 1851
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1852
    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1853
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 1854
    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1857
    :cond_1b
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1858
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1860
    :cond_25
    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshMenuContent:Z

    .line 1861
    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_40

    .line 1864
    :cond_2f
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 1866
    invoke-virtual {p0, p1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1868
    iput-boolean p1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    const/4 p1, 0x0

    .line 1869
    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_40
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .registers 2

    .line 1104
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 1105
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_9
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 7

    .line 1785
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1786
    array-length v2, v0

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v1, v2, :cond_16

    .line 1788
    aget-object v3, v0, v1

    if-eqz v3, :cond_13

    .line 1789
    iget-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 404
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    .line 377
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 379
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    .line 383
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    :cond_10
    return-object v0
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2124
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2125
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .line 2728
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 391
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1b

    .line 392
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 393
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 394
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_16

    :cond_14
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    :goto_16
    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 396
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .registers 6

    .line 1798
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p2, :cond_7

    array-length v0, p2

    if-gt v0, p1, :cond_15

    :cond_7
    add-int/lit8 v0, p1, 0x1

    .line 1799
    new-array v0, v0, [Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p2, :cond_12

    .line 1801
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1803
    :cond_12
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object p2, v0

    .line 1806
    :cond_15
    aget-object v0, p2, p1

    if-nez v0, :cond_20

    .line 1808
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    aput-object v0, p2, p1

    :cond_20
    return-object v0
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .registers 2

    .line 1972
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 306
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 307
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 850
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 851
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 854
    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .registers 4

    .line 812
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_28

    const/4 v0, 0x0

    goto :goto_1b

    .line 817
    :sswitch_a
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    goto :goto_1b

    .line 814
    :sswitch_d
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    goto :goto_1b

    .line 820
    :sswitch_10
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    goto :goto_1b

    .line 826
    :sswitch_13
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    goto :goto_1b

    .line 823
    :sswitch_16
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    goto :goto_1b

    .line 829
    :sswitch_19
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    :goto_1b
    if-nez v0, :cond_25

    .line 832
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    return v1

    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_16
        0x5 -> :sswitch_13
        0xa -> :sswitch_10
        0x6c -> :sswitch_d
        0x6d -> :sswitch_a
    .end sparse-switch
.end method

.method public installViewFactory()V
    .registers 3

    .line 1300
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1302
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1f

    .line 1304
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    if-nez v0, :cond_1f

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 1305
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 929
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 930
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 932
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    return-void
.end method

.method public isHandleNativeActionModesEnabled()Z
    .registers 2

    .line 1100
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    return v0
.end method

.method mapNightMode(I)I
    .registers 4

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_29

    if-eqz p1, :cond_8

    return p1

    .line 2046
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1f

    .line 2047
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 2048
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_1f

    return v1

    .line 2054
    :cond_1f
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureAutoNightModeManager()V

    .line 2055
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    return p1

    :cond_29
    return v1
.end method

.method onBackPressed()Z
    .registers 3

    .line 1111
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1112
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    return v1

    .line 1117
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1118
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 411
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_11

    .line 414
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 416
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    :cond_11
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 269
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 272
    :try_start_7
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    move-object v0, v1

    :catch_10
    if-eqz v0, :cond_1f

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 281
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mEnableDefaultActionBarUp:Z

    goto :goto_1f

    .line 283
    :cond_1c
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_1f
    :goto_1f
    if-eqz p1, :cond_2f

    .line 288
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2f

    const-string v0, "appcompat:local_night_mode"

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    :cond_2f
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 1316
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImpl;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 1324
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 500
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_f

    .line 501
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    .line 506
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1b

    .line 507
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 511
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-eqz v0, :cond_24

    .line 512
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    :cond_24
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_1a

    .line 1217
    :cond_a
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1225
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    :goto_1a
    return v2
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1128
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1129
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    .line 1135
    :cond_e
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_27

    .line 1136
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1139
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_26

    .line 1140
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    :cond_26
    return v1

    .line 1150
    :cond_27
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v0, 0x0

    if-nez p1, :cond_40

    .line 1151
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1152
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 1154
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz p2, :cond_40

    return v1

    :cond_40
    return v0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_29

    .line 1190
    :cond_a
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1193
    :cond_e
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    .line 1194
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLongPressBackDown:Z

    .line 1196
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 1197
    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_22

    if-nez p1, :cond_21

    .line 1202
    invoke-virtual {p0, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_21
    return v1

    .line 1206
    :cond_22
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .line 884
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 885
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_1b

    .line 886
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 888
    iget p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    const/4 v0, 0x1

    .line 896
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method onMenuOpened(I)V
    .registers 3

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_e

    .line 875
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 877
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_e
    return-void
.end method

.method onPanelClosed(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_f

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 861
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1d

    :cond_f
    if-nez p1, :cond_1d

    const/4 v1, 0x1

    .line 866
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 867
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_1d

    .line 868
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 299
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    return-void
.end method

.method public onPostResume()V
    .registers 3

    .line 449
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 451
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 492
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_d

    const-string v0, "appcompat:local_night_mode"

    .line 494
    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 431
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 442
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    if-eqz v0, :cond_13

    .line 443
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    :cond_13
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method public requestWindowFeature(I)Z
    .registers 5

    .line 769
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 771
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_e

    return v1

    .line 774
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    if-ne p1, v2, :cond_17

    .line 776
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    :cond_17
    sparse-switch p1, :sswitch_data_46

    .line 806
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 785
    :sswitch_21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 786
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionBar:Z

    return v2

    .line 781
    :sswitch_27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 782
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    return v2

    .line 789
    :sswitch_2d
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 790
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    return v2

    .line 797
    :sswitch_33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 798
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureIndeterminateProgress:Z

    return v2

    .line 793
    :sswitch_39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 794
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFeatureProgress:Z

    return v2

    .line 801
    :sswitch_3f
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->throwFeatureRequestIfSubDecorInstalled()V

    .line 802
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindowNoTitle:Z

    return v2

    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_39
        0x5 -> :sswitch_33
        0xa -> :sswitch_2d
        0x6c -> :sswitch_27
        0x6d -> :sswitch_21
    .end sparse-switch
.end method

.method public setContentView(I)V
    .registers 4

    .line 466
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 470
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 457
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 458
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 460
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 475
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 476
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 477
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 478
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .registers 2

    .line 1095
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHandleNativeActionModes:Z

    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 3

    packed-switch p1, :pswitch_data_1a

    const-string p1, "AppCompatDelegate"

    const-string v0, "setLocalNightMode() called with an unknown mode"

    .line 2037
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2027
    :pswitch_b
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    if-eq v0, p1, :cond_18

    .line 2028
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 2029
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mApplyDayNightCalled:Z

    if-eqz p1, :cond_18

    .line 2032
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    :cond_18
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .registers 5

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_7

    return-void

    .line 343
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 344
    instance-of v1, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    .line 352
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-eqz v0, :cond_17

    .line 356
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    :cond_17
    if-eqz p1, :cond_34

    .line 360
    new-instance v0, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    .line 361
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v0, p1, v1, v2}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 362
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 363
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_3d

    .line 365
    :cond_34
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 367
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 370
    :goto_3d
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->invalidateOptionsMenu()V

    return-void

    .line 345
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 837
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    .line 839
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_c

    .line 840
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 841
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 842
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 843
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    .line 844
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_23
    return-void
.end method

.method final shouldAnimateActionModeView()Z
    .registers 2

    .line 1090
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 4
    .param p1    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_38

    .line 905
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_b

    .line 906
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 909
    :cond_b
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 911
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 913
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 914
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_2b

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz p1, :cond_2b

    .line 915
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {p1, v1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 919
    :cond_2b
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez p1, :cond_35

    .line 921
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 924
    :cond_35
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1

    .line 902
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 9
    .param p1    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 936
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 937
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_c

    .line 938
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 941
    :cond_c
    instance-of v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    if-nez v0, :cond_16

    .line 943
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object p1, v0

    .line 947
    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v0, :cond_26

    .line 949
    :try_start_1f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/AbstractMethodError; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    :cond_26
    move-object v0, v1

    :goto_27
    if-eqz v0, :cond_2d

    .line 956
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_16a

    .line 958
    :cond_2d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_da

    .line 959
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v0, :cond_bb

    .line 961
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 962
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 963
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 966
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_6c

    .line 967
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 968
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 969
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 971
    new-instance v4, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 972
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_6e

    .line 974
    :cond_6c
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 977
    :goto_6e
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 978
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 980
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 982
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 983
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 985
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 987
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 988
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 987
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 989
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 990
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 991
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$6;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    goto :goto_da

    .line 1022
    :cond_bb
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 1023
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v0, :cond_da

    .line 1026
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1027
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1032
    :cond_da
    :goto_da
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_16a

    .line 1033
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 1035
    new-instance v0, Landroid/support/v7/view/StandaloneActionMode;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v6, :cond_f5

    goto :goto_f6

    :cond_f5
    const/4 v3, 0x0

    :goto_f6
    invoke-direct {v0, v4, v5, p1, v3}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 1037
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_168

    .line 1038
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 1039
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 1040
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 1042
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldAnimateActionModeView()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_132

    .line 1043
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1044
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1045
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$7;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$7;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_158

    .line 1064
    :cond_132
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1065
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1066
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1068
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_158

    .line 1069
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1073
    :cond_158
    :goto_158
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_16a

    .line 1074
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_16a

    .line 1077
    :cond_168
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 1081
    :cond_16a
    :goto_16a
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_179

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz p1, :cond_179

    .line 1082
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 1084
    :cond_179
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method updateStatusGuard(I)I
    .registers 9

    .line 1883
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    .line 1884
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_ab

    .line 1885
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1886
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1889
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_99

    .line 1890
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    if-nez v2, :cond_32

    .line 1891
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    .line 1892
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    .line 1894
    :cond_32
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    .line 1895
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    .line 1896
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1898
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1899
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_44

    move v2, p1

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    .line 1900
    :goto_45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_8a

    .line 1902
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1904
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-nez v2, :cond_77

    .line 1905
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    .line 1906
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1907
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1906
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1908
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_88

    .line 1912
    :cond_77
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1913
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_88

    .line 1914
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1915
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_88
    :goto_88
    const/4 v2, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v2, 0x0

    .line 1922
    :goto_8b
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_90

    goto :goto_91

    :cond_90
    const/4 v3, 0x0

    .line 1928
    :goto_91
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-nez v4, :cond_a3

    if-eqz v3, :cond_a3

    const/4 p1, 0x0

    goto :goto_a3

    .line 1933
    :cond_99
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_a1

    .line 1935
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v2, 0x0

    :goto_a2
    const/4 v3, 0x0

    :cond_a3
    :goto_a3
    if-eqz v2, :cond_ac

    .line 1939
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    :cond_ab
    const/4 v3, 0x0

    .line 1943
    :cond_ac
    :goto_ac
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_ba

    .line 1944
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v3, :cond_b5

    goto :goto_b7

    :cond_b5
    const/16 v1, 0x8

    :goto_b7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_ba
    return p1
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass1 (android.support.v7.app.AppCompatDelegateImpl$1)
.class final Landroid/support/v7/app/AppCompatDelegateImpl$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    .line 132
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldWrapException(Ljava/lang/Throwable;)Z
    .registers 4

    .line 148
    instance-of v0, p1, Landroid/content/res/Resources$NotFoundException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string v0, "drawable"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Drawable"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    return v1

    :cond_1d
    return v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 135
    invoke-direct {p0, p2}, Landroid/support/v7/app/AppCompatDelegateImpl$1;->shouldWrapException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 137
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 141
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p2, p1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 143
    :cond_34
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass2 (android.support.v7.app.AppCompatDelegateImpl$2)
.class Landroid/support/v7/app/AppCompatDelegateImpl$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 223
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 226
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 227
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->doInvalidatePanelMenu(I)V

    .line 229
    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1d

    .line 230
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->doInvalidatePanelMenu(I)V

    .line 232
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 233
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mInvalidatePanelMenuFeatures:I

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass3 (android.support.v7.app.AppCompatDelegateImpl$3)
.class Landroid/support/v7/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 638
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 7

    .line 642
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 643
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 647
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 649
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 650
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 646
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 654
    :cond_1c
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass4 (android.support.v7.app.AppCompatDelegateImpl$4)
.class Landroid/support/v7/app/AppCompatDelegateImpl$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 660
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .registers 4

    .line 663
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass5 (android.support.v7.app.AppCompatDelegateImpl$5)
.class Landroid/support/v7/app/AppCompatDelegateImpl$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 715
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .registers 1

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 721
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->dismissPopups()V

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass6 (android.support.v7.app.AppCompatDelegateImpl$6)
.class Landroid/support/v7/app/AppCompatDelegateImpl$6;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 991
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 994
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 997
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 999
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->shouldAnimateActionModeView()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_42

    .line 1000
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1001
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1002
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_50

    .line 1016
    :cond_42
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1017
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    :goto_50
    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass6.AnonymousClass1 (android.support.v7.app.AppCompatDelegateImpl$6$1)
.class Landroid/support/v7/app/AppCompatDelegateImpl$6$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$6;)V
    .registers 2

    .line 1002
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 1010
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1011
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1012
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 1005
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$6;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AnonymousClass7 (android.support.v7.app.AppCompatDelegateImpl$7)
.class Landroid/support/v7/app/AppCompatDelegateImpl$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 1045
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 1058
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1059
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1060
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 1048
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1049
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1051
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2a

    .line 1052
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$7;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_2a
    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.ActionBarDrawableToggleImpl (android.support.v7.app.AppCompatDelegateImpl$ActionBarDrawableToggleImpl)
.class Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 2732
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    .line 2746
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 2738
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    .line 2737
    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 2739
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2740
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-object v1
.end method

.method public isNavigationVisible()Z
    .registers 2

    .line 2751
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2752
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setActionBarDescription(I)V
    .registers 3

    .line 2766
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2768
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_b
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    .line 2757
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2759
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2760
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_e
    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.ActionMenuPresenterCallback (android.support.v7.app.AppCompatDelegateImpl$ActionMenuPresenterCallback)
.class final Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 2240
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 2254
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4

    .line 2245
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x6c

    .line 2247
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9 (android.support.v7.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9)
.class Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeCallbackWrapperV9"
.end annotation


# instance fields
.field private mWrapped:Landroid/support/v7/view/ActionMode$Callback;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/ActionMode$Callback;)V
    .registers 3

    .line 2155
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2156
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 2171
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 2161
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .registers 4

    .line 2176
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 2177
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1a

    .line 2178
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    :cond_1a
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz p1, :cond_42

    .line 2182
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 2183
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2184
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2199
    :cond_42
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz p1, :cond_53

    .line 2200
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 2202
    :cond_53
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 2166
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.AnonymousClass1 (android.support.v7.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1)
.class Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;)V
    .registers 2

    .line 2184
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 2187
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 2188
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1d

    .line 2189
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_3a

    .line 2190
    :cond_1d
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3a

    .line 2191
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 2193
    :cond_3a
    :goto_3a
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 2194
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2195
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AppCompatWindowCallback (android.support.v7.app.AppCompatDelegateImpl$AppCompatWindowCallback)
.class Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;
.super Landroid/support/v7/view/WindowCallbackWrapper;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V
    .registers 3

    .line 2526
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    .line 2527
    invoke-direct {p0, p2}, Landroid/support/v7/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2532
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2533
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 2538
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    .line 2539
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_8

    .line 2544
    instance-of v0, p2, Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2549
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 2587
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2588
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onMenuOpened(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 2594
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2595
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->onPanelClosed(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    .line 2560
    instance-of v0, p3, Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    if-nez p1, :cond_f

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    .line 2573
    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 2576
    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_1e

    .line 2579
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    :cond_1e
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2654
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_14

    .line 2657
    iget-object p2, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_17

    .line 2660
    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_17
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 2601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2606
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2607
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2610
    :cond_15
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 2638
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_b

    goto :goto_10

    .line 2642
    :cond_b
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2646
    :cond_10
    :goto_10
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 2620
    new-instance v0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2624
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    .line 2625
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2629
    invoke-virtual {v0, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AutoNightModeManager (android.support.v7.app.AppCompatDelegateImpl$AutoNightModeManager)
.class final Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Landroid/support/v7/app/TwilightManager;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/TwilightManager;)V
    .registers 3
    .param p2    # Landroid/support/v7/app/TwilightManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2673
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2674
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    .line 2675
    invoke-virtual {p2}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 3

    .line 2719
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 2720
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 2721
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_10
    return-void
.end method

.method dispatchTimeChanged()V
    .registers 3

    .line 2685
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    .line 2686
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eq v0, v1, :cond_11

    .line 2687
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2688
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    :cond_11
    return-void
.end method

.method getApplyableNightMode()I
    .registers 2

    .line 2680
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    .line 2681
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method setup()V
    .registers 4

    .line 2693
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 2698
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_e

    .line 2699
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2709
    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2e

    .line 2710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    .line 2711
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2712
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2713
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2715
    :cond_2e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.AutoNightModeManager.AnonymousClass1 (android.support.v7.app.AppCompatDelegateImpl$AutoNightModeManager$1)
.class Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V
    .registers 2

    .line 2699
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2705
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->dispatchTimeChanged()V

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.ListMenuDecorView (android.support.v7.app.AppCompatDelegateImpl$ListMenuDecorView)
.class Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .registers 3

    .line 2490
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    .line 2491
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isOutOfBounds(II)Z
    .registers 4

    const/4 v0, -0x5

    if-lt p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    .line 2520
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    if-le p2, p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2496
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2497
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 2502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 2504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2506
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2507
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(I)V

    const/4 p1, 0x1

    return p1

    .line 2511
    :cond_1e
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 2516
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.PanelFeatureState (android.support.v7.app.AppCompatDelegateImpl$PanelFeatureState)
.class public final Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Landroid/support/v7/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 2323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2324
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/4 p1, 0x0

    .line 2326
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .registers 3

    .line 2429
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 2430
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 2431
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    :cond_12
    return-void
.end method

.method public clearMenuPresenters()V
    .registers 3

    .line 2340
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_b

    .line 2341
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    :cond_b
    const/4 v0, 0x0

    .line 2343
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    return-void
.end method

.method getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;
    .registers 5

    .line 2391
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 2393
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-nez v0, :cond_21

    .line 2394
    new-instance v0, Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 2396
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 2397
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 2400
    :cond_21
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object p1

    return-object p1
.end method

.method public hasPanelItems()Z
    .registers 4

    .line 2330
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2331
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 2333
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 2419
    check-cast p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    .line 2420
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    .line 2421
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->wasLastOpen:Z

    .line 2422
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 2424
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 2425
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 2406
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;-><init>()V

    .line 2407
    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    iput v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    .line 2408
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    .line 2410
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_1f

    .line 2411
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2412
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    :cond_1f
    return-object v0
.end method

.method setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 2379
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    .line 2381
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_10

    .line 2382
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 2384
    :cond_10
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_1d

    .line 2386
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    :cond_1d
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .registers 6

    .line 2347
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2349
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2352
    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2353
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_23

    .line 2354
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2358
    :cond_23
    sget v2, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2359
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_32

    .line 2360
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_37

    .line 2362
    :cond_32
    sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2365
    :goto_37
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2366
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2368
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 2370
    sget-object p1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2371
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->background:I

    .line 2373
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->windowAnimations:I

    .line 2375
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.PanelFeatureState.SavedState (android.support.v7.app.AppCompatDelegateImpl$PanelFeatureState$SavedState)
.class Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2470
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 5

    .line 2459
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;-><init>()V

    .line 2460
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    .line 2461
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    .line 2463
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_20

    .line 2464
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    :cond_20
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2450
    iget p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2451
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    iget-boolean p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz p2, :cond_13

    .line 2454
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_13
    return-void
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.AnonymousClass1 (android.support.v7.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$1)
.class final Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 3

    const/4 v0, 0x0

    .line 2478
    invoke-static {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 3

    .line 2473
    invoke-static {p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2470
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 2470
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 2

    .line 2483
    new-array p1, p1, [Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2470
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->newArray(I)[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

###### Class android.support.v7.app.AppCompatDelegateImpl.PanelMenuPresenterCallback (android.support.v7.app.AppCompatDelegateImpl$PanelMenuPresenterCallback)
.class final Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .line 2207
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 7

    .line 2212
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 2214
    :goto_a
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    if-eqz v2, :cond_f

    move-object p1, v0

    :cond_f
    invoke-virtual {v3, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz v2, :cond_24

    .line 2217
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {p2, v2, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    .line 2218
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_29

    .line 2222
    :cond_24
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4

    if-nez p1, :cond_1b

    .line 2229
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-boolean v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_1b

    .line 2230
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2231
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_1b

    const/16 v1, 0x6c

    .line 2232
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method
