###### Class com.gaia.ngallery.k.i (com.gaia.ngallery.k.i)
.class public Lcom/gaia/ngallery/k/i;
.super Landroid/os/AsyncTask;
.source "HostMediaReadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/ArrayList<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/gaia/ngallery/model/AlbumFolder;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/gaia/ngallery/k/i$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/gaia/ngallery/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/gaia/ngallery/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/gaia/ngallery/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/gaia/ngallery/k/i;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/gaia/ngallery/k/i$a;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 83
    invoke-direct/range {v0 .. v8}, Lcom/gaia/ngallery/k/i;-><init>(Landroid/content/Context;ILcom/gaia/ngallery/k/i$a;Ljava/util/List;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/gaia/ngallery/k/i$a;Ljava/util/List;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/gaia/ngallery/k/i$a;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/gaia/ngallery/k/i;->b:Landroid/content/Context;

    .line 70
    iput p2, p0, Lcom/gaia/ngallery/k/i;->c:I

    .line 71
    iput-object p3, p0, Lcom/gaia/ngallery/k/i;->d:Lcom/gaia/ngallery/k/i$a;

    .line 72
    iput-object p4, p0, Lcom/gaia/ngallery/k/i;->e:Ljava/util/List;

    .line 74
    iput-object p5, p0, Lcom/gaia/ngallery/k/i;->f:Lcom/gaia/ngallery/f/a;

    .line 75
    iput-object p6, p0, Lcom/gaia/ngallery/k/i;->g:Lcom/gaia/ngallery/f/a;

    .line 76
    iput-object p7, p0, Lcom/gaia/ngallery/k/i;->h:Lcom/gaia/ngallery/f/a;

    .line 77
    iput-boolean p8, p0, Lcom/gaia/ngallery/k/i;->i:Z

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    sget-object v2, Lcom/gaia/ngallery/k/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/gaia/ngallery/k/i;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v2, Lcom/gaia/ngallery/k/j;

    iget-object v5, p0, Lcom/gaia/ngallery/k/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/gaia/ngallery/k/i;->f:Lcom/gaia/ngallery/f/a;

    iget-object v7, p0, Lcom/gaia/ngallery/k/i;->g:Lcom/gaia/ngallery/f/a;

    iget-object v8, p0, Lcom/gaia/ngallery/k/i;->h:Lcom/gaia/ngallery/f/a;

    iget-boolean v9, p0, Lcom/gaia/ngallery/k/i;->i:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/gaia/ngallery/k/j;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Z)V

    .line 108
    sget-object v3, Lcom/gaia/ngallery/k/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v3, p0, Lcom/gaia/ngallery/k/i;->c:I

    packed-switch v3, :pswitch_data_ba

    .line 120
    invoke-virtual {v2}, Lcom/gaia/ngallery/k/j;->c()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_5a

    .line 115
    :pswitch_51
    invoke-virtual {v2}, Lcom/gaia/ngallery/k/j;->b()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_5a

    .line 111
    :pswitch_56
    invoke-virtual {v2}, Lcom/gaia/ngallery/k/j;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    :goto_5a
    sget-object v3, Lcom/gaia/ngallery/k/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 126
    aget-object p1, p1, v0

    if-eqz p1, :cond_b9

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b9

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/model/AlbumFile;

    const/4 v4, 0x0

    .line 130
    :goto_9b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8e

    .line 131
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaia/ngallery/model/AlbumFile;

    .line 132
    invoke-virtual {v3, v5}, Lcom/gaia/ngallery/model/AlbumFile;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    const/4 v6, 0x1

    .line 133
    invoke-virtual {v5, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setChecked(Z)V

    .line 134
    iget-object v6, p0, Lcom/gaia/ngallery/k/i;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    :cond_b9
    return-object v2

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_56
        :pswitch_51
    .end packed-switch
.end method

.method protected a(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/gaia/ngallery/k/i;->d:Lcom/gaia/ngallery/k/i$a;

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/k/i$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 35
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/i;->a([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/i;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

###### Class com.gaia.ngallery.k.i.a (com.gaia.ngallery.k.i$a)
.class public interface abstract Lcom/gaia/ngallery/k/i$a;
.super Ljava/lang/Object;
.source "HostMediaReadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation
.end method
