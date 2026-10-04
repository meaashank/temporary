###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferDBBase (com.amazonaws.mobileconnectors.s3.transferutility.TransferDBBase)
.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;
.super Ljava/lang/Object;
.source "TransferDBBase.java"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:I = 0xa

.field private static final c:I = 0x14

.field private static final d:I = 0x1e

.field private static final e:I = 0x28

.field private static final f:Ljava/lang/String; = "transfers"

.field private static final l:Ljava/lang/Object;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Landroid/net/Uri;

.field private final i:Landroid/content/UriMatcher;

.field private final j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

.field private k:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a:Lcom/amazonaws/logging/Log;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->g:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

    .line 58
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "transfers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->h:Landroid/net/Uri;

    .line 60
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    .line 65
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    const-string v1, "transfers"

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    const-string v1, "transfers/#"

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    const-string v1, "transfers/part/#"

    const/16 v2, 0x1e

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    const-string v1, "transfers/state/*"

    const/16 v2, 0x28

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private e()V
    .registers 3

    .line 274
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_13

    .line 276
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 278
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 183
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->e()V

    const/16 v1, 0xa

    if-eq v0, v1, :cond_70

    const/16 v1, 0x14

    if-ne v0, v1, :cond_59

    .line 190
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 192
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "awstransfer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_78

    .line 195
    :cond_37
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "awstransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v0, v1, p2, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_78

    .line 201
    :cond_59
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 186
    :cond_70
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "awstransfer"

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_7a

    .line 203
    :goto_78
    monitor-exit p0

    return p1

    :catchall_7a
    move-exception p1

    .line 180
    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 215
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 217
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->e()V

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x14

    if-ne v0, v1, :cond_58

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 226
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "awstransfer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_77

    .line 229
    :cond_36
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "awstransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {v0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_77

    .line 235
    :cond_58
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 220
    :cond_6f
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "awstransfer"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_77
    return p1
.end method

.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 8

    .line 246
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 248
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->e()V

    const/16 v1, 0xa

    if-ne v0, v1, :cond_56

    const/4 p1, 0x0

    .line 252
    :try_start_e
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 253
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "awstransfer"

    aget-object v2, p2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x1

    .line 255
    :goto_20
    array-length v1, p2

    if-ge v0, v1, :cond_3a

    .line 256
    aget-object v1, p2, v0

    const-string v2, "main_upload_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "awstransfer"

    aget-object v4, p2, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 259
    :cond_3a
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3f} :catch_42
    .catchall {:try_start_e .. :try_end_3f} :catchall_40

    goto :goto_4a

    :catchall_40
    move-exception p1

    goto :goto_50

    :catch_42
    move-exception p2

    .line 261
    :try_start_43
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->a:Lcom/amazonaws/logging/Log;

    const-string v1, "bulkInsert error : "

    invoke-interface {v0, v1, p2}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    .line 263
    :goto_4a
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :goto_50
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    throw p1

    .line 267
    :cond_56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .line 139
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "awstransfer"

    .line 143
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_76

    const/16 v2, 0x14

    if-eq v1, v2, :cond_5d

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_44

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2d

    const-string v1, "state="

    .line 157
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    goto :goto_7b

    .line 161
    :cond_2d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 153
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main_upload_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_7b

    .line 150
    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_7b

    :cond_76
    const-string p1, "part_num=0"

    .line 147
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 163
    :goto_7b
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->e()V

    .line 164
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->i:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 114
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->e()V

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2c

    .line 118
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "awstransfer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transfers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 121
    :cond_2c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

    return-object v0
.end method

.method public b()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->close()V

    return-void
.end method

.method public c()Landroid/net/Uri;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->h:Landroid/net/Uri;

    return-object v0
.end method

.method d()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 282
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->k:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 284
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
