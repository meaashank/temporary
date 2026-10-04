package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

/* JADX INFO: loaded from: classes.dex */
class TransferDBBase {
    private static final int b = 10;
    private static final int c = 20;
    private static final int d = 30;
    private static final int e = 40;
    private static final String f = "transfers";
    private final Context g;
    private final Uri h;
    private final UriMatcher i;
    private final TransferDatabaseHelper j;
    private SQLiteDatabase k;
    private static final Log a = LogFactory.a(TransferDBBase.class);
    private static final Object l = new Object();

    public TransferDBBase(Context context) {
        this.g = context;
        String packageName = context.getApplicationContext().getPackageName();
        this.j = new TransferDatabaseHelper(this.g);
        this.k = this.j.getWritableDatabase();
        this.h = Uri.parse("content://" + packageName + "/" + f);
        this.i = new UriMatcher(-1);
        this.i.addURI(packageName, f, 10);
        this.i.addURI(packageName, "transfers/#", 20);
        this.i.addURI(packageName, "transfers/part/#", 30);
        this.i.addURI(packageName, "transfers/state/*", 40);
    }

    TransferDatabaseHelper a() {
        return this.j;
    }

    public void b() {
        this.j.close();
    }

    public Uri c() {
        return this.h;
    }

    public Uri a(Uri uri, ContentValues contentValues) {
        int iMatch = this.i.match(uri);
        e();
        if (iMatch == 10) {
            return Uri.parse("transfers/" + this.k.insertOrThrow(TransferTable.a, null, contentValues));
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(TransferTable.a);
        int iMatch = this.i.match(uri);
        if (iMatch == 10) {
            sQLiteQueryBuilder.appendWhere("part_num=0");
        } else if (iMatch == 20) {
            sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
        } else if (iMatch == 30) {
            sQLiteQueryBuilder.appendWhere("main_upload_id=" + uri.getLastPathSegment());
        } else if (iMatch == 40) {
            sQLiteQueryBuilder.appendWhere("state=");
            sQLiteQueryBuilder.appendWhereEscapeString(uri.getLastPathSegment());
        } else {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        e();
        return sQLiteQueryBuilder.query(this.k, strArr, str, strArr2, null, null, str2);
    }

    public synchronized int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int iUpdate;
        int iMatch = this.i.match(uri);
        e();
        if (iMatch == 10) {
            iUpdate = this.k.update(TransferTable.a, contentValues, str, strArr);
        } else if (iMatch == 20) {
            String lastPathSegment = uri.getLastPathSegment();
            if (TextUtils.isEmpty(str)) {
                iUpdate = this.k.update(TransferTable.a, contentValues, "_id=" + lastPathSegment, null);
            } else {
                iUpdate = this.k.update(TransferTable.a, contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
            }
        } else {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return iUpdate;
    }

    public int a(Uri uri, String str, String[] strArr) {
        int iMatch = this.i.match(uri);
        e();
        if (iMatch == 10) {
            return this.k.delete(TransferTable.a, str, strArr);
        }
        if (iMatch == 20) {
            String lastPathSegment = uri.getLastPathSegment();
            if (TextUtils.isEmpty(str)) {
                return this.k.delete(TransferTable.a, "_id=" + lastPathSegment, null);
            }
            return this.k.delete(TransferTable.a, "_id=" + lastPathSegment + " and " + str, strArr);
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    public int a(Uri uri, ContentValues[] contentValuesArr) {
        int iMatch = this.i.match(uri);
        e();
        if (iMatch == 10) {
            int iInsertOrThrow = 0;
            try {
                try {
                    this.k.beginTransaction();
                    iInsertOrThrow = (int) this.k.insertOrThrow(TransferTable.a, null, contentValuesArr[0]);
                    for (int i = 1; i < contentValuesArr.length; i++) {
                        contentValuesArr[i].put(TransferTable.c, Integer.valueOf(iInsertOrThrow));
                        this.k.insertOrThrow(TransferTable.a, null, contentValuesArr[i]);
                    }
                    this.k.setTransactionSuccessful();
                } catch (Exception e2) {
                    a.e("bulkInsert error : ", e2);
                }
                return iInsertOrThrow;
            } finally {
                this.k.endTransaction();
            }
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    private void e() {
        synchronized (l) {
            if (!this.k.isOpen()) {
                this.k = this.j.getWritableDatabase();
            }
        }
    }

    SQLiteDatabase d() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (l) {
            sQLiteDatabase = this.k;
        }
        return sQLiteDatabase;
    }
}
