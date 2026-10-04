###### Class com.gaia.ngallery.k.j (com.gaia.ngallery.k.j)
.class public Lcom/gaia/ngallery/k/j;
.super Ljava/lang/Object;
.source "HostMediaReader.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/gaia/ngallery/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/gaia/ngallery/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/gaia/ngallery/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 28
    const-class v0, Lcom/gaia/ngallery/k/j;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    const/16 v0, 0xb

    .line 52
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_data"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_display_name"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "title"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "bucket_id"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "bucket_display_name"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "mime_type"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "date_added"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "date_modified"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "latitude"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "longitude"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "_size"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sput-object v1, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/16 v1, 0xe

    .line 69
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    const-string v2, "_display_name"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    const-string v2, "bucket_id"

    aput-object v2, v1, v6

    const-string v2, "bucket_display_name"

    aput-object v2, v1, v7

    const-string v2, "mime_type"

    aput-object v2, v1, v8

    const-string v2, "date_added"

    aput-object v2, v1, v9

    const-string v2, "date_modified"

    aput-object v2, v1, v10

    const-string v2, "latitude"

    aput-object v2, v1, v11

    const-string v2, "longitude"

    aput-object v2, v1, v12

    const-string v2, "_size"

    aput-object v2, v1, v13

    const-string v2, "duration"

    aput-object v2, v1, v0

    const-string v0, "resolution"

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "_id"

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Lcom/gaia/ngallery/f/a;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gaia/ngallery/k/j;->d:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/gaia/ngallery/k/j;->e:Lcom/gaia/ngallery/f/a;

    .line 44
    iput-object p3, p0, Lcom/gaia/ngallery/k/j;->f:Lcom/gaia/ngallery/f/a;

    .line 45
    iput-object p4, p0, Lcom/gaia/ngallery/k/j;->g:Lcom/gaia/ngallery/f/a;

    .line 46
    iput-boolean p5, p0, Lcom/gaia/ngallery/k/j;->h:Z

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    sget-object v4, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    const-string v5, "scanImageFile start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, v0, Lcom/gaia/ngallery/k/j;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 94
    sget-object v4, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanImageFile  getCursor time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const-string v10, "date_added"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_197

    .line 102
    :cond_3e
    :goto_3e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 103
    sget-object v5, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "valtGallery"

    .line 104
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    const-string v7, "vGallery"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_62

    goto :goto_3e

    .line 107
    :cond_62
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_74

    goto :goto_3e

    .line 111
    :cond_74
    invoke-static {v5}, Lcom/gaia/ngallery/l/f;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    sget-object v8, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 113
    sget-object v9, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 114
    sget-object v10, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    sget-object v11, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v12, 0x5

    aget-object v11, v11, v12

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 116
    sget-object v12, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v13, 0x6

    aget-object v12, v12, v13

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 117
    sget-object v14, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/4 v15, 0x7

    aget-object v14, v14, v15

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 118
    sget-object v16, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/16 v17, 0x8

    aget-object v6, v16, v17

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 119
    sget-object v16, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/16 v17, 0x9

    move-wide/from16 v18, v2

    aget-object v2, v16, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 120
    sget-object v3, Lcom/gaia/ngallery/k/j;->a:[Ljava/lang/String;

    const/16 v16, 0xa

    aget-object v3, v3, v16

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 122
    new-instance v3, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {v3}, Lcom/gaia/ngallery/model/AlbumFile;-><init>()V

    move-object/from16 v20, v4

    const/4 v4, 0x1

    .line 123
    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    .line 124
    invoke-virtual {v3, v7}, Lcom/gaia/ngallery/model/AlbumFile;->setPath(Ljava/io/File;)V

    .line 125
    invoke-virtual {v3, v5}, Lcom/gaia/ngallery/model/AlbumFile;->setName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v8}, Lcom/gaia/ngallery/model/AlbumFile;->setTitle(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v9}, Lcom/gaia/ngallery/model/AlbumFile;->setBucketId(I)V

    .line 128
    invoke-virtual {v3, v10}, Lcom/gaia/ngallery/model/AlbumFile;->setBucketName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, v11}, Lcom/gaia/ngallery/model/AlbumFile;->setMimeType(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3, v12, v13}, Lcom/gaia/ngallery/model/AlbumFile;->setAddDate(J)V

    .line 131
    invoke-virtual {v3, v14, v15}, Lcom/gaia/ngallery/model/AlbumFile;->setModifyDate(J)V

    .line 132
    invoke-virtual {v3, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setLatitude(F)V

    .line 133
    invoke-virtual {v3, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setLongitude(F)V

    .line 134
    invoke-virtual {v3, v0, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setSize(J)V

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v3, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    move-wide v4, v0

    move-object/from16 v0, p0

    .line 138
    iget-object v1, v0, Lcom/gaia/ngallery/k/j;->e:Lcom/gaia/ngallery/f/a;

    if-eqz v1, :cond_144

    iget-object v1, v0, Lcom/gaia/ngallery/k/j;->e:Lcom/gaia/ngallery/f/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/gaia/ngallery/f/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 139
    iget-boolean v1, v0, Lcom/gaia/ngallery/k/j;->h:Z

    if-nez v1, :cond_141

    :goto_139
    move-wide/from16 v2, v18

    move-object/from16 v4, v20

    move-object/from16 v1, p1

    goto/16 :goto_3e

    .line 140
    :cond_141
    invoke-virtual {v3, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setEnable(Z)V

    .line 142
    :cond_144
    iget-object v1, v0, Lcom/gaia/ngallery/k/j;->f:Lcom/gaia/ngallery/f/a;

    if-eqz v1, :cond_159

    iget-object v1, v0, Lcom/gaia/ngallery/k/j;->f:Lcom/gaia/ngallery/f/a;

    invoke-interface {v1, v11}, Lcom/gaia/ngallery/f/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 143
    iget-boolean v1, v0, Lcom/gaia/ngallery/k/j;->h:Z

    if-nez v1, :cond_155

    goto :goto_139

    :cond_155
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v3, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setEnable(Z)V

    :cond_159
    move-object/from16 v1, p1

    .line 147
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/model/AlbumFolder;

    if-eqz v2, :cond_167

    .line 150
    invoke-virtual {v2, v3}, Lcom/gaia/ngallery/model/AlbumFolder;->addAlbumFile(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_189

    .line 152
    :cond_167
    new-instance v2, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v2}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v10}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2, v3}, Lcom/gaia/ngallery/model/AlbumFolder;->addAlbumFile(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 156
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_189
    move-wide/from16 v2, v18

    move-object/from16 v4, v20

    goto/16 :goto_3e

    :cond_18f
    move-wide/from16 v18, v2

    move-object/from16 v20, v4

    .line 159
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_199

    :cond_197
    move-wide/from16 v18, v2

    .line 162
    :goto_199
    sget-object v1, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanImageFile  iterate time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(I)V
    .registers 2

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .registers 26
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 193
    sget-object v4, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    const-string v5, "scanVideoFile start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, v0, Lcom/gaia/ngallery/k/j;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 195
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const-string v10, "date_added"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 200
    sget-object v5, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanVideoFile  getCursor time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_203

    .line 203
    :cond_3e
    :goto_3e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1fb

    .line 204
    sget-object v5, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_63

    goto :goto_3e

    .line 209
    :cond_63
    sget-object v5, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    sget-object v9, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 211
    sget-object v11, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 212
    sget-object v12, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 213
    sget-object v13, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v14, 0x5

    aget-object v13, v13, v14

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 214
    sget-object v14, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/4 v15, 0x6

    aget-object v14, v14, v15

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 215
    sget-object v16, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/16 v17, 0x7

    aget-object v8, v16, v17

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v18, v7

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 216
    sget-object v8, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/16 v16, 0x8

    aget-object v8, v8, v16

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    .line 217
    sget-object v16, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/16 v17, 0x9

    aget-object v10, v16, v17

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    .line 218
    sget-object v16, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/16 v17, 0xa

    move-wide/from16 v19, v2

    aget-object v2, v16, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 219
    sget-object v16, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/16 v17, 0xb

    aget-object v1, v16, v17

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 220
    sget-object v16, Lcom/gaia/ngallery/k/j;->b:[Ljava/lang/String;

    const/16 v17, 0xc

    move-wide/from16 v21, v0

    aget-object v0, v16, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {v1}, Lcom/gaia/ngallery/model/AlbumFile;-><init>()V

    move-object/from16 v23, v4

    const/4 v4, 0x2

    .line 225
    invoke-virtual {v1, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    move-object/from16 v4, v18

    .line 226
    invoke-virtual {v1, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setPath(Ljava/io/File;)V

    .line 227
    invoke-virtual {v1, v5}, Lcom/gaia/ngallery/model/AlbumFile;->setName(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v9}, Lcom/gaia/ngallery/model/AlbumFile;->setTitle(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v11}, Lcom/gaia/ngallery/model/AlbumFile;->setBucketId(I)V

    .line 230
    invoke-virtual {v1, v12}, Lcom/gaia/ngallery/model/AlbumFile;->setBucketName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v13}, Lcom/gaia/ngallery/model/AlbumFile;->setMimeType(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v14, v15}, Lcom/gaia/ngallery/model/AlbumFile;->setAddDate(J)V

    .line 233
    invoke-virtual {v1, v6, v7}, Lcom/gaia/ngallery/model/AlbumFile;->setModifyDate(J)V

    .line 234
    invoke-virtual {v1, v8}, Lcom/gaia/ngallery/model/AlbumFile;->setLatitude(F)V

    .line 235
    invoke-virtual {v1, v10}, Lcom/gaia/ngallery/model/AlbumFile;->setLongitude(F)V

    .line 236
    invoke-virtual {v1, v2, v3}, Lcom/gaia/ngallery/model/AlbumFile;->setSize(J)V

    move-wide/from16 v4, v21

    .line 237
    invoke-virtual {v1, v4, v5}, Lcom/gaia/ngallery/model/AlbumFile;->setDuration(J)V

    const/4 v6, 0x0

    .line 238
    invoke-virtual {v1, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16c

    const-string v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16c

    const-string v7, "x"

    .line 250
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    .line 252
    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16e

    :cond_16c
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 254
    :goto_16e
    invoke-virtual {v1, v6}, Lcom/gaia/ngallery/model/AlbumFile;->setWidth(I)V

    .line 255
    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/model/AlbumFile;->setHeight(I)V

    move-object/from16 v0, p0

    .line 258
    iget-object v6, v0, Lcom/gaia/ngallery/k/j;->e:Lcom/gaia/ngallery/f/a;

    if-eqz v6, :cond_196

    iget-object v6, v0, Lcom/gaia/ngallery/k/j;->e:Lcom/gaia/ngallery/f/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/gaia/ngallery/f/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 259
    iget-boolean v2, v0, Lcom/gaia/ngallery/k/j;->h:Z

    if-nez v2, :cond_192

    :goto_18a
    move-wide/from16 v2, v19

    move-object/from16 v4, v23

    move-object/from16 v1, p1

    goto/16 :goto_3e

    :cond_192
    const/4 v2, 0x0

    .line 260
    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setEnable(Z)V

    .line 262
    :cond_196
    iget-object v2, v0, Lcom/gaia/ngallery/k/j;->f:Lcom/gaia/ngallery/f/a;

    if-eqz v2, :cond_1ab

    iget-object v2, v0, Lcom/gaia/ngallery/k/j;->f:Lcom/gaia/ngallery/f/a;

    invoke-interface {v2, v13}, Lcom/gaia/ngallery/f/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 263
    iget-boolean v2, v0, Lcom/gaia/ngallery/k/j;->h:Z

    if-nez v2, :cond_1a7

    goto :goto_18a

    :cond_1a7
    const/4 v2, 0x0

    .line 264
    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setEnable(Z)V

    .line 266
    :cond_1ab
    iget-object v2, v0, Lcom/gaia/ngallery/k/j;->g:Lcom/gaia/ngallery/f/a;

    if-eqz v2, :cond_1c4

    iget-object v2, v0, Lcom/gaia/ngallery/k/j;->g:Lcom/gaia/ngallery/f/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gaia/ngallery/f/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 267
    iget-boolean v2, v0, Lcom/gaia/ngallery/k/j;->h:Z

    if-nez v2, :cond_1c0

    goto :goto_18a

    :cond_1c0
    const/4 v2, 0x0

    .line 268
    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setEnable(Z)V

    :cond_1c4
    move-object/from16 v2, p1

    .line 271
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/model/AlbumFolder;

    if-eqz v3, :cond_1d2

    .line 274
    invoke-virtual {v3, v1}, Lcom/gaia/ngallery/model/AlbumFolder;->addAlbumFile(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_1f4

    .line 276
    :cond_1d2
    new-instance v3, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v3}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3, v12}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3, v1}, Lcom/gaia/ngallery/model/AlbumFolder;->addAlbumFile(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 281
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f4
    move-object v1, v2

    move-wide/from16 v2, v19

    move-object/from16 v4, v23

    goto/16 :goto_3e

    :cond_1fb
    move-wide/from16 v19, v2

    move-object/from16 v23, v4

    .line 284
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_205

    :cond_203
    move-wide/from16 v19, v2

    .line 286
    :goto_205
    sget-object v1, Lcom/gaia/ngallery/k/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanVideoFile  iterate time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v19

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x2

    .line 172
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "video_id"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 175
    iget-object v0, p0, Lcom/gaia/ngallery/k/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "_data"

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    return-object p1
.end method

.method public a()Ljava/util/ArrayList;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    new-instance v1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    const/4 v2, 0x1

    .line 296
    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setChecked(Z)V

    .line 297
    iget-object v2, p0, Lcom/gaia/ngallery/k/j;->d:Landroid/content/Context;

    sget v3, Lcom/gaia/ngallery/i$n;->album_all_images:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/k/j;->a(Ljava/util/Map;)V

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 303
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 307
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 308
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_50
    return-object v2
.end method

.method public b()Ljava/util/ArrayList;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    new-instance v1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    const/4 v2, 0x1

    .line 320
    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setChecked(Z)V

    .line 321
    iget-object v2, p0, Lcom/gaia/ngallery/k/j;->d:Landroid/content/Context;

    sget v3, Lcom/gaia/ngallery/i$n;->album_all_videos:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/k/j;->b(Ljava/util/Map;)V

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 327
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 331
    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 332
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_50
    return-object v2
.end method

.method public c()Ljava/util/ArrayList;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/k/j;->a(Ljava/util/Map;)V

    .line 345
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/k/j;->b(Ljava/util/Map;)V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 350
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 352
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3e
    return-object v1
.end method
