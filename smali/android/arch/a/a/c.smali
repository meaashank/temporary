###### Class android.arch.a.a.c (android.arch.a.a.c)
.class public abstract Landroid/arch/a/a/c;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-virtual {p0}, Landroid/arch/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 57
    :cond_a
    invoke-virtual {p0, p1}, Landroid/arch/a/a/c;->b(Ljava/lang/Runnable;)V

    :goto_d
    return-void
.end method

.method public abstract d()Z
.end method
