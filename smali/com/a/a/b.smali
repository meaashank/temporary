###### Class com.a.a.b (com.a.a.b)
.class Lcom/a/a/b;
.super Ljava/lang/Object;
.source "FloatValueAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b$a;,
        Lcom/a/a/b$b;
    }
.end annotation


# instance fields
.field final a:Landroid/animation/ValueAnimator;

.field b:Lcom/a/a/b$a;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/a/a/b;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eqz p1, :cond_12

    .line 45
    new-array p1, v0, [F

    fill-array-data p1, :array_1e

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    goto :goto_1d

    .line 47
    :cond_12
    new-array p1, v0, [F

    fill-array-data p1, :array_26

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    :goto_1d
    return-void

    :array_1e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/a/a/b;->b:Lcom/a/a/b$a;

    if-eqz v0, :cond_e

    .line 88
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/a/a/b$2;

    invoke-direct {v1, p0}, Lcom/a/a/b$2;-><init>(Lcom/a/a/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    :cond_e
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public a(I)Lcom/a/a/b;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-object p0
.end method

.method public a(J)Lcom/a/a/b;
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Lcom/a/a/b;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public a(Lcom/a/a/b$a;)Lcom/a/a/b;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/a/a/b;->b:Lcom/a/a/b$a;

    return-object p0
.end method

.method public a(Lcom/a/a/b$b;)Lcom/a/a/b;
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/a/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/a/a/b$1;-><init>(Lcom/a/a/b;Lcom/a/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public b(J)Lcom/a/a/b;
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/a/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

###### Class com.a.a.b.AnonymousClass1 (com.a.a.b$1)
.class Lcom/a/a/b$1;
.super Ljava/lang/Object;
.source "FloatValueAnimatorBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b;->a(Lcom/a/a/b$b;)Lcom/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b$b;

.field final synthetic b:Lcom/a/a/b;


# direct methods
.method constructor <init>(Lcom/a/a/b;Lcom/a/a/b$b;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/a/a/b$1;->b:Lcom/a/a/b;

    iput-object p2, p0, Lcom/a/a/b$1;->a:Lcom/a/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/a/a/b$1;->a:Lcom/a/a/b$b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/a/a/b$b;->a(F)V

    return-void
.end method

###### Class com.a.a.b.AnonymousClass2 (com.a.a.b$2)
.class Lcom/a/a/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatValueAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b;->a()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b;


# direct methods
.method constructor <init>(Lcom/a/a/b;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/a/a/b$2;->a:Lcom/a/a/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 91
    iget-object p1, p0, Lcom/a/a/b$2;->a:Lcom/a/a/b;

    iget-object p1, p1, Lcom/a/a/b;->b:Lcom/a/a/b$a;

    invoke-interface {p1}, Lcom/a/a/b$a;->a()V

    return-void
.end method

###### Class com.a.a.b.a (com.a.a.b$a)
.class interface abstract Lcom/a/a/b$a;
.super Ljava/lang/Object;
.source "FloatValueAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class com.a.a.b.InterfaceC0009b (com.a.a.b$b)
.class interface abstract Lcom/a/a/b$b;
.super Ljava/lang/Object;
.source "FloatValueAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(F)V
.end method
