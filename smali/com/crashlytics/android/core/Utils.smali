###### Class com.crashlytics.android.core.Utils (com.crashlytics.android.core.Utils)
.class final Lcom/crashlytics/android/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final ALL_FILES_FILTER:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/crashlytics/android/core/Utils$1;

    invoke-direct {v0}, Lcom/crashlytics/android/core/Utils$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/Utils;->ALL_FILES_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static capFileCount(Ljava/io/File;ILjava/util/Comparator;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/crashlytics/android/core/Utils;->ALL_FILES_FILTER:Ljava/io/FilenameFilter;

    invoke-static {p0, v0, p1, p2}, Lcom/crashlytics/android/core/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method static capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "I",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 40
    :cond_8
    array-length v0, p0

    .line 43
    invoke-static {p0, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 45
    array-length p3, p0

    :goto_d
    if-ge p1, p3, :cond_1c

    aget-object v1, p0, p1

    if-gt v0, p2, :cond_14

    return v0

    .line 50
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return v0
.end method

###### Class com.crashlytics.android.core.Utils.AnonymousClass1 (com.crashlytics.android.core.Utils$1)
.class final Lcom/crashlytics/android/core/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
