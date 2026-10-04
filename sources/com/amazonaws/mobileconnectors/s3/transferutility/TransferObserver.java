package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.Cursor;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class TransferObserver {
    private final int a;
    private final TransferDBUtil b;
    private String c;
    private String d;
    private long e;
    private long f;
    private TransferState g;
    private String h;
    private TransferListener i;
    private TransferStatusListener j;

    TransferObserver(int i, TransferDBUtil transferDBUtil, String str, String str2, File file) {
        this.a = i;
        this.b = transferDBUtil;
        this.c = str;
        this.d = str2;
        this.h = file.getAbsolutePath();
        this.e = file.length();
        this.g = TransferState.WAITING;
    }

    TransferObserver(int i, TransferDBUtil transferDBUtil, String str, String str2, File file, TransferListener transferListener) {
        this(i, transferDBUtil, str, str2, file);
        a(transferListener);
    }

    TransferObserver(int i, TransferDBUtil transferDBUtil) {
        this.a = i;
        this.b = transferDBUtil;
    }

    public void a() throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorA = this.b.a(this.a);
            try {
                if (cursorA.moveToFirst()) {
                    a(cursorA);
                }
                if (cursorA != null) {
                    cursorA.close();
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorA;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected void a(Cursor cursor) {
        this.c = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.f));
        this.d = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.g));
        this.e = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.h));
        this.f = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.i));
        this.g = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state")));
        this.h = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.j));
    }

    public void a(TransferListener transferListener) {
        if (transferListener != null) {
            synchronized (this) {
                i();
                this.j = new TransferStatusListener();
                TransferStatusUpdater.a(this.a, this.j);
                this.i = transferListener;
                TransferStatusUpdater.a(this.a, this.i);
            }
        }
    }

    public int b() {
        return this.a;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public long e() {
        return this.e;
    }

    public String f() {
        return this.h;
    }

    public long g() {
        return this.f;
    }

    public TransferState h() {
        return this.g;
    }

    public void i() {
        synchronized (this) {
            if (this.i != null) {
                TransferStatusUpdater.b(this.a, this.i);
                this.i = null;
            }
            if (this.j != null) {
                TransferStatusUpdater.b(this.a, this.j);
                this.j = null;
            }
        }
    }

    private class TransferStatusListener implements TransferListener {
        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void a(int i, Exception exc) {
        }

        private TransferStatusListener() {
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void a(int i, TransferState transferState) {
            TransferObserver.this.g = transferState;
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void a(int i, long j, long j2) {
            TransferObserver.this.f = j;
            TransferObserver.this.e = j2;
        }
    }

    public String toString() {
        return "TransferObserver{id=" + this.a + ", bucket='" + this.c + "', key='" + this.d + "', bytesTotal=" + this.e + ", bytesTransferred=" + this.f + ", transferState=" + this.g + ", filePath='" + this.h + "'}";
    }
}
