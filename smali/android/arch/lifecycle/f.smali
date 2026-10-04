###### Class android.arch.lifecycle.f (android.arch.lifecycle.f)
.class public Landroid/arch/lifecycle/f;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LifecycleRegistry"


# instance fields
.field private b:Landroid/arch/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/a<",
            "Landroid/arch/lifecycle/d;",
            "Landroid/arch/lifecycle/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/arch/lifecycle/Lifecycle$State;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/e;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 59
    new-instance v0, Landroid/arch/a/b/a;

    invoke-direct {v0}, Landroid/arch/a/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroid/arch/lifecycle/f;->e:I

    .line 76
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->f:Z

    .line 77
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->g:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->d:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object p1, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method

.method static a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .registers 3
    .param p0    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_9

    .line 339
    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private a(Landroid/arch/lifecycle/e;)V
    .registers 7

    .line 284
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    .line 285
    invoke-virtual {v0}, Landroid/arch/a/b/a;->c()Landroid/arch/a/b/b$d;

    move-result-object v0

    .line 286
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->g:Z

    if-nez v1, :cond_48

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$a;

    .line 289
    :goto_1c
    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroid/arch/lifecycle/f;->g:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 292
    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/f;->e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/f$a;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 293
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->d()V

    goto :goto_1c

    :cond_48
    return-void
.end method

.method static b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .registers 4

    .line 235
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_22
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 243
    :pswitch_25
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 241
    :pswitch_28
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 238
    :pswitch_2b
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private b(Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_5

    return-void

    .line 130
    :cond_5
    iput-object p1, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    .line 131
    iget-boolean p1, p0, Landroid/arch/lifecycle/f;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget p1, p0, Landroid/arch/lifecycle/f;->e:I

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 136
    :cond_11
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->f:Z

    .line 137
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->e()V

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Landroid/arch/lifecycle/f;->f:Z

    return-void

    .line 132
    :cond_1a
    :goto_1a
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->g:Z

    return-void
.end method

.method private b(Landroid/arch/lifecycle/e;)V
    .registers 7

    .line 299
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    .line 300
    invoke-virtual {v0}, Landroid/arch/a/b/a;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->g:Z

    if-nez v1, :cond_4a

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$a;

    .line 304
    :goto_1c
    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroid/arch/lifecycle/f;->g:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    .line 305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 306
    iget-object v3, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/f;->d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 308
    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/f$a;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 309
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->d()V

    goto :goto_1c

    :cond_4a
    return-void
.end method

.method private c(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/Lifecycle$State;
    .registers 4

    .line 151
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 153
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/f$a;

    iget-object p1, p1, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_13

    :cond_12
    move-object p1, v0

    .line 154
    :goto_13
    iget-object v1, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v0, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$State;

    .line 156
    :cond_2b
    iget-object v1, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, p1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 3

    .line 198
    iget-object v0, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()Z
    .registers 4

    .line 142
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 145
    :cond_a
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/f$a;

    iget-object v0, v0, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 146
    iget-object v2, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v2}, Landroid/arch/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$a;

    iget-object v2, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_2d

    .line 147
    iget-object v0, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method private static d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .registers 4

    .line 253
    sget-object v0, Landroid/arch/lifecycle/f$1;->b:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 261
    :pswitch_28
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 259
    :pswitch_2b
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 257
    :pswitch_2e
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 255
    :pswitch_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method private d()V
    .registers 3

    .line 194
    iget-object v0, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private static e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .registers 4

    .line 269
    sget-object v0, Landroid/arch/lifecycle/f$1;->b:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 276
    :pswitch_28
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 274
    :pswitch_2b
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 272
    :pswitch_2e
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_22
        :pswitch_2e
    .end packed-switch
.end method

.method private e()V
    .registers 4

    .line 317
    iget-object v0, p0, Landroid/arch/lifecycle/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e;

    if-nez v0, :cond_12

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_12
    :goto_12
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_54

    .line 324
    iput-boolean v2, p0, Landroid/arch/lifecycle/f;->g:Z

    .line 326
    iget-object v1, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v2}, Landroid/arch/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$a;

    iget-object v2, v2, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_34

    .line 327
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/e;)V

    .line 329
    :cond_34
    iget-object v1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v1}, Landroid/arch/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 330
    iget-boolean v2, p0, Landroid/arch/lifecycle/f;->g:Z

    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    iget-object v2, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$a;

    iget-object v1, v1, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_12

    .line 332
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/e;)V

    goto :goto_12

    .line 335
    :cond_54
    iput-boolean v2, p0, Landroid/arch/lifecycle/f;->g:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/Lifecycle$State;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public a(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 2
    .param p1    # Landroid/arch/lifecycle/Lifecycle$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-static {p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public a(Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 2
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public a(Landroid/arch/lifecycle/d;)V
    .registers 8
    .param p1    # Landroid/arch/lifecycle/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 161
    iget-object v0, p0, Landroid/arch/lifecycle/f;->c:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_9

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    .line 162
    :goto_b
    new-instance v1, Landroid/arch/lifecycle/f$a;

    invoke-direct {v1, p1, v0}, Landroid/arch/lifecycle/f$a;-><init>(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 163
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1, v1}, Landroid/arch/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/f$a;

    if-eqz v0, :cond_1b

    return-void

    .line 168
    :cond_1b
    iget-object v0, p0, Landroid/arch/lifecycle/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e;

    if-nez v0, :cond_26

    return-void

    .line 174
    :cond_26
    iget v2, p0, Landroid/arch/lifecycle/f;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_32

    iget-boolean v2, p0, Landroid/arch/lifecycle/f;->f:Z

    if-eqz v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v2, 0x1

    .line 175
    :goto_33
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    .line 176
    iget v5, p0, Landroid/arch/lifecycle/f;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/arch/lifecycle/f;->e:I

    .line 177
    :goto_3c
    iget-object v5, v1, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_62

    iget-object v4, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    .line 178
    invoke-virtual {v4, p1}, Landroid/arch/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 179
    iget-object v4, v1, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 180
    iget-object v4, v1, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroid/arch/lifecycle/f;->e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/arch/lifecycle/f$a;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 181
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->d()V

    .line 183
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->c(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3c

    :cond_62
    if-nez v2, :cond_67

    .line 188
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->e()V

    .line 190
    :cond_67
    iget p1, p0, Landroid/arch/lifecycle/f;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/arch/lifecycle/f;->e:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->a()I

    move-result v0

    return v0
.end method

.method public b(Landroid/arch/lifecycle/d;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class android.arch.lifecycle.f.AnonymousClass1 (android.arch.lifecycle.f$1)
.class synthetic Landroid/arch/lifecycle/f$1;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 253
    invoke-static {}, Landroid/arch/lifecycle/Lifecycle$State;->values()[Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/arch/lifecycle/f$1;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroid/arch/lifecycle/f$1;->b:[I

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Landroid/arch/lifecycle/f$1;->b:[I

    sget-object v3, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Landroid/arch/lifecycle/f$1;->b:[I

    sget-object v4, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v4}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Landroid/arch/lifecycle/f$1;->b:[I

    sget-object v5, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Landroid/arch/lifecycle/f$1;->b:[I

    sget-object v6, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v6}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    .line 235
    :catch_40
    invoke-static {}, Landroid/arch/lifecycle/Lifecycle$Event;->values()[Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroid/arch/lifecycle/f$1;->a:[I

    :try_start_49
    sget-object v5, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v6, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v6}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v5, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v5}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_67} :catch_67

    :catch_67
    :try_start_67
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Landroid/arch/lifecycle/f$1;->a:[I

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_91} :catch_91

    :catch_91
    return-void
.end method

###### Class android.arch.lifecycle.f.a (android.arch.lifecycle.f$a)
.class Landroid/arch/lifecycle/f$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/Lifecycle$State;

.field b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/Lifecycle$State;)V
    .registers 3

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Landroid/arch/lifecycle/h;->a(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/f$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    .line 348
    iput-object p2, p0, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method


# virtual methods
.method a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 5

    .line 352
    invoke-static {p2}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 353
    iget-object v1, p0, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 354
    iget-object v1, p0, Landroid/arch/lifecycle/f$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 355
    iput-object v0, p0, Landroid/arch/lifecycle/f$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method
