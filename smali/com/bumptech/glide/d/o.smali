###### Class com.bumptech.glide.d.o (com.bumptech.glide.d.o)
.class public Lcom/bumptech/glide/d/o;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SupportRMFragment"


# instance fields
.field private final b:Lcom/bumptech/glide/d/a;

.field private final c:Lcom/bumptech/glide/d/m;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/d/o;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/d/o;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/bumptech/glide/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/o;-><init>(Lcom/bumptech/glide/d/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/d/a;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/d/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/d/o$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/o$a;-><init>(Lcom/bumptech/glide/d/o;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/o;->c:Lcom/bumptech/glide/d/m;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/o;->d:Ljava/util/Set;

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/d/o;->b:Lcom/bumptech/glide/d/a;

    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    invoke-direct {p0}, Lcom/bumptech/glide/d/o;->f()V

    .line 146
    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->i()Lcom/bumptech/glide/d/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/l;->b(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/d/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    .line 147
    iget-object p1, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/d/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 148
    iget-object p1, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/d/o;->a(Lcom/bumptech/glide/d/o;)V

    :cond_1e
    return-void
.end method

.method private a(Lcom/bumptech/glide/d/o;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/bumptech/glide/d/o;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;)Z
    .registers 4
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0}, Lcom/bumptech/glide/d/o;->e()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 134
    :goto_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 135
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_12
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_4

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private e()Landroid/support/v4/app/Fragment;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/bumptech/glide/d/o;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_9

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->g:Landroid/support/v4/app/Fragment;

    :goto_9
    return-object v0
.end method

.method private f()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/o;->b(Lcom/bumptech/glide/d/o;)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    :cond_c
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/d/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->b:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method a(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/d/o;->g:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_11

    .line 117
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 118
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/o;->a(Landroid/support/v4/app/FragmentActivity;)V

    :cond_11
    return-void
.end method

.method public a(Lcom/bumptech/glide/m;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/m;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    iput-object p1, p0, Lcom/bumptech/glide/d/o;->f:Lcom/bumptech/glide/m;

    return-void
.end method

.method public b()Lcom/bumptech/glide/m;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->f:Lcom/bumptech/glide/m;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/d/m;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->c:Lcom/bumptech/glide/d/m;

    return-object v0
.end method

.method d()Ljava/util/Set;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/d/o;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    if-nez v0, :cond_9

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/d/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->d:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 100
    :cond_18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/bumptech/glide/d/o;->e:Lcom/bumptech/glide/d/o;

    .line 102
    invoke-virtual {v1}, Lcom/bumptech/glide/d/o;->d()Ljava/util/Set;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/d/o;

    .line 103
    invoke-direct {v2}, Lcom/bumptech/glide/d/o;->e()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/d/o;->b(Landroid/support/v4/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 104
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 107
    :cond_41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 163
    :try_start_3
    invoke-virtual {p0}, Lcom/bumptech/glide/d/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/d/o;->a(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_1c

    :catch_b
    move-exception p1

    const-string v0, "SupportRMFragment"

    const/4 v1, 0x5

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "SupportRMFragment"

    const-string v1, "Unable to register fragment with root"

    .line 167
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->c()V

    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/d/o;->f()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/bumptech/glide/d/o;->g:Landroid/support/v4/app/Fragment;

    .line 176
    invoke-direct {p0}, Lcom/bumptech/glide/d/o;->f()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 181
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->a()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 187
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/d/o;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/d/o;->e()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.d.o.a (com.bumptech.glide.d.o$a)
.class Lcom/bumptech/glide/d/o$a;
.super Ljava/lang/Object;
.source "SupportRequestManagerFragment.java"

# interfaces
.implements Lcom/bumptech/glide/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/o;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/d/o;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/bumptech/glide/d/o$a;->a:Lcom/bumptech/glide/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/m;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/bumptech/glide/d/o$a;->a:Lcom/bumptech/glide/d/o;

    .line 212
    invoke-virtual {v0}, Lcom/bumptech/glide/d/o;->d()Ljava/util/Set;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 214
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/d/o;

    .line 215
    invoke-virtual {v2}, Lcom/bumptech/glide/d/o;->b()Lcom/bumptech/glide/m;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 216
    invoke-virtual {v2}, Lcom/bumptech/glide/d/o;->b()Lcom/bumptech/glide/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/d/o$a;->a:Lcom/bumptech/glide/d/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
