###### Class android.support.design.widget.TabLayout (android.support.design.widget.TabLayout)
.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$AdapterChangeListener;,
        Landroid/support/design/widget/TabLayout$PagerAdapterObserver;,
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabIndicator;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabIndicatorGravity;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x30
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final MIN_INDICATOR_WIDTH:I = 0x18
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final tabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field private final slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Landroid/content/res/ColorStateList;

.field tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field tabTextAppearance:I

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 191
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->tabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 399
    sget v0, Landroid/support/design/R$attr;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    .line 403
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    .line 363
    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 409
    new-instance v1, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 410
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 416
    sget-object v7, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v9, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    const/4 v1, 0x1

    new-array v10, v1, [I

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    aput v2, v10, v0

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 417
    invoke-static/range {v5 .. v10}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 425
    iget-object p3, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 426
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 425
    invoke-virtual {p3, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 427
    iget-object p3, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 428
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 427
    invoke-virtual {p3, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 429
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabIndicator:I

    .line 430
    invoke-static {p1, p2, p3}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 429
    invoke-virtual {p0, p3}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 431
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 432
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 431
    invoke-virtual {p0, p3}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 433
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/support/design/widget/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 435
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    .line 438
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    .line 439
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    .line 440
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    .line 441
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    .line 442
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    .line 443
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    .line 444
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    .line 446
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    .line 447
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    .line 450
    iget p3, p0, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 451
    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 454
    :try_start_c8
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 455
    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->tabTextSize:F

    .line 457
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 458
    invoke-static {p1, p3, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_d9
    .catchall {:try_start_c8 .. :try_end_d9} :catchall_189

    .line 463
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_ec

    .line 468
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    .line 469
    invoke-static {p1, p2, p3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 472
    :cond_ec
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_106

    .line 476
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 477
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p3}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 480
    :cond_106
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabIconTint:I

    .line 481
    invoke-static {p1, p2, p3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 482
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabIconTintMode:I

    .line 483
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 485
    sget p3, Landroid/support/design/R$styleable;->TabLayout_tabRippleColor:I

    .line 486
    invoke-static {p1, p2, p3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 488
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 p3, 0x12c

    .line 489
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorAnimationDuration:I

    .line 491
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    .line 492
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->requestedTabMinWidth:I

    .line 493
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    .line 494
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->requestedTabMaxWidth:I

    .line 495
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    .line 496
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->contentInsetStart:I

    .line 498
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->mode:I

    .line 499
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 500
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    .line 501
    sget p1, Landroid/support/design/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    .line 502
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 505
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 506
    sget p2, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/design/widget/TabLayout;->tabTextMultiLineSize:F

    .line 507
    sget p2, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->scrollableTabMinWidth:I

    .line 510
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    return-void

    :catchall_189
    move-exception p1

    .line 463
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;
    .registers 1

    .line 167
    iget-object p0, p0, Landroid/support/design/widget/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .registers 4
    .param p1    # Landroid/support/design/widget/TabItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 628
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 629
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    .line 630
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 632
    :cond_d
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 633
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    .line 635
    :cond_16
    iget v1, p1, Landroid/support/design/widget/TabItem;->customLayout:I

    if-eqz v1, :cond_1f

    .line 636
    iget v1, p1, Landroid/support/design/widget/TabItem;->customLayout:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 638
    :cond_1f
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 639
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 641
    :cond_30
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 5

    .line 1369
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    .line 1370
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 3

    .line 1394
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_a

    .line 1395
    check-cast p1, Landroid/support/design/widget/TabItem;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    return-void

    .line 1397
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private animateToTab(I)V
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 1514
    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 1515
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1516
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_42

    .line 1523
    :cond_1b
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 1524
    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_3a

    .line 1527
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V

    .line 1529
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1530
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1534
    :cond_3a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    .line 1519
    :cond_42
    :goto_42
    invoke-virtual {p0, p1, v2, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .registers 4

    .line 1648
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1650
    iget v0, p0, Landroid/support/design/widget/TabLayout;->contentInsetStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 1652
    :goto_10
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1654
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2e

    goto :goto_2a

    .line 1656
    :pswitch_1c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_2a

    .line 1659
    :pswitch_22
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 1663
    :goto_2a
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .registers 6

    .line 1625
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    .line 1626
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1627
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1628
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1c

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1629
    invoke-virtual {v2, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz v0, :cond_24

    .line 1631
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz p1, :cond_2b

    .line 1632
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1635
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v2, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1639
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4a

    add-int/2addr p1, p2

    goto :goto_4b

    :cond_4a
    sub-int/2addr p1, p2

    :goto_4b
    return p1

    :cond_4c
    return v1
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 4

    .line 1359
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 1360
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1362
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_e
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_1e

    .line 1364
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6

    const/4 v0, 0x2

    .line 2704
    new-array v1, v0, [[I

    .line 2705
    new-array v0, v0, [I

    .line 2708
    sget-object v2, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 2713
    sget-object p1, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 2717
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1402
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1404
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .registers 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1343
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_19

    .line 1345
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 1347
    :cond_19
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 v1, 0x1

    .line 1348
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 1349
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 1350
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1351
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 1353
    :cond_39
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_40
    return-object v0
.end method

.method private dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1619
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1620
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1607
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1608
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1613
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1614
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private ensureScrollAnimator()V
    .registers 4

    .line 1538
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_24

    .line 1539
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1540
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1541
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1542
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_24
    return-void
.end method

.method private getDefaultHeight()I
    .registers 6
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x0
    .end annotation

    .line 2723
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_29

    .line 2724
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_26

    .line 2725
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    const/4 v1, 0x1

    goto :goto_29

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_29
    :goto_29
    if-eqz v1, :cond_32

    .line 2730
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-nez v0, :cond_32

    const/16 v0, 0x48

    goto :goto_34

    :cond_32
    const/16 v0, 0x30

    :goto_34
    return v0
.end method

.method private getTabMinWidth()I
    .registers 3

    .line 2734
    iget v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2736
    iget v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMinWidth:I

    return v0

    .line 2739
    :cond_8
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/design/widget/TabLayout;->scrollableTabMinWidth:I

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private getTabScrollRange()I
    .registers 3

    .line 1293
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 1294
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1293
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private removeTabViewAt(I)V
    .registers 4

    .line 1500
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 1501
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    if-eqz v0, :cond_17

    .line 1503
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->reset()V

    .line 1504
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->tabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1506
    :cond_17
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 8

    .line 1558
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_25

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_25

    .line 1561
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_17

    const/4 v5, 0x1

    goto :goto_18

    :cond_17
    const/4 v5, 0x0

    .line 1562
    :goto_18
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    .line 1563
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    return-void
.end method

.method private setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V
    .registers 6
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1193
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1a

    .line 1195
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v0, :cond_f

    .line 1196
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1198
    :cond_f
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1a

    .line 1199
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 1203
    :cond_1a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1205
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 1206
    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    :cond_26
    if-eqz p1, :cond_73

    .line 1210
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 1213
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_35

    .line 1214
    new-instance v0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 1216
    :cond_35
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1217
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1220
    new-instance v0, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    .line 1221
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->currentVpSelectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 1223
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1227
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 1231
    :cond_54
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_5f

    .line 1232
    new-instance v0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    .line 1234
    :cond_5f
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1235
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->adapterChangeListener:Landroid/support/design/widget/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 1238
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_79

    .line 1242
    :cond_73
    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 p1, 0x0

    .line 1243
    invoke-virtual {p0, v1, p1}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 1246
    :goto_79
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .registers 4

    .line 1337
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1338
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    .line 1409
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1410
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1411
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_17

    :cond_11
    const/4 v0, -0x2

    .line 1413
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 1414
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_17
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .param p1    # Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 672
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 673
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 584
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 595
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .registers 5
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 616
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-ne v0, p0, :cond_10

    .line 619
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 620
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;)V

    if-eqz p3, :cond_f

    .line 623
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_f
    return-void

    .line 617
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 4
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 605
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    .line 1375
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .line 1380
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1390
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1385
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .registers 2

    .line 689
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected createTabFromPool()Landroid/support/design/widget/TabLayout$Tab;
    .registers 2

    .line 709
    sget-object v0, Landroid/support/design/widget/TabLayout;->tabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    if-nez v0, :cond_f

    .line 711
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$Tab;-><init>()V

    :cond_f
    return-object v0
.end method

.method dpToPx(I)I
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Dimension;
        unit = 0x1
    .end annotation

    .line 1420
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 166
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 2748
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .registers 2

    .line 742
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_12

    .line 733
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public getTabCount()I
    .registers 2

    .line 727
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .registers 2

    .line 854
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1062
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .registers 2

    .line 887
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .registers 2

    .line 2752
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .registers 2

    .line 831
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1073
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1120
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .registers 2

    .line 1006
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    return v0
.end method

.method public isInlineLabel()Z
    .registers 2

    .line 962
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .registers 2

    .line 919
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    return v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 701
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->createTabFromPool()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 702
    iput-object p0, v0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    .line 703
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 1267
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1269
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_15

    .line 1272
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1273
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_15

    .line 1276
    check-cast v0, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1283
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1285
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1287
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v0, 0x0

    .line 1288
    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->setupViewPagerImplicitly:Z

    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const/4 v0, 0x0

    .line 1426
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1427
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1428
    instance-of v2, v1, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_18

    .line 1429
    check-cast v1, Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v1, p1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1433
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 1440
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1441
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_24

    if-eqz v1, :cond_1f

    goto :goto_30

    .line 1448
    :cond_1f
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_30

    .line 1445
    :cond_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1444
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1454
    :goto_30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1455
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4a

    .line 1458
    iget v1, p0, Landroid/support/design/widget/TabLayout;->requestedTabMaxWidth:I

    if-lez v1, :cond_41

    iget v0, p0, Landroid/support/design/widget/TabLayout;->requestedTabMaxWidth:I

    goto :goto_48

    :cond_41
    const/16 v1, 0x38

    .line 1461
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_48
    iput v0, p0, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    .line 1465
    :cond_4a
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1467
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_96

    const/4 p1, 0x0

    .line 1470
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1473
    iget v2, p0, Landroid/support/design/widget/TabLayout;->mode:I

    packed-switch v2, :pswitch_data_98

    goto :goto_76

    .line 1481
    :pswitch_5f
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v2, v4, :cond_76

    :goto_69
    const/4 p1, 0x1

    goto :goto_76

    .line 1477
    :pswitch_6b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v2, v4, :cond_76

    goto :goto_69

    :cond_76
    :goto_76
    if-eqz p1, :cond_96

    .line 1490
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    .line 1491
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1488
    invoke-static {p2, p1, v0}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result p1

    .line 1493
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1494
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->measure(II)V

    :cond_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_5f
    .end packed-switch
.end method

.method populateFromPagerAdapter()V
    .registers 6

    .line 1318
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 1320
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_44

    .line 1321
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_25

    .line 1323
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1327
    :cond_25
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_44

    if-lez v0, :cond_44

    .line 1328
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1329
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_44

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 1330
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_44
    return-void
.end method

.method protected releaseFromTabPool(Landroid/support/design/widget/TabLayout$Tab;)Z
    .registers 3

    .line 718
    sget-object v0, Landroid/support/design/widget/TabLayout;->tabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAllTabs()V
    .registers 3

    .line 788
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    .line 789
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 792
    :cond_10
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 793
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$Tab;

    .line 794
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 795
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 796
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->releaseFromTabPool(Landroid/support/design/widget/TabLayout$Tab;)Z

    goto :goto_16

    :cond_2c
    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .param p1    # Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 684
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3

    .line 752
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-ne v0, p0, :cond_c

    .line 756
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    return-void

    .line 753
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab does not belong to this TabLayout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .registers 7

    .line 766
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 767
    :goto_d
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 769
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_20

    .line 771
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->reset()V

    .line 772
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->releaseFromTabPool(Landroid/support/design/widget/TabLayout$Tab;)Z

    .line 775
    :cond_20
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_27
    if-ge v3, v2, :cond_37

    .line 777
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_37
    if-ne v0, p1, :cond_54

    .line 781
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 p1, 0x0

    goto :goto_51

    :cond_43
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout$Tab;

    :goto_51
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_54
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3

    const/4 v0, 0x1

    .line 1569
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 7

    .line 1573
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-ne v0, p1, :cond_11

    if-eqz v0, :cond_40

    .line 1577
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1578
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_40

    :cond_11
    const/4 v1, -0x1

    if-eqz p1, :cond_19

    .line 1581
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, -0x1

    :goto_1a
    if-eqz p2, :cond_34

    if-eqz v0, :cond_24

    .line 1583
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_2c

    :cond_24
    if-eq v2, v1, :cond_2c

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1586
    invoke-virtual {p0, v2, p2, v3}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_2f

    .line 1588
    :cond_2c
    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    :goto_2f
    if-eq v2, v1, :cond_34

    .line 1591
    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1596
    :cond_34
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_3b

    .line 1598
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->dispatchTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_3b
    if-eqz p1, :cond_40

    .line 1601
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setInlineLabel(Z)V
    .registers 4

    .line 930
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_24

    .line 931
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    const/4 p1, 0x0

    .line 932
    :goto_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_21

    .line 933
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 934
    instance-of v1, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v1, :cond_1e

    .line 935
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->updateOrientation()V

    :cond_1e
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 938
    :cond_21
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    :cond_24
    return-void
.end method

.method public setInlineLabelResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 951
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V
    .registers 3
    .param p1    # Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_9

    .line 653
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    .line 657
    :cond_9
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->selectedListener:Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;

    if-eqz p1, :cond_10

    .line 659
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;)V

    :cond_10
    return-void
.end method

.method setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .registers 5
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_f

    .line 1300
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1303
    :cond_f
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p2, :cond_25

    if-eqz p1, :cond_25

    .line 1307
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_20

    .line 1308
    new-instance p2, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object p2, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1310
    :cond_20
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1314
    :cond_25
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 1553
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V

    .line 1554
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 5

    const/4 v0, 0x1

    .line 547
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method setScrollPosition(IFZZ)V
    .registers 7

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 555
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_37

    .line 556
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    goto :goto_37

    :cond_11
    if-eqz p4, :cond_18

    .line 562
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 566
    :cond_18
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_29

    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_29

    .line 567
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 569
    :cond_29
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    if-eqz p3, :cond_36

    .line 573
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    :cond_36
    return-void

    :cond_37
    :goto_37
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    .line 1153
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1152
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_e
    const/4 p1, 0x0

    .line 1155
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1134
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_b

    .line 1135
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1136
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 520
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .registers 3

    .line 872
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_b

    .line 873
    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    .line 874
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .registers 3

    .line 841
    iget v0, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_9

    .line 842
    iput p1, p0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 843
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    :cond_9
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1043
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 1044
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 1045
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    :cond_9
    return-void
.end method

.method public setTabIconTintResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1056
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .registers 2

    .line 906
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    .line 907
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .registers 3

    .line 818
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mode:I

    if-eq p1, v0, :cond_9

    .line 819
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mode:I

    .line 820
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    :cond_9
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1087
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_25

    .line 1088
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1089
    :goto_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 1090
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    instance-of v1, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v1, :cond_22

    .line 1092
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V

    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_25
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1108
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(II)V
    .registers 3

    .line 1034
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1015
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 1016
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1017
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    :cond_9
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 3
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1256
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    return-void
.end method

.method public setUnboundedRipple(Z)V
    .registers 4

    .line 975
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eq v0, p1, :cond_25

    .line 976
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    const/4 p1, 0x0

    .line 977
    :goto_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 978
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 979
    instance-of v1, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v1, :cond_22

    .line 980
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V

    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_25
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 995
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->setUnboundedRipple(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1168
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .registers 4
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1188
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 1262
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method updateTabViews(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1667
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1668
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->slidingTabIndicator:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1669
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1670
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_24

    .line 1672
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

###### Class android.support.design.widget.TabLayout.AnonymousClass1 (android.support.design.widget.TabLayout$1)
.class Landroid/support/design/widget/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 2

    .line 1543
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$1;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1546
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$1;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    return-void
.end method

###### Class android.support.design.widget.TabLayout.AdapterChangeListener (android.support.design.widget.TabLayout$AdapterChangeListener)
.class Landroid/support/design/widget/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 2

    .line 2862
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 4
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2869
    iget-object p2, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object p2, p2, Landroid/support/design/widget/TabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-ne p2, p1, :cond_d

    .line 2870
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean p2, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {p1, p3, p2}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    :cond_d
    return-void
.end method

.method setAutoRefresh(Z)V
    .registers 2

    .line 2875
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->autoRefresh:Z

    return-void
.end method

###### Class android.support.design.widget.TabLayout.BaseOnTabSelectedListener (android.support.design.widget.TabLayout$BaseOnTabSelectedListener)
.class public interface abstract Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseOnTabSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/TabLayout$Tab;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class android.support.design.widget.TabLayout.Mode (android.support.design.widget.TabLayout$Mode)
.class public interface abstract annotation Landroid/support/design/widget/TabLayout$Mode;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Mode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.design.widget.TabLayout.OnTabSelectedListener (android.support.design.widget.TabLayout$OnTabSelectedListener)
.class public interface abstract Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTabSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/design/widget/TabLayout$BaseOnTabSelectedListener<",
        "Landroid/support/design/widget/TabLayout$Tab;",
        ">;"
    }
.end annotation

###### Class android.support.design.widget.TabLayout.PagerAdapterObserver (android.support.design.widget.TabLayout$PagerAdapterObserver)
.class Landroid/support/design/widget/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 2

    .line 2846
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 2850
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .line 2855
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

###### Class android.support.design.widget.TabLayout.SlidingTabIndicator (android.support.design.widget.TabLayout$SlidingTabIndicator)
.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorAnimator:Landroid/animation/ValueAnimator;

.field private indicatorLeft:I

.field private indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 3

    .line 2385
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    .line 2386
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2375
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2378
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2380
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2381
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    const/4 p1, 0x0

    .line 2387
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2388
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2389
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V
    .registers 6

    .line 2632
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)I

    move-result v0

    .line 2634
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 2635
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    .line 2638
    :cond_14
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result p1

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 2639
    div-int/lit8 v0, v0, 0x2

    sub-int p1, v1, v0

    add-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    const/4 v1, 0x0

    .line 2642
    invoke-virtual {p2, p1, v1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 7

    .line 2519
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 2523
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_a3

    .line 2524
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2525
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2527
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v3, :cond_3d

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v3, :cond_3d

    .line 2528
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2529
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 2530
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 2533
    :cond_3d
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a5

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a5

    .line 2535
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2536
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2537
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 2539
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v5, :cond_85

    instance-of v5, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v5, :cond_85

    .line 2540
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2541
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 2542
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    .line 2545
    :cond_85
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v3

    mul-float v0, v0, v3

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    int-to-float v1, v1

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    float-to-int v1, v0

    .line 2546
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v4

    mul-float v0, v0, v3

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    sub-float/2addr v5, v3

    int-to-float v2, v2

    mul-float v5, v5, v2

    add-float/2addr v0, v5

    float-to-int v2, v0

    goto :goto_a5

    :cond_a3
    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 2553
    :cond_a5
    :goto_a5
    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 12

    .line 2566
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2567
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2570
    :cond_11
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 2573
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void

    .line 2577
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2578
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2580
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v3, :cond_4a

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v3, :cond_4a

    .line 2581
    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2582
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 2583
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_4a
    move v6, v1

    move v8, v2

    .line 2589
    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2590
    iget v7, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-ne v5, v6, :cond_54

    if-eq v7, v8, :cond_82

    .line 2593
    :cond_54
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2594
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p2

    .line 2595
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    .line 2596
    new-array p2, p2, [F

    fill-array-data p2, :array_84

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2597
    new-instance p2, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;IIII)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2607
    new-instance p2, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;

    invoke-direct {p2, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2615
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_82
    return-void

    nop

    :array_84
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .registers 5

    .line 2407
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    .line 2408
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2409
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 2648
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2649
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2651
    :goto_11
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v2, :cond_17

    .line 2652
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2658
    :cond_17
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    packed-switch v2, :pswitch_data_86

    const/4 v0, 0x0

    goto :goto_3d

    .line 2673
    :pswitch_20
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    goto :goto_3d

    .line 2664
    :pswitch_25
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 2665
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_3d

    .line 2660
    :pswitch_34
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2661
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    .line 2680
    :goto_3d
    :pswitch_3d
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v2, :cond_81

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-le v2, v3, :cond_81

    .line 2682
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_52

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_54

    :cond_52
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2683
    :goto_54
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2685
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2686
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7e

    .line 2687
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_75

    .line 2689
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2690
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2689
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7e

    .line 2692
    :cond_75
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 2695
    :cond_7e
    :goto_7e
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2699
    :cond_81
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_34
        :pswitch_25
        :pswitch_3d
        :pswitch_20
    .end packed-switch
.end method

.method getIndicatorPosition()F
    .registers 3

    .line 2427
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 2502
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2504
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_30

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 2507
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2508
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    .line 2509
    iget p3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/high16 p4, 0x3f800000    # 1.0f

    iget-object p5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2511
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float p4, p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2509
    invoke-virtual {p0, p3, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    goto :goto_33

    .line 2514
    :cond_30
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    :goto_33
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 2446
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_c

    return-void

    .line 2454
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_7d

    .line 2455
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v3, v0, :cond_37

    .line 2460
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2461
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_34

    .line 2462
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_37
    if-gtz v4, :cond_3a

    return-void

    .line 2471
    :cond_3a
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v3

    mul-int v5, v4, v0

    .line 2474
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_6f

    const/4 v3, 0x0

    :goto_4e
    if-ge v2, v0, :cond_6d

    .line 2478
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2479
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v4, :cond_65

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6a

    .line 2480
    :cond_65
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2481
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x1

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_6d
    move v1, v3

    goto :goto_78

    .line 2488
    :cond_6f
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iput v2, v0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 2489
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    :goto_78
    if-eqz v1, :cond_7d

    .line 2495
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7d
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    .line 2432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    .line 2437
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_12

    .line 2438
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2439
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    :cond_12
    return-void
.end method

.method setIndicatorPosition(II)V
    .registers 4

    .line 2557
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_f

    .line 2559
    :cond_8
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2560
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2561
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4

    .line 2417
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2418
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2421
    :cond_11
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2422
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 2423
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .registers 3

    .line 2393
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 2394
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2395
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 3

    .line 2400
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_9

    .line 2401
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2402
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_9
    return-void
.end method

###### Class android.support.design.widget.TabLayout.SlidingTabIndicator.AnonymousClass1 (android.support.design.widget.TabLayout$SlidingTabIndicator$1)
.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;IIII)V
    .registers 6

    .line 2598
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startLeft:I

    iput p3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    iput p4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startRight:I

    iput p5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 2601
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2602
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startLeft:I

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    .line 2603
    invoke-static {v1, v2, p1}, Landroid/support/design/animation/AnimationUtils;->lerp(IIF)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startRight:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    .line 2604
    invoke-static {v2, v3, p1}, Landroid/support/design/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    .line 2602
    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method

###### Class android.support.design.widget.TabLayout.SlidingTabIndicator.AnonymousClass2 (android.support.design.widget.TabLayout$SlidingTabIndicator$2)
.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;I)V
    .registers 3

    .line 2608
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2611
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput v0, p1, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2612
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    return-void
.end method

###### Class android.support.design.widget.TabLayout.Tab (android.support.design.widget.TabLayout$Tab)
.class public Landroid/support/design/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field public parent:Landroid/support/design/widget/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Landroid/support/design/widget/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1695
    iput v0, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    .line 1679
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    .line 1679
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1929
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1734
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1780
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1790
    iget v0, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1711
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1804
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .registers 3

    .line 1879
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_12

    .line 1882
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1880
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reset()V
    .registers 3

    const/4 v0, 0x0

    .line 1939
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    .line 1940
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    .line 1941
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 1942
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1943
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1944
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 1945
    iput v1, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    .line 1946
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->customView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .registers 3

    .line 1871
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_a

    .line 1874
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void

    .line 1872
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1896
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_13

    .line 1899
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1897
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .registers 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1913
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1914
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 5
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1769
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1770
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1750
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1751
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1828
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_13

    .line 1831
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1829
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1815
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1816
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method setPosition(I)V
    .registers 2

    .line 1794
    iput p1, p0, Landroid/support/design/widget/TabLayout$Tab;->position:I

    return-void
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1722
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1863
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_13

    .line 1866
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->parent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1864
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1843
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1846
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1849
    :cond_13
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1850
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .registers 2

    .line 1933
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_9

    .line 1934
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->view:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_9
    return-void
.end method

###### Class android.support.design.widget.TabLayout.TabGravity (android.support.design.widget.TabLayout$TabGravity)
.class public interface abstract annotation Landroid/support/design/widget/TabLayout$TabGravity;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TabGravity"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.design.widget.TabLayout.TabIndicatorGravity (android.support.design.widget.TabLayout$TabIndicatorGravity)
.class public interface abstract annotation Landroid/support/design/widget/TabLayout$TabIndicatorGravity;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TabIndicatorGravity"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.design.widget.TabLayout.TabLayoutOnPageChangeListener (android.support.design.widget.TabLayout$TabLayoutOnPageChangeListener)
.class public Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 3

    .line 2769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2770
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 2775
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 2776
    iput p1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 9

    .line 2782
    iget-object p3, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/TabLayout;

    if-eqz p3, :cond_25

    .line 2786
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_18

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-ne v0, v3, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 2791
    :goto_19
    iget v4, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-ne v4, v2, :cond_21

    iget v2, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-eqz v2, :cond_22

    :cond_21
    const/4 v1, 0x1

    .line 2793
    :cond_22
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    :cond_25
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 2799
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_2e

    .line 2801
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2e

    .line 2802
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2e

    .line 2805
    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-eqz v1, :cond_26

    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-nez v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    .line 2809
    :goto_27
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    :cond_2e
    return-void
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2814
    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    return-void
.end method

###### Class android.support.design.widget.TabLayout.TabView (android.support.design.widget.TabLayout$TabView)
.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Landroid/support/design/widget/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 6

    .line 1962
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1963
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 1960
    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 1964
    invoke-direct {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1965
    iget p2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    iget v0, p1, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    .line 1967
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1968
    iget-boolean p1, p1, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1969
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1971
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 1970
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V
    .registers 2

    .line 1950
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .registers 2

    .line 1950
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout$TabView;)I
    .registers 1

    .line 1950
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .registers 4

    .line 2366
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    return p2
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7

    .line 2030
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 2031
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2032
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1e
    return-void
.end method

.method private getContentWidth()I
    .registers 10

    const/4 v0, 0x3

    .line 2349
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-ge v2, v1, :cond_44

    aget-object v7, v0, v2

    if-eqz v7, :cond_41

    .line 2350
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_41

    if-eqz v6, :cond_2d

    .line 2351
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_31

    :cond_2d
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_31
    if-eqz v6, :cond_3c

    .line 2352
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_40

    :cond_3c
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    :goto_40
    const/4 v6, 0x1

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_44
    sub-int/2addr v4, v5

    return v4
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .registers 8

    .line 1975
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 1976
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1977
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_29

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1978
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_29

    .line 1981
    :cond_27
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1985
    :cond_29
    :goto_29
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1986
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1988
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_82

    .line 1989
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 1993
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    .line 1994
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1996
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1997
    invoke-static {v3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 2001
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6d

    .line 2002
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_61

    move-object p1, v1

    :cond_61
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_68

    move-object v0, v1

    :cond_68
    invoke-direct {v2, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    goto :goto_82

    .line 2008
    :cond_6d
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2009
    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2010
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    .line 2015
    :cond_82
    :goto_82
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2016
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->invalidate()V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2279
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2280
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2281
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    .line 2283
    :goto_1d
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v1

    :goto_29
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_40

    if-eqz v0, :cond_3a

    .line 2287
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2288
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2289
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_40

    .line 2291
    :cond_3a
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2296
    :cond_40
    :goto_40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_5a

    if-eqz v0, :cond_54

    .line 2299
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2300
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2301
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_5a

    .line 2303
    :cond_54
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5a
    :goto_5a
    if-eqz p2, :cond_99

    .line 2309
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_71

    .line 2311
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_71

    .line 2313
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v2

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    .line 2315
    :goto_72
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_8a

    .line 2316
    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_99

    .line 2317
    invoke-static {p1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2318
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2320
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_99

    .line 2324
    :cond_8a
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_99

    .line 2325
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2326
    invoke-static {p1, v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2328
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2329
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2334
    :cond_99
    :goto_99
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz p1, :cond_a4

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_a5

    :cond_a4
    move-object p1, v1

    :goto_a5
    if-eqz v0, :cond_a8

    move-object p1, v1

    .line 2335
    :cond_a8
    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    .line 2038
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2040
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    .line 2041
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2042
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1b
    if-eqz v2, :cond_25

    .line 2046
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->invalidate()V

    .line 2047
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->invalidate()V

    :cond_25
    return-void
.end method

.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 2

    .line 2361
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 2092
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2094
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 2100
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2102
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    .line 2107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2109
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1e

    if-eqz v1, :cond_14

    if-le v0, v2, :cond_1e

    .line 2117
    :cond_14
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget p1, p1, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2124
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2127
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_a0

    .line 2128
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabTextSize:F

    .line 2129
    iget v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2131
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3a

    const/4 v1, 0x1

    goto :goto_4a

    .line 2134
    :cond_3a
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_4a

    .line 2136
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabTextMultiLineSize:F

    .line 2139
    :cond_4a
    :goto_4a
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2140
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 2141
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v6, v0, v2

    if-nez v6, :cond_64

    if-ltz v5, :cond_a0

    if-eq v1, v5, :cond_a0

    .line 2147
    :cond_64
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v5, v5, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_91

    cmpl-float v2, v0, v2

    if-lez v2, :cond_91

    if-ne v4, v3, :cond_91

    .line 2153
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 2155
    invoke-direct {p0, v2, v6, v0}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v2

    .line 2156
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_91

    :cond_90
    const/4 v3, 0x0

    :cond_91
    if-eqz v3, :cond_a0

    .line 2162
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2163
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2164
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_a0
    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 2053
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2055
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_15

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 2057
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 2059
    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    const/4 v0, 0x1

    return v0

    :cond_15
    return v0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2178
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2179
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 4

    .line 2068
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2070
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 2072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x4

    .line 2074
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2079
    :cond_1a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    .line 2080
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2082
    :cond_23
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    .line 2083
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2085
    :cond_2c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 2086
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_35
    return-void
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2171
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_9

    .line 2172
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2173
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_9
    return-void
.end method

.method final update()V
    .registers 6

    .line 2183
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2184
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    if-eqz v2, :cond_5b

    .line 2186
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_1d

    if-eqz v3, :cond_1a

    .line 2189
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2191
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2193
    :cond_1d
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2194
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_2a

    .line 2195
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2197
    :cond_2a
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_38

    .line 2198
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2199
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    const v3, 0x1020014

    .line 2202
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2203
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4f

    .line 2204
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    :cond_4f
    const v3, 0x1020006

    .line 2206
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_6a

    .line 2209
    :cond_5b
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_66

    .line 2210
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2211
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2213
    :cond_66
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2214
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2217
    :goto_6a
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_f3

    .line 2219
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_88

    .line 2222
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    .line 2223
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2224
    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 2225
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    :cond_88
    if-eqz v0, :cond_9c

    .line 2228
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 2229
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9c
    if-eqz v1, :cond_b2

    .line 2232
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2233
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_b2

    .line 2234
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2238
    :cond_b2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_d3

    .line 2241
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_text:I

    .line 2242
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2243
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2244
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2245
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2247
    :cond_d3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2248
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_eb

    .line 2249
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2251
    :cond_eb
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_102

    .line 2254
    :cond_f3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_fb

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_102

    .line 2255
    :cond_fb
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_102
    :goto_102
    if-eqz v0, :cond_115

    .line 2259
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 2262
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_115
    if-eqz v0, :cond_11e

    .line 2265
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_11e

    const/4 v3, 0x1

    :cond_11e
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final updateOrientation()V
    .registers 3

    .line 2269
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v0, v0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 2270
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 2273
    :cond_12
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_21

    .line 2271
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_21
    return-void
.end method

###### Class android.support.design.widget.TabLayout.ViewPagerOnTabSelectedListener (android.support.design.widget.TabLayout$ViewPagerOnTabSelectedListener)
.class public Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    .line 2825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2826
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3

    .line 2831
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
