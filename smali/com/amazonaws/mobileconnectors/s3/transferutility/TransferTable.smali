###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferTable (com.amazonaws.mobileconnectors.s3.transferutility.TransferTable)
.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;
.super Ljava/lang/Object;
.source "TransferTable.java"


# static fields
.field public static final A:Ljava/lang/String; = "header_content_encoding"

.field public static final B:Ljava/lang/String; = "header_cache_control"

.field public static final C:Ljava/lang/String; = "header_storage_class"

.field public static final D:Ljava/lang/String; = "expiration_time_rule_id"

.field public static final E:Ljava/lang/String; = "http_expires_date"

.field public static final F:Ljava/lang/String; = "sse_algorithm"

.field public static final G:Ljava/lang/String; = "content_md5"

.field public static final H:Ljava/lang/String; = "user_metadata"

.field public static final I:Ljava/lang/String; = "kms_key"

.field public static final J:Ljava/lang/String; = "canned_acl"

.field public static final K:Ljava/lang/String; = "transfer_utility_options"

.field private static final L:Ljava/lang/String; = "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

.field private static final M:I = 0x2

.field private static final N:I = 0x3

.field private static final O:I = 0x4

.field private static final P:I = 0x5

.field private static final Q:I = 0x6

.field public static final a:Ljava/lang/String; = "awstransfer"

.field public static final b:Ljava/lang/String; = "_id"

.field public static final c:Ljava/lang/String; = "main_upload_id"

.field public static final d:Ljava/lang/String; = "type"

.field public static final e:Ljava/lang/String; = "state"

.field public static final f:Ljava/lang/String; = "bucket_name"

.field public static final g:Ljava/lang/String; = "key"

.field public static final h:Ljava/lang/String; = "bytes_total"

.field public static final i:Ljava/lang/String; = "bytes_current"

.field public static final j:Ljava/lang/String; = "file"

.field public static final k:Ljava/lang/String; = "file_offset"

.field public static final l:Ljava/lang/String; = "is_multipart"

.field public static final m:Ljava/lang/String; = "is_last_part"

.field public static final n:Ljava/lang/String; = "part_num"

.field public static final o:Ljava/lang/String; = "multipart_id"

.field public static final p:Ljava/lang/String; = "etag"

.field public static final q:Ljava/lang/String; = "range_start"

.field public static final r:Ljava/lang/String; = "range_last"

.field public static final s:Ljava/lang/String; = "is_encrypted"

.field public static final t:Ljava/lang/String; = "speed"

.field public static final u:Ljava/lang/String; = "version_id"

.field public static final v:Ljava/lang/String; = "header_expire"

.field public static final w:Ljava/lang/String; = "is_requester_pays"

.field public static final x:Ljava/lang/String; = "header_content_type"

.field public static final y:Ljava/lang/String; = "header_content_language"

.field public static final z:Ljava/lang/String; = "header_content_disposition"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN user_metadata text;"

    .line 301
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN expiration_time_rule_id text;"

    .line 302
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN http_expires_date text;"

    .line 303
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN sse_algorithm text;"

    .line 304
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN content_md5 text;"

    .line 305
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 3

    const-string v0, "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

    .line 250
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 251
    invoke-static {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 v0, 0x2

    if-ge p1, v0, :cond_8

    if-lt p2, v0, :cond_8

    .line 271
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    const/4 v0, 0x3

    if-ge p1, v0, :cond_10

    if-lt p2, v0, :cond_10

    .line 274
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    const/4 v0, 0x4

    if-ge p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    .line 277
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_18
    const/4 v0, 0x5

    if-ge p1, v0, :cond_20

    if-lt p2, v0, :cond_20

    .line 280
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_20
    const/4 v0, 0x6

    if-ge p1, v0, :cond_28

    if-lt p2, v0, :cond_28

    .line 283
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_28
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN kms_key text;"

    .line 314
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN canned_acl text;"

    .line 323
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN header_storage_class text;"

    .line 332
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE awstransfer ADD COLUMN transfer_utility_options text;"

    .line 341
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
