package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
class TransferTable {
    public static final String A = "header_content_encoding";
    public static final String B = "header_cache_control";
    public static final String C = "header_storage_class";
    public static final String D = "expiration_time_rule_id";
    public static final String E = "http_expires_date";
    public static final String F = "sse_algorithm";
    public static final String G = "content_md5";
    public static final String H = "user_metadata";
    public static final String I = "kms_key";
    public static final String J = "canned_acl";
    public static final String K = "transfer_utility_options";
    private static final String L = "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);";
    private static final int M = 2;
    private static final int N = 3;
    private static final int O = 4;
    private static final int P = 5;
    private static final int Q = 6;
    public static final String a = "awstransfer";
    public static final String b = "_id";
    public static final String c = "main_upload_id";
    public static final String d = "type";
    public static final String e = "state";
    public static final String f = "bucket_name";
    public static final String g = "key";
    public static final String h = "bytes_total";
    public static final String i = "bytes_current";
    public static final String j = "file";
    public static final String k = "file_offset";
    public static final String l = "is_multipart";
    public static final String m = "is_last_part";
    public static final String n = "part_num";
    public static final String o = "multipart_id";
    public static final String p = "etag";
    public static final String q = "range_start";
    public static final String r = "range_last";
    public static final String s = "is_encrypted";
    public static final String t = "speed";
    public static final String u = "version_id";
    public static final String v = "header_expire";
    public static final String w = "is_requester_pays";
    public static final String x = "header_content_type";
    public static final String y = "header_content_language";
    public static final String z = "header_content_disposition";

    TransferTable() {
    }

    public static void a(SQLiteDatabase sQLiteDatabase, int i2) {
        sQLiteDatabase.execSQL(L);
        a(sQLiteDatabase, 1, i2);
    }

    public static void a(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 < 2 && i3 >= 2) {
            a(sQLiteDatabase);
        }
        if (i2 < 3 && i3 >= 3) {
            b(sQLiteDatabase);
        }
        if (i2 < 4 && i3 >= 4) {
            c(sQLiteDatabase);
        }
        if (i2 < 5 && i3 >= 5) {
            d(sQLiteDatabase);
        }
        if (i2 >= 6 || i3 < 6) {
            return;
        }
        e(sQLiteDatabase);
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN user_metadata text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN expiration_time_rule_id text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN http_expires_date text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN sse_algorithm text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN content_md5 text;");
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN kms_key text;");
    }

    private static void c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN canned_acl text;");
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN header_storage_class text;");
    }

    private static void e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN transfer_utility_options text;");
    }
}
