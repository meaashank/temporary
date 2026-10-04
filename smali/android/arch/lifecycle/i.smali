###### Class android.arch.lifecycle.i (android.arch.lifecycle.i)
.class public Landroid/arch/lifecycle/i;
.super Landroid/arch/lifecycle/k;
.source "MediatorLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/arch/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b<",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;",
            "Landroid/arch/lifecycle/i$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/arch/lifecycle/k;-><init>()V

    .line 70
    new-instance v0, Landroid/arch/a/b/b;

    invoke-direct {v0}, Landroid/arch/a/b/b;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/i;->a:Landroid/arch/a/b/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/LiveData;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/arch/lifecycle/i;->a:Landroid/arch/a/b/b;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/i$a;

    if-eqz p1, :cond_d

    .line 110
    invoke-virtual {p1}, Landroid/arch/lifecycle/i$a;->b()V

    :cond_d
    return-void
.end method

.method public a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/lifecycle/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;",
            "Landroid/arch/lifecycle/l<",
            "TS;>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/arch/lifecycle/i$a;

    invoke-direct {v0, p1, p2}, Landroid/arch/lifecycle/i$a;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    .line 87
    iget-object v1, p0, Landroid/arch/lifecycle/i;->a:Landroid/arch/a/b/b;

    invoke-virtual {v1, p1, v0}, Landroid/arch/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/i$a;

    if-eqz p1, :cond_1c

    .line 88
    iget-object v1, p1, Landroid/arch/lifecycle/i$a;->b:Landroid/arch/lifecycle/l;

    if-ne v1, p2, :cond_14

    goto :goto_1c

    .line 89
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_1c
    if-eqz p1, :cond_1f

    return-void

    .line 95
    :cond_1f
    invoke-virtual {p0}, Landroid/arch/lifecycle/i;->hasActiveObservers()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 96
    invoke-virtual {v0}, Landroid/arch/lifecycle/i$a;->a()V

    :cond_28
    return-void
.end method

.method protected onActive()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/arch/lifecycle/i;->a:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/i$a;

    invoke-virtual {v1}, Landroid/arch/lifecycle/i$a;->a()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method protected onInactive()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/arch/lifecycle/i;->a:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/i$a;

    invoke-virtual {v1}, Landroid/arch/lifecycle/i$a;->b()V

    goto :goto_6

    :cond_1c
    return-void
.end method

###### Class android.arch.lifecycle.i.a (android.arch.lifecycle.i$a)
.class Landroid/arch/lifecycle/i$a;
.super Ljava/lang/Object;
.source "MediatorLiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/l<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Landroid/arch/lifecycle/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/l<",
            "TV;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TV;>;",
            "Landroid/arch/lifecycle/l<",
            "TV;>;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Landroid/arch/lifecycle/i$a;->c:I

    .line 136
    iput-object p1, p0, Landroid/arch/lifecycle/i$a;->a:Landroid/arch/lifecycle/LiveData;

    .line 137
    iput-object p2, p0, Landroid/arch/lifecycle/i$a;->b:Landroid/arch/lifecycle/l;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/arch/lifecycle/i$a;->a:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/l;)V

    return-void
.end method

.method b()V
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/arch/lifecycle/i$a;->a:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/l;)V

    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 150
    iget v0, p0, Landroid/arch/lifecycle/i$a;->c:I

    iget-object v1, p0, Landroid/arch/lifecycle/i$a;->a:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_17

    .line 151
    iget-object v0, p0, Landroid/arch/lifecycle/i$a;->a:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/arch/lifecycle/i$a;->c:I

    .line 152
    iget-object v0, p0, Landroid/arch/lifecycle/i$a;->b:Landroid/arch/lifecycle/l;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/l;->onChanged(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method
