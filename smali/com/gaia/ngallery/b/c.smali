###### Class com.gaia.ngallery.b.c (com.gaia.ngallery.b.c)
.class public Lcom/gaia/ngallery/b/c;
.super Ljava/lang/Object;
.source "IndexedOrderedList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/b/c$b;,
        Lcom/gaia/ngallery/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_ITEM:",
        "Ljava/lang/Object;",
        "T_KEY:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT_ITEM;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "TT_ITEM;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT_KEY;TT_ITEM;>;"
        }
    .end annotation
.end field

.field private c:Lcom/gaia/ngallery/b/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/b/c$b<",
            "TT_ITEM;TT_KEY;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT_ITEM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/gaia/ngallery/b/c$b;Ljava/util/Comparator;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT_ITEM;>;",
            "Lcom/gaia/ngallery/b/c$b<",
            "TT_ITEM;TT_KEY;>;",
            "Ljava/util/Comparator<",
            "TT_ITEM;>;",
            "Ljava/lang/Class<",
            "TT_ITEM;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/b/c;->b:Ljava/util/Map;

    .line 24
    iput-object p3, p0, Lcom/gaia/ngallery/b/c;->d:Ljava/util/Comparator;

    .line 25
    iput-object p2, p0, Lcom/gaia/ngallery/b/c;->c:Lcom/gaia/ngallery/b/c$b;

    .line 26
    new-instance p2, Landroid/support/v7/util/SortedList;

    new-instance v0, Lcom/gaia/ngallery/b/c$1;

    invoke-direct {v0, p0, p3}, Lcom/gaia/ngallery/b/c$1;-><init>(Lcom/gaia/ngallery/b/c;Ljava/util/Comparator;)V

    invoke-direct {p2, p4, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p2, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {p3, p2}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 64
    invoke-direct {p0, p2}, Lcom/gaia/ngallery/b/c;->d(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_31
    return-void
.end method

.method static synthetic a(Lcom/gaia/ngallery/b/c;)Landroid/support/v7/util/SortedList;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    return-object p0
.end method

.method private d(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/gaia/ngallery/b/c;->c:Lcom/gaia/ngallery/b/c$b;

    invoke-interface {v1, p1}, Lcom/gaia/ngallery/b/c$b;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/gaia/ngallery/b/c;->c:Lcom/gaia/ngallery/b/c$b;

    invoke-interface {v1, p1}, Lcom/gaia/ngallery/b/c$b;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ITEM;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_KEY;)TT_ITEM;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT_ITEM;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 108
    :goto_6
    iget-object v2, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2}, Landroid/support/v7/util/SortedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 109
    iget-object v2, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public b()I
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->removeItemAt(I)Ljava/lang/Object;

    .line 91
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/b/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 85
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/b/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/gaia/ngallery/b/c;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/b/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT_ITEM;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/gaia/ngallery/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gaia/ngallery/b/c$a;-><init>(Lcom/gaia/ngallery/b/c;Lcom/gaia/ngallery/b/c$1;)V

    return-object v0
.end method

###### Class com.gaia.ngallery.b.c.AnonymousClass1 (com.gaia.ngallery.b.c$1)
.class Lcom/gaia/ngallery/b/c$1;
.super Landroid/support/v7/util/SortedList$Callback;
.source "IndexedOrderedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/b/c;-><init>(Ljava/util/List;Lcom/gaia/ngallery/b/c$b;Ljava/util/Comparator;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback<",
        "TT_ITEM;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Lcom/gaia/ngallery/b/c;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/b/c;Ljava/util/Comparator;)V
    .registers 3

    .line 26
    iput-object p1, p0, Lcom/gaia/ngallery/b/c$1;->b:Lcom/gaia/ngallery/b/c;

    iput-object p2, p0, Lcom/gaia/ngallery/b/c$1;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;TT_ITEM;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;TT_ITEM;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ITEM;TT_ITEM;)I"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/gaia/ngallery/b/c$1;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onChanged(II)V
    .registers 3

    return-void
.end method

.method public onInserted(II)V
    .registers 3

    return-void
.end method

.method public onMoved(II)V
    .registers 3

    return-void
.end method

.method public onRemoved(II)V
    .registers 3

    return-void
.end method

###### Class com.gaia.ngallery.b.c.a (com.gaia.ngallery.b.c$a)
.class Lcom/gaia/ngallery/b/c$a;
.super Ljava/lang/Object;
.source "IndexedOrderedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT_ITEM;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/b/c;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/gaia/ngallery/b/c;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/gaia/ngallery/b/c$a;->a:Lcom/gaia/ngallery/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/gaia/ngallery/b/c$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaia/ngallery/b/c;Lcom/gaia/ngallery/b/c$1;)V
    .registers 3

    .line 120
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/b/c$a;-><init>(Lcom/gaia/ngallery/b/c;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 126
    iget v0, p0, Lcom/gaia/ngallery/b/c$a;->b:I

    iget-object v1, p0, Lcom/gaia/ngallery/b/c$a;->a:Lcom/gaia/ngallery/b/c;

    invoke-static {v1}, Lcom/gaia/ngallery/b/c;->a(Lcom/gaia/ngallery/b/c;)Landroid/support/v7/util/SortedList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ITEM;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/gaia/ngallery/b/c$a;->a:Lcom/gaia/ngallery/b/c;

    invoke-static {v0}, Lcom/gaia/ngallery/b/c;->a(Lcom/gaia/ngallery/b/c;)Landroid/support/v7/util/SortedList;

    move-result-object v0

    iget v1, p0, Lcom/gaia/ngallery/b/c$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gaia/ngallery/b/c$a;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.b.c.b (com.gaia.ngallery.b.c$b)
.class public interface abstract Lcom/gaia/ngallery/b/c$b;
.super Ljava/lang/Object;
.source "IndexedOrderedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ITEM:",
        "Ljava/lang/Object;",
        "KEY:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TITEM;)TKEY;"
        }
    .end annotation
.end method
