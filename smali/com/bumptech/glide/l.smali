###### Class com.bumptech.glide.l (com.bumptech.glide.l)
.class public Lcom/bumptech/glide/l;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/j;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/j<",
        "Lcom/bumptech/glide/l<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/request/g;


# instance fields
.field protected b:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/m;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/request/g;

.field private final g:Lcom/bumptech/glide/f;

.field private final h:Lcom/bumptech/glide/h;

.field private i:Lcom/bumptech/glide/n;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private l:Lcom/bumptech/glide/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h;

    .line 52
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/m;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/bumptech/glide/l;->o:Z

    .line 81
    iput-object p1, p0, Lcom/bumptech/glide/l;->g:Lcom/bumptech/glide/f;

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/m;

    .line 83
    iput-object p3, p0, Lcom/bumptech/glide/l;->e:Ljava/lang/Class;

    .line 84
    invoke-virtual {p2}, Lcom/bumptech/glide/m;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/request/g;

    .line 85
    iput-object p4, p0, Lcom/bumptech/glide/l;->c:Landroid/content/Context;

    .line 86
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/m;->b(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;

    .line 87
    iget-object p2, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/request/g;

    iput-object p2, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    .line 88
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->f()Lcom/bumptech/glide/h;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/h;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/l<",
            "*>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p2, Lcom/bumptech/glide/l;->g:Lcom/bumptech/glide/f;

    iget-object v1, p2, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/m;

    iget-object v2, p2, Lcom/bumptech/glide/l;->c:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    .line 93
    iget-object p1, p2, Lcom/bumptech/glide/l;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/l;->j:Ljava/lang/Object;

    .line 94
    iget-boolean p1, p2, Lcom/bumptech/glide/l;->p:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/l;->p:Z

    .line 95
    iget-object p1, p2, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    iput-object p1, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method private a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .registers 4
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 862
    sget-object v0, Lcom/bumptech/glide/l$2;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_32

    .line 871
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/g;->P()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 869
    :pswitch_28
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 866
    :pswitch_2b
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 864
    :pswitch_2e
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/a/o;
    .registers 6
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g;",
            ")TY;"
        }
    .end annotation

    .line 618
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 619
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-boolean v0, p0, Lcom/bumptech/glide/l;->p:Z

    if-eqz v0, :cond_43

    .line 624
    invoke-virtual {p3}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object p3

    .line 625
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object p2

    .line 627
    invoke-interface {p1}, Lcom/bumptech/glide/request/a/o;->a()Lcom/bumptech/glide/request/c;

    move-result-object v0

    .line 628
    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 629
    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/c;)Z

    move-result p3

    if-nez p3, :cond_35

    .line 630
    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->h()V

    .line 635
    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/c;

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->c()Z

    move-result p2

    if-nez p2, :cond_34

    .line 639
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_34
    return-object p1

    .line 644
    :cond_35
    iget-object p3, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/m;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    .line 645
    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/a/o;->a(Lcom/bumptech/glide/request/c;)V

    .line 646
    iget-object p3, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/m;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/c;)V

    return-object p1

    .line 621
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;
    .registers 28
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 902
    iget-object v0, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    if-eqz v0, :cond_10

    .line 903
    new-instance v0, Lcom/bumptech/glide/request/a;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_15

    :cond_10
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 908
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-nez v15, :cond_2c

    return-object v0

    .line 922
    :cond_2c
    iget-object v1, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v1, v1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/g;->Q()I

    move-result v1

    .line 923
    iget-object v2, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v2, v2, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/g;->S()I

    move-result v2

    .line 924
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/h/l;->a(II)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v3, v3, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    .line 925
    invoke-virtual {v3}, Lcom/bumptech/glide/request/g;->R()Z

    move-result v3

    if-nez v3, :cond_54

    .line 926
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->Q()I

    move-result v1

    .line 927
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->S()I

    move-result v2

    :cond_54
    move/from16 v16, v1

    move/from16 v17, v2

    .line 930
    iget-object v10, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v1, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v14, v1, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;

    iget-object v1, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v1, v1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    .line 935
    invoke-virtual {v1}, Lcom/bumptech/glide/request/g;->P()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iget-object v2, v9, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    iget-object v2, v2, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v18, v2

    .line 930
    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    .line 939
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v3
.end method

.method private a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object v0, p0

    .line 1057
    iget-object v1, v0, Lcom/bumptech/glide/l;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/h;

    iget-object v3, v0, Lcom/bumptech/glide/l;->j:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/l;->e:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/l;->k:Ljava/util/List;

    iget-object v5, v0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/h;

    .line 1070
    invoke-virtual {v5}, Lcom/bumptech/glide/h;->c()Lcom/bumptech/glide/load/engine/i;

    move-result-object v13

    .line 1071
    invoke-virtual/range {p5 .. p5}, Lcom/bumptech/glide/n;->d()Lcom/bumptech/glide/request/b/g;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    .line 1057
    invoke-static/range {v1 .. v14}, Lcom/bumptech/glide/request/SingleRequest;->a(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/g;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Ljava/util/List;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/request/b/g;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 658
    invoke-virtual {p1}, Lcom/bumptech/glide/request/g;->M()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->d()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private b(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;
    .registers 28
    .param p3    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    .line 952
    iget-object v0, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    if-eqz v0, :cond_9e

    .line 954
    iget-boolean v0, v9, Lcom/bumptech/glide/l;->q:Z

    if-nez v0, :cond_96

    .line 959
    iget-object v0, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v0, v0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;

    .line 964
    iget-object v1, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-boolean v1, v1, Lcom/bumptech/glide/l;->o:Z

    if-eqz v1, :cond_1b

    move-object/from16 v14, p4

    goto :goto_1c

    :cond_1b
    move-object v14, v0

    .line 968
    :goto_1c
    iget-object v0, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v0, v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->O()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 969
    iget-object v0, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v0, v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->P()Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_2e
    move-object v15, v0

    goto :goto_35

    :cond_30
    invoke-direct {v9, v10}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_2e

    .line 971
    :goto_35
    iget-object v0, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v0, v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->Q()I

    move-result v0

    .line 972
    iget-object v1, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v1, v1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/g;->S()I

    move-result v1

    .line 973
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/h/l;->a(II)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v2, v2, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    .line 974
    invoke-virtual {v2}, Lcom/bumptech/glide/request/g;->R()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 975
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->Q()I

    move-result v0

    .line 976
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->S()I

    move-result v1

    :cond_5d
    move/from16 v16, v0

    move/from16 v17, v1

    .line 979
    new-instance v13, Lcom/bumptech/glide/request/i;

    invoke-direct {v13, v4}, Lcom/bumptech/glide/request/i;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 981
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 990
    iput-boolean v1, v9, Lcom/bumptech/glide/l;->q:Z

    .line 992
    iget-object v10, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v1, v9, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    iget-object v1, v1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v2, v13

    move-object/from16 v18, v1

    .line 993
    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    const/4 v3, 0x0

    .line 1002
    iput-boolean v3, v9, Lcom/bumptech/glide/l;->q:Z

    .line 1003
    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/request/i;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v2

    .line 955
    :cond_96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_9e
    iget-object v0, v9, Lcom/bumptech/glide/l;->n:Ljava/lang/Float;

    if-eqz v0, :cond_da

    .line 1007
    new-instance v11, Lcom/bumptech/glide/request/i;

    invoke-direct {v11, v4}, Lcom/bumptech/glide/request/i;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1009
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v12

    .line 1018
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    iget-object v1, v9, Lcom/bumptech/glide/l;->n:Ljava/lang/Float;

    .line 1019
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(F)Lcom/bumptech/glide/request/g;

    move-result-object v3

    .line 1028
    invoke-direct {v9, v10}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1022
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    .line 1032
    invoke-virtual {v11, v12, v0}, Lcom/bumptech/glide/request/i;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v11

    :cond_da
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1036
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;
    .registers 13
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    .line 879
    iget-object v4, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;

    .line 884
    invoke-virtual {p3}, Lcom/bumptech/glide/request/g;->P()Lcom/bumptech/glide/Priority;

    move-result-object v5

    .line 885
    invoke-virtual {p3}, Lcom/bumptech/glide/request/g;->Q()I

    move-result v6

    .line 886
    invoke-virtual {p3}, Lcom/bumptech/glide/request/g;->S()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    .line 879
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/n;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/l;->j:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lcom/bumptech/glide/l;->p:Z

    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 338
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/l;->n:Ljava/lang/Float;

    return-object p0

    .line 336
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/bumptech/glide/l;->m:Lcom/bumptech/glide/l;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/n;

    iput-object p1, p0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/bumptech/glide/l;->o:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/bumptech/glide/l;->k:Ljava/util/List;

    .line 161
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 5
    .param p1    # [Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 273
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_21

    .line 283
    :cond_7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    .line 284
    aget-object v2, p1, v1

    if-nez v2, :cond_11

    goto :goto_19

    :cond_11
    if-nez v0, :cond_15

    move-object v0, v2

    goto :goto_19

    .line 295
    :cond_15
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object v0

    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 298
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1

    .line 274
    :cond_21
    :goto_21
    check-cast v0, Lcom/bumptech/glide/l;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/a/o;)Lcom/bumptech/glide/request/a/o;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/a/o;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/a/o;
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)TY;"
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/a/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;
    .registers 5
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/a/q<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 674
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 675
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    .line 678
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->i()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 679
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->h()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 680
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 684
    sget-object v1, Lcom/bumptech/glide/l$2;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    goto :goto_4d

    .line 697
    :pswitch_2a
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->p()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_4d

    .line 694
    :pswitch_33
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_4d

    .line 689
    :pswitch_3c
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->p()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_4d

    .line 686
    :pswitch_45
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->l()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 706
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/h;

    iget-object v2, p0, Lcom/bumptech/glide/l;->e:Ljava/lang/Class;

    .line 707
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/a/q;

    move-result-object p1

    const/4 v1, 0x0

    .line 706
    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/a/o;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/a/q;

    return-object p1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2a
    .end packed-switch
.end method

.method public a(II)Lcom/bumptech/glide/request/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/l;->b(II)Lcom/bumptech/glide/request/b;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/l;->f:Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    if-ne v0, v1, :cond_d

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    :goto_f
    return-object v0
.end method

.method public synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Landroid/net/Uri;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/io/File;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/String;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/net/URL;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->b([B)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 586
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/l;

    .line 587
    iget-object v1, v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    .line 588
    iget-object v1, v0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;

    invoke-virtual {v1}, Lcom/bumptech/glide/n;->c()Lcom/bumptech/glide/n;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/l;->i:Lcom/bumptech/glide/n;
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    .line 591
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    .line 387
    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 413
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    .line 414
    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/net/Uri;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 465
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/bumptech/glide/l;->l:Lcom/bumptech/glide/l;

    return-object p0
.end method

.method public b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/l;->k:Ljava/util/List;

    if-nez v0, :cond_d

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/l;->k:Ljava/util/List;

    .line 179
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/l;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object p0
.end method

.method public b(Ljava/io/File;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 489
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 528
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/g/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/c;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/net/URL;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b([B)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    .line 560
    iget-object v0, p1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->y()Z

    move-result v0

    if-nez v0, :cond_16

    .line 561
    sget-object v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    .line 563
    :cond_16
    iget-object v0, p1, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->z()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 564
    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    :cond_27
    return-object p1
.end method

.method public b(Lcom/bumptech/glide/request/a/o;)Lcom/bumptech/glide/request/a/o;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/a/o<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->e()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;)Lcom/bumptech/glide/request/a/o;

    move-result-object p1

    return-object p1
.end method

.method public b(II)Lcom/bumptech/glide/request/b;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 763
    new-instance v0, Lcom/bumptech/glide/request/e;

    iget-object v1, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/h;

    .line 764
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/e;-><init>(Landroid/os/Handler;II)V

    .line 766
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 767
    iget-object p1, p0, Lcom/bumptech/glide/l;->h:Lcom/bumptech/glide/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/h;->b()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/l$1;

    invoke-direct {p2, p0, v0}, Lcom/bumptech/glide/l$1;-><init>(Lcom/bumptech/glide/l;Lcom/bumptech/glide/request/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 776
    :cond_20
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/a/o;

    :goto_23
    return-object v0
.end method

.method public c(II)Lcom/bumptech/glide/request/a/o;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/bumptech/glide/l;->d:Lcom/bumptech/glide/m;

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/request/a/l;->a(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/request/a/l;

    move-result-object p1

    .line 803
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;)Lcom/bumptech/glide/request/a/o;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/bumptech/glide/request/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 746
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/l;->b(II)Lcom/bumptech/glide/request/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->b()Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/request/a/o;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/o<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 817
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/l;->c(II)Lcom/bumptech/glide/request/a/o;

    move-result-object v0

    return-object v0
.end method

.method public d(II)Lcom/bumptech/glide/request/b;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/bumptech/glide/l;->e()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/l;->b(II)Lcom/bumptech/glide/request/b;

    move-result-object p1

    return-object p1
.end method

.method protected e()Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 857
    new-instance v0, Lcom/bumptech/glide/l;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/l;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/l;)V

    sget-object v1, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.l.AnonymousClass1 (com.bumptech.glide.l$1)
.class Lcom/bumptech/glide/l$1;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/l;->b(II)Lcom/bumptech/glide/request/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/e;

.field final synthetic b:Lcom/bumptech/glide/l;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/l;Lcom/bumptech/glide/request/e;)V
    .registers 3

    .line 767
    iput-object p1, p0, Lcom/bumptech/glide/l$1;->b:Lcom/bumptech/glide/l;

    iput-object p2, p0, Lcom/bumptech/glide/l$1;->a:Lcom/bumptech/glide/request/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/bumptech/glide/l$1;->a:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 771
    iget-object v0, p0, Lcom/bumptech/glide/l$1;->b:Lcom/bumptech/glide/l;

    iget-object v1, p0, Lcom/bumptech/glide/l$1;->a:Lcom/bumptech/glide/request/e;

    iget-object v2, p0, Lcom/bumptech/glide/l$1;->a:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/a/o;

    :cond_11
    return-void
.end method

###### Class com.bumptech.glide.l.AnonymousClass2 (com.bumptech.glide.l$2)
.class synthetic Lcom/bumptech/glide/l$2;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/l;
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
    .registers 6

    .line 862
    invoke-static {}, Lcom/bumptech/glide/Priority;->values()[Lcom/bumptech/glide/Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/l$2;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/bumptech/glide/l$2;->b:[I

    sget-object v2, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v2}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/bumptech/glide/l$2;->b:[I

    sget-object v3, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    invoke-virtual {v3}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/bumptech/glide/l$2;->b:[I

    sget-object v4, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    invoke-virtual {v4}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/bumptech/glide/l$2;->b:[I

    sget-object v5, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    invoke-virtual {v5}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    .line 684
    :catch_35
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/bumptech/glide/l$2;->a:[I

    :try_start_3e
    sget-object v4, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7c
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lcom/bumptech/glide/l$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_93

    :catch_93
    return-void
.end method
