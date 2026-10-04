###### Class com.a.a.f (com.a.a.f)
.class public Lcom/a/a/f;
.super Ljava/lang/Object;
.source "TapTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/a/a/f$a;

.field b:Z

.field c:Z

.field private final d:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Landroid/app/Dialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/a/a/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/a/a/g$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/a/a/f$1;

    invoke-direct {v0, p0}, Lcom/a/a/f$1;-><init>(Lcom/a/a/f;)V

    iput-object v0, p0, Lcom/a/a/f;->i:Lcom/a/a/g$a;

    if-eqz p1, :cond_19

    .line 70
    iput-object p1, p0, Lcom/a/a/f;->d:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/a/a/f;->e:Landroid/app/Dialog;

    .line 72
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    return-void

    .line 69
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/a/a/f$1;

    invoke-direct {v0, p0}, Lcom/a/a/f$1;-><init>(Lcom/a/a/f;)V

    iput-object v0, p0, Lcom/a/a/f;->i:Lcom/a/a/g$a;

    if-eqz p1, :cond_19

    .line 77
    iput-object p1, p0, Lcom/a/a/f;->e:Landroid/app/Dialog;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/a/a/f;->d:Landroid/app/Activity;

    .line 79
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    return-void

    .line 76
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given null Dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/a/a/e;)Lcom/a/a/f;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/a/a/f$a;)Lcom/a/a/f;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/a/a/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/a/a/e;",
            ">;)",
            "Lcom/a/a/f;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Z)Lcom/a/a/f;
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/a/a/f;->c:Z

    return-object p0
.end method

.method public varargs a([Lcom/a/a/e;)Lcom/a/a/f;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()V
    .registers 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/a/a/f;->g:Z

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/a/a/f;->g:Z

    .line 126
    invoke-virtual {p0}, Lcom/a/a/f;->c()V

    return-void

    :cond_14
    :goto_14
    return-void
.end method

.method public a(I)V
    .registers 5

    .line 131
    iget-boolean v0, p0, Lcom/a/a/f;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 135
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->a()I

    move-result v0

    if-eq v0, p1, :cond_21

    .line 136
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_5

    .line 139
    :cond_21
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    if-eqz v0, :cond_35

    .line 140
    invoke-virtual {v0}, Lcom/a/a/e;->a()I

    move-result v0

    if-ne v0, p1, :cond_35

    .line 144
    invoke-virtual {p0}, Lcom/a/a/f;->a()V

    return-void

    .line 141
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in sequence"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Z)Lcom/a/a/f;
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/a/a/f;->b:Z

    return-object p0
.end method

.method public b(I)V
    .registers 5

    .line 149
    iget-boolean v0, p0, Lcom/a/a/f;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_54

    .line 153
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ge p1, v0, :cond_54

    .line 157
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 158
    :goto_16
    iget-object v1, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-eq v1, v0, :cond_2c

    .line 159
    iget-object v1, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_16

    .line 162
    :cond_2c
    iget-object v1, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v1, v0, :cond_38

    .line 166
    invoke-virtual {p0}, Lcom/a/a/f;->a()V

    return-void

    .line 163
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in sequence"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .registers 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/a/a/f;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/a/a/f;->h:Lcom/a/a/g;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/a/a/f;->h:Lcom/a/a/g;

    iget-boolean v0, v0, Lcom/a/a/g;->D:Z

    if-nez v0, :cond_10

    goto :goto_2b

    .line 180
    :cond_10
    iget-object v0, p0, Lcom/a/a/f;->h:Lcom/a/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/g;->b(Z)V

    .line 181
    iput-boolean v1, p0, Lcom/a/a/f;->g:Z

    .line 182
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 183
    iget-object v0, p0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    if-eqz v0, :cond_29

    .line 184
    iget-object v0, p0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    iget-object v1, p0, Lcom/a/a/f;->h:Lcom/a/a/g;

    iget-object v1, v1, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-interface {v0, v1}, Lcom/a/a/f$a;->a(Lcom/a/a/e;)V

    :cond_29
    const/4 v0, 0x1

    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method c()V
    .registers 4

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    .line 192
    iget-object v1, p0, Lcom/a/a/f;->d:Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 193
    iget-object v1, p0, Lcom/a/a/f;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/a/a/f;->i:Lcom/a/a/g$a;

    invoke-static {v1, v0, v2}, Lcom/a/a/g;->a(Landroid/app/Activity;Lcom/a/a/e;Lcom/a/a/g$a;)Lcom/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/f;->h:Lcom/a/a/g;

    goto :goto_2f

    .line 195
    :cond_17
    iget-object v1, p0, Lcom/a/a/f;->e:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/a/a/f;->i:Lcom/a/a/g$a;

    invoke-static {v1, v0, v2}, Lcom/a/a/g;->a(Landroid/app/Dialog;Lcom/a/a/e;Lcom/a/a/g$a;)Lcom/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/f;->h:Lcom/a/a/g;
    :try_end_21
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2f

    :catch_22
    nop

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/a/a/f;->h:Lcom/a/a/g;

    .line 200
    iget-object v0, p0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    if-eqz v0, :cond_2f

    .line 201
    iget-object v0, p0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    invoke-interface {v0}, Lcom/a/a/f$a;->a()V

    :cond_2f
    :goto_2f
    return-void
.end method

###### Class com.a.a.f.AnonymousClass1 (com.a.a.f$1)
.class Lcom/a/a/f$1;
.super Lcom/a/a/g$a;
.source "TapTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;


# direct methods
.method constructor <init>(Lcom/a/a/f;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    invoke-direct {p0}, Lcom/a/a/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/g;)V
    .registers 4

    .line 209
    invoke-super {p0, p1}, Lcom/a/a/g$a;->a(Lcom/a/a/g;)V

    .line 210
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-object v0, v0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    if-eqz v0, :cond_13

    .line 211
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-object v0, v0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    iget-object p1, p1, Lcom/a/a/g;->n:Lcom/a/a/e;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/a/a/f$a;->a(Lcom/a/a/e;Z)V

    .line 213
    :cond_13
    iget-object p1, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/f;->c()V

    return-void
.end method

.method public b(Lcom/a/a/g;)V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-boolean v0, v0, Lcom/a/a/f;->b:Z

    if-eqz v0, :cond_9

    .line 219
    invoke-virtual {p0, p1}, Lcom/a/a/f$1;->c(Lcom/a/a/g;)V

    :cond_9
    return-void
.end method

.method public c(Lcom/a/a/g;)V
    .registers 4

    .line 225
    invoke-super {p0, p1}, Lcom/a/a/g$a;->c(Lcom/a/a/g;)V

    .line 226
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-boolean v0, v0, Lcom/a/a/f;->c:Z

    if-eqz v0, :cond_1f

    .line 227
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-object v0, v0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    if-eqz v0, :cond_19

    .line 228
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-object v0, v0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    iget-object p1, p1, Lcom/a/a/g;->n:Lcom/a/a/e;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/a/a/f$a;->a(Lcom/a/a/e;Z)V

    .line 230
    :cond_19
    iget-object p1, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/f;->c()V

    goto :goto_2e

    .line 232
    :cond_1f
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-object v0, v0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    if-eqz v0, :cond_2e

    .line 233
    iget-object v0, p0, Lcom/a/a/f$1;->a:Lcom/a/a/f;

    iget-object v0, v0, Lcom/a/a/f;->a:Lcom/a/a/f$a;

    iget-object p1, p1, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-interface {v0, p1}, Lcom/a/a/f$a;->a(Lcom/a/a/e;)V

    :cond_2e
    :goto_2e
    return-void
.end method

###### Class com.a.a.f.a (com.a.a.f$a)
.class public interface abstract Lcom/a/a/f$a;
.super Ljava/lang/Object;
.source "TapTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/a/a/e;)V
.end method

.method public abstract a(Lcom/a/a/e;Z)V
.end method
