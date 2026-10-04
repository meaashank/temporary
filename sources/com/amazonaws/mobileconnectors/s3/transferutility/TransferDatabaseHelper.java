package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes.dex */
class TransferDatabaseHelper extends SQLiteOpenHelper {
    private static final String a = "awss3transfertable.db";
    private static final int b = 6;
    private int c;

    public TransferDatabaseHelper(Context context) {
        this(context, 6);
    }

    public TransferDatabaseHelper(Context context, int i) {
        super(context, a, (SQLiteDatabase.CursorFactory) null, i);
        this.c = i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        TransferTable.a(sQLiteDatabase, this.c);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        TransferTable.a(sQLiteDatabase, i, i2);
    }
}
