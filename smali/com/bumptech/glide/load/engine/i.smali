###### Class com.bumptech.glide.load.engine.i (com.bumptech.glide.load.engine.i)
.class public Lcom/bumptech/glide/load/engine/i;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/j$a;
.implements Lcom/bumptech/glide/load/engine/k;
.implements Lcom/bumptech/glide/load/engine/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/i$b;,
        Lcom/bumptech/glide/load/engine/i$a;,
        Lcom/bumptech/glide/load/engine/i$c;,
        Lcom/bumptech/glide/load/engine/i$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Engine"

.field private static final b:I = 0x96

.field private static final c:Z


# instance fields
.field private final d:Lcom/bumptech/glide/load/engine/p;

.field private final e:Lcom/bumptech/glide/load/engine/m;

.field private final f:Lcom/bumptech/glide/load/engine/a/j;

.field private final g:Lcom/bumptech/glide/load/engine/i$b;

.field private final h:Lcom/bumptech/glide/load/engine/v;

.field private final i:Lcom/bumptech/glide/load/engine/i$c;

.field private final j:Lcom/bumptech/glide/load/engine/i$a;

.field private final k:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/i;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/p;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/i$b;Lcom/bumptech/glide/load/engine/i$a;Lcom/bumptech/glide/load/engine/v;Z)V
    .registers 23
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    move-object v6, p0

    move-object v7, p1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v7, v6, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/engine/a/j;

    .line 85
    new-instance v0, Lcom/bumptech/glide/load/engine/i$c;

    move-object v1, p2

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/i$c;-><init>(Lcom/bumptech/glide/load/engine/a/a$a;)V

    iput-object v0, v6, Lcom/bumptech/glide/load/engine/i;->i:Lcom/bumptech/glide/load/engine/i$c;

    if-nez p9, :cond_19

    .line 88
    new-instance v0, Lcom/bumptech/glide/load/engine/a;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a;-><init>(Z)V

    goto :goto_1b

    :cond_19
    move-object/from16 v0, p9

    .line 90
    :goto_1b
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/a;

    .line 91
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/n$a;)V

    if-nez p8, :cond_28

    .line 94
    new-instance v0, Lcom/bumptech/glide/load/engine/m;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/m;-><init>()V

    goto :goto_2a

    :cond_28
    move-object/from16 v0, p8

    .line 96
    :goto_2a
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/m;

    if-nez p7, :cond_34

    .line 99
    new-instance v0, Lcom/bumptech/glide/load/engine/p;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/p;-><init>()V

    goto :goto_36

    :cond_34
    move-object/from16 v0, p7

    .line 101
    :goto_36
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/p;

    if-nez p10, :cond_46

    .line 104
    new-instance v8, Lcom/bumptech/glide/load/engine/i$b;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/i$b;-><init>(Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/k;)V

    goto :goto_48

    :cond_46
    move-object/from16 v8, p10

    .line 108
    :goto_48
    iput-object v8, v6, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/i$b;

    if-nez p11, :cond_54

    .line 111
    new-instance v0, Lcom/bumptech/glide/load/engine/i$a;

    iget-object v1, v6, Lcom/bumptech/glide/load/engine/i;->i:Lcom/bumptech/glide/load/engine/i$c;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/i$a;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;)V

    goto :goto_56

    :cond_54
    move-object/from16 v0, p11

    .line 113
    :goto_56
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/i;->j:Lcom/bumptech/glide/load/engine/i$a;

    if-nez p12, :cond_60

    .line 116
    new-instance v0, Lcom/bumptech/glide/load/engine/v;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/v;-><init>()V

    goto :goto_62

    :cond_60
    move-object/from16 v0, p12

    .line 118
    :goto_62
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/v;

    .line 120
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/a/j;->a(Lcom/bumptech/glide/load/engine/a/j$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Z)V
    .registers 22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 54
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/p;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/i$b;Lcom/bumptech/glide/load/engine/i$a;Lcom/bumptech/glide/load/engine/v;Z)V

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/engine/a/j;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/j;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_18

    .line 275
    :cond_a
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/n;

    if-eqz v0, :cond_11

    .line 277
    check-cast p1, Lcom/bumptech/glide/load/engine/n;

    goto :goto_18

    .line 279
    :cond_11
    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lcom/bumptech/glide/load/engine/n;-><init>(Lcom/bumptech/glide/load/engine/s;ZZ)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/n;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_4
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/a;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 250
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/n;->g()V

    :cond_f
    return-object p1
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V
    .registers 6

    const-string v0, "Engine"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/h/f;->a(J)D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 261
    :cond_4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 263
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/n;->g()V

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    :cond_12
    return-object p2
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZLcom/bumptech/glide/load/f;ZZZZLcom/bumptech/glide/request/h;)Lcom/bumptech/glide/load/engine/i$d;
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/i<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/f;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/i$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v3, p14

    move-object/from16 v7, p18

    .line 168
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 169
    sget-boolean v1, Lcom/bumptech/glide/load/engine/i;->c:Z

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/bumptech/glide/h/f;->a()J

    move-result-wide v1

    :goto_11
    move-wide v8, v1

    goto :goto_16

    :cond_13
    const-wide/16 v1, 0x0

    goto :goto_11

    .line 171
    :goto_16
    iget-object v10, v0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/m;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p10

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p13

    invoke-virtual/range {v10 .. v18}, Lcom/bumptech/glide/load/engine/m;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/l;

    move-result-object v10

    .line 174
    invoke-direct {v0, v10, v3}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/n;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 176
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v7, v1, v3}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/DataSource;)V

    .line 177
    sget-boolean v1, Lcom/bumptech/glide/load/engine/i;->c:Z

    if-eqz v1, :cond_41

    const-string v1, "Loaded resource from active resources"

    .line 178
    invoke-static {v1, v8, v9, v10}, Lcom/bumptech/glide/load/engine/i;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_41
    return-object v2

    .line 183
    :cond_42
    invoke-direct {v0, v10, v3}, Lcom/bumptech/glide/load/engine/i;->b(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/n;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 185
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v7, v1, v3}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/DataSource;)V

    .line 186
    sget-boolean v1, Lcom/bumptech/glide/load/engine/i;->c:Z

    if-eqz v1, :cond_56

    const-string v1, "Loaded resource from cache"

    .line 187
    invoke-static {v1, v8, v9, v10}, Lcom/bumptech/glide/load/engine/i;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_56
    return-object v2

    .line 192
    :cond_57
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/p;

    move/from16 v15, p17

    invoke-virtual {v1, v10, v15}, Lcom/bumptech/glide/load/engine/p;->a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/j;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 194
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/request/h;)V

    .line 195
    sget-boolean v2, Lcom/bumptech/glide/load/engine/i;->c:Z

    if-eqz v2, :cond_6d

    const-string v2, "Added to existing load"

    .line 196
    invoke-static {v2, v8, v9, v10}, Lcom/bumptech/glide/load/engine/i;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    .line 198
    :cond_6d
    new-instance v2, Lcom/bumptech/glide/load/engine/i$d;

    invoke-direct {v2, v7, v1}, Lcom/bumptech/glide/load/engine/i$d;-><init>(Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/engine/j;)V

    return-object v2

    .line 201
    :cond_73
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/i$b;

    move-object v2, v10

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    .line 202
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/i$b;->a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;

    move-result-object v1

    move-object/from16 v27, v1

    .line 209
    iget-object v11, v0, Lcom/bumptech/glide/load/engine/i;->j:Lcom/bumptech/glide/load/engine/i$a;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v10

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move/from16 v23, p11

    move/from16 v24, p12

    move/from16 v25, p17

    move-object/from16 v26, p13

    .line 210
    invoke-virtual/range {v11 .. v27}, Lcom/bumptech/glide/load/engine/i$a;->a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/DecodeJob$a;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v2

    .line 228
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v3, v10, v1}, Lcom/bumptech/glide/load/engine/p;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/j;)V

    .line 230
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/request/h;)V

    .line 231
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/j;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 233
    sget-boolean v2, Lcom/bumptech/glide/load/engine/i;->c:Z

    if-eqz v2, :cond_bb

    const-string v2, "Started new load"

    .line 234
    invoke-static {v2, v8, v9, v10}, Lcom/bumptech/glide/load/engine/i;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    .line 236
    :cond_bb
    new-instance v2, Lcom/bumptech/glide/load/engine/i$d;

    invoke-direct {v2, v7, v1}, Lcom/bumptech/glide/load/engine/i$d;-><init>(Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/engine/j;)V

    return-object v2
.end method

.method public a()V
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->i:Lcom/bumptech/glide/load/engine/i$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/i$c;->a()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/a;->a()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;)V"
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/c;)V

    .line 326
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/n;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->f:Lcom/bumptech/glide/load/engine/a/j;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a/j;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/s;

    goto :goto_19

    .line 329
    :cond_14
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/v;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/v;->a(Lcom/bumptech/glide/load/engine/s;)V

    :goto_19
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    .line 311
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/p;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/j;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;)V"
        }
    .end annotation

    .line 296
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    if-eqz p3, :cond_13

    .line 299
    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/engine/n;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n$a;)V

    .line 301
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/n;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    .line 306
    :cond_13
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/engine/p;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/j;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)V"
        }
    .end annotation

    .line 285
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 286
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/n;

    if-eqz v0, :cond_d

    .line 287
    check-cast p1, Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/n;->h()V

    return-void

    .line 289
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->g:Lcom/bumptech/glide/load/engine/i$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/i$b;->a()V

    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->i:Lcom/bumptech/glide/load/engine/i$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/i$c;->b()V

    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->k:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->b()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/s;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/engine/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)V"
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->h:Lcom/bumptech/glide/load/engine/v;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/v;->a(Lcom/bumptech/glide/load/engine/s;)V

    return-void
.end method

###### Class com.bumptech.glide.load.engine.i.a (com.bumptech.glide.load.engine.i$a)
.class Lcom/bumptech/glide/load/engine/i$a;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/DecodeJob$d;

.field final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;)V
    .registers 4

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Lcom/bumptech/glide/load/engine/i$a$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/i$a$1;-><init>(Lcom/bumptech/glide/load/engine/i$a;)V

    const/16 v1, 0x96

    .line 398
    invoke-static {v1, v0}, Lcom/bumptech/glide/h/a/a;->a(ILcom/bumptech/glide/h/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    .line 408
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$a;->a:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/DecodeJob$a;)Lcom/bumptech/glide/load/engine/DecodeJob;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/l;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/i<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$a<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 428
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object/from16 v19, v1

    .line 429
    iget v1, v0, Lcom/bumptech/glide/load/engine/i$a;->c:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/load/engine/i$a;->c:I

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v18}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/DecodeJob$a;I)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v1

    return-object v1
.end method

###### Class com.bumptech.glide.load.engine.i.a.AnonymousClass1 (com.bumptech.glide.load.engine.i$a$1)
.class Lcom/bumptech/glide/load/engine/i$a$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$a<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/i$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/i$a;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$a$1;->a:Lcom/bumptech/glide/load/engine/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/DecodeJob;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    .line 402
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i$a$1;->a:Lcom/bumptech/glide/load/engine/i$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/i$a;->a:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i$a$1;->a:Lcom/bumptech/glide/load/engine/i$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/i$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 399
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/i$a$1;->a()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.i.b (com.bumptech.glide.load.engine.i$b)
.class Lcom/bumptech/glide/load/engine/i$b;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/b/a;

.field final b:Lcom/bumptech/glide/load/engine/b/a;

.field final c:Lcom/bumptech/glide/load/engine/b/a;

.field final d:Lcom/bumptech/glide/load/engine/b/a;

.field final e:Lcom/bumptech/glide/load/engine/k;

.field final f:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/k;)V
    .registers 8

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Lcom/bumptech/glide/load/engine/i$b$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/i$b$1;-><init>(Lcom/bumptech/glide/load/engine/i$b;)V

    const/16 v1, 0x96

    .line 458
    invoke-static {v1, v0}, Lcom/bumptech/glide/h/a/a;->a(ILcom/bumptech/glide/h/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->f:Landroid/support/v4/util/Pools$Pool;

    .line 479
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$b;->a:Lcom/bumptech/glide/load/engine/b/a;

    .line 480
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i$b;->b:Lcom/bumptech/glide/load/engine/b/a;

    .line 481
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i$b;->c:Lcom/bumptech/glide/load/engine/b/a;

    .line 482
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/i$b;->d:Lcom/bumptech/glide/load/engine/b/a;

    .line 483
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/i$b;->e:Lcom/bumptech/glide/load/engine/k;

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 512
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 514
    :try_start_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 515
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 516
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_21

    .line 517
    :cond_19
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to shutdown"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception p0

    .line 521
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/j<",
            "TR;>;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->f:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/j;

    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/load/engine/j;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 502
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->a:Lcom/bumptech/glide/load/engine/b/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/i$b;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 489
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->b:Lcom/bumptech/glide/load/engine/b/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/i$b;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->c:Lcom/bumptech/glide/load/engine/b/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/i$b;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->d:Lcom/bumptech/glide/load/engine/b/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/i$b;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

###### Class com.bumptech.glide.load.engine.i.b.AnonymousClass1 (com.bumptech.glide.load.engine.i$b$1)
.class Lcom/bumptech/glide/load/engine/i$b$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$a<",
        "Lcom/bumptech/glide/load/engine/j<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/i$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/i$b;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/j;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;"
        }
    .end annotation

    .line 463
    new-instance v7, Lcom/bumptech/glide/load/engine/j;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/i$b;->a:Lcom/bumptech/glide/load/engine/b/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/i$b;->b:Lcom/bumptech/glide/load/engine/b/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/i$b;->c:Lcom/bumptech/glide/load/engine/b/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/i$b;->d:Lcom/bumptech/glide/load/engine/b/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    iget-object v5, v0, Lcom/bumptech/glide/load/engine/i$b;->e:Lcom/bumptech/glide/load/engine/k;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b$1;->a:Lcom/bumptech/glide/load/engine/i$b;

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/i$b;->f:Landroid/support/v4/util/Pools$Pool;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/j;-><init>(Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/k;Landroid/support/v4/util/Pools$Pool;)V

    return-object v7
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 460
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/i$b$1;->a()Lcom/bumptech/glide/load/engine/j;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.i.c (com.bumptech.glide.load.engine.i$c)
.class Lcom/bumptech/glide/load/engine/i$c;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/a$a;

.field private volatile b:Lcom/bumptech/glide/load/engine/a/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/a$a;)V
    .registers 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$c;->a:Lcom/bumptech/glide/load/engine/a/a$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/a/a;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    if-nez v0, :cond_21

    .line 381
    monitor-enter p0

    .line 382
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    if-nez v0, :cond_11

    .line 383
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->a:Lcom/bumptech/glide/load/engine/a/a$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/a$a;->a()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    .line 385
    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    if-nez v0, :cond_1c

    .line 386
    new-instance v0, Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    .line 388
    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    .line 390
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    return-object v0
.end method

.method declared-synchronized b()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 372
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    .line 373
    monitor-exit p0

    return-void

    .line 375
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$c;->b:Lcom/bumptech/glide/load/engine/a/a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/a;->a()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 376
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    .line 371
    monitor-exit p0

    throw v0
.end method

###### Class com.bumptech.glide.load.engine.i.d (com.bumptech.glide.load.engine.i$d)
.class public Lcom/bumptech/glide/load/engine/i$d;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/request/h;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/engine/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h;",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$d;->b:Lcom/bumptech/glide/request/h;

    .line 353
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i$d;->a:Lcom/bumptech/glide/load/engine/j;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$d;->a:Lcom/bumptech/glide/load/engine/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i$d;->b:Lcom/bumptech/glide/request/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/j;->b(Lcom/bumptech/glide/request/h;)V

    return-void
.end method
