###### Class com.a.a.h (com.a.a.h)
.class Lcom/a/a/h;
.super Lcom/a/a/j;
.source "ToolbarTapTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h$a;,
        Lcom/a/a/h$b;,
        Lcom/a/a/h$c;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/a/a/j;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_7

    .line 46
    invoke-static {p1}, Lcom/a/a/h;->b(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/a/a/h;->c(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    :goto_b
    invoke-direct {p0, p1, p3, p4}, Lcom/a/a/j;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/a/a/j;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_7

    .line 51
    invoke-static {p1}, Lcom/a/a/h;->b(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/a/a/h;->c(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    :goto_b
    invoke-direct {p0, p1, p3, p4}, Lcom/a/a/j;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Lcom/a/a/h$c;
    .registers 2

    if-eqz p0, :cond_22

    .line 59
    instance-of v0, p0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_e

    .line 60
    new-instance v0, Lcom/a/a/h$b;

    check-cast p0, Landroid/support/v7/widget/Toolbar;

    invoke-direct {v0, p0}, Lcom/a/a/h$b;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-object v0

    .line 61
    :cond_e
    instance-of v0, p0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1a

    .line 62
    new-instance v0, Lcom/a/a/h$a;

    check-cast p0, Landroid/widget/Toolbar;

    invoke-direct {v0, p0}, Lcom/a/a/h$a;-><init>(Landroid/widget/Toolbar;)V

    return-object v0

    .line 65
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t provide proper toolbar proxy instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given null instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/lang/Object;)Landroid/view/View;
    .registers 6

    .line 69
    invoke-static {p0}, Lcom/a/a/h;->a(Ljava/lang/Object;)Lcom/a/a/h$c;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Lcom/a/a/h$c;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const-string v0, "taptarget-findme"

    .line 75
    :goto_13
    invoke-interface {p0, v0}, Lcom/a/a/h$c;->a(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x2

    .line 78
    invoke-interface {p0, v3, v0, v2}, Lcom/a/a/h$c;->a(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    if-nez v1, :cond_25

    const/4 v0, 0x0

    .line 81
    invoke-interface {p0, v0}, Lcom/a/a/h$c;->a(Ljava/lang/CharSequence;)V

    .line 84
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_33

    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 89
    :cond_33
    invoke-interface {p0}, Lcom/a/a/h$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 94
    invoke-interface {p0}, Lcom/a/a/h$c;->d()I

    move-result v2

    :goto_3d
    if-ge v1, v2, :cond_54

    .line 96
    invoke-interface {p0, v1}, Lcom/a/a/h$c;->a(I)Landroid/view/View;

    move-result-object v3

    .line 97
    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_51

    .line 98
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, v0, :cond_51

    return-object v3

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 105
    :cond_54
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find navigation view for Toolbar!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_5c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Toolbar does not have a navigation view set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/lang/Object;)Landroid/view/View;
    .registers 8

    .line 109
    invoke-static {p0}, Lcom/a/a/h;->a(Ljava/lang/Object;)Lcom/a/a/h$c;

    move-result-object p0

    .line 112
    invoke-interface {p0}, Lcom/a/a/h$c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 114
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 115
    invoke-interface {p0}, Lcom/a/a/h$c;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_18
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 117
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_18

    .line 120
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 121
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_39

    .line 122
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 125
    :cond_39
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_47

    .line 126
    move-object v6, v5

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-ne v6, v0, :cond_47

    return-object v5

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 140
    :cond_4a
    :try_start_4a
    invoke-interface {p0}, Lcom/a/a/h$c;->e()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mMenuView"

    invoke-static {p0, v0}, Lcom/a/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mPresenter"

    .line 141
    invoke-static {p0, v0}, Lcom/a/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mOverflowButton"

    .line 142
    invoke-static {p0, v0}, Lcom/a/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_62
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4a .. :try_end_62} :catch_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_62} :catch_63

    return-object p0

    :catch_63
    move-exception p0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access overflow view for Toolbar!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_6c
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find overflow view for Toolbar!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.a.a.h.a (com.a.a.h$a)
.class Lcom/a/a/h$a;
.super Ljava/lang/Object;
.source "ToolbarTapTarget.java"

# interfaces
.implements Lcom/a/a/h$c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .registers 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/CharSequence;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toolbar;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 249
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/a/a/h$a;->a:Landroid/widget/Toolbar;

    return-object v0
.end method

###### Class com.a.a.h.b (com.a.a.h$b)
.class Lcom/a/a/h$b;
.super Ljava/lang/Object;
.source "ToolbarTapTarget.java"

# interfaces
.implements Lcom/a/a/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .registers 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/CharSequence;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/a/a/h$b;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

###### Class com.a.a.h.c (com.a.a.h$c)
.class interface abstract Lcom/a/a/h$c;
.super Ljava/lang/Object;
.source "ToolbarTapTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation


# virtual methods
.method public abstract a(I)Landroid/view/View;
.end method

.method public abstract a()Ljava/lang/CharSequence;
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract b()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract c()Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/Object;
.end method
