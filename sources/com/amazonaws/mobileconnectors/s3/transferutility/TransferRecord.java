package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.util.json.JsonUtils;
import com.google.gson.Gson;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
class TransferRecord {
    private static final Log K = LogFactory.a(TransferRecord.class);
    public String A;
    public String B;
    public Map<String, String> C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public TransferUtilityOptions J;
    private Future<?> L;
    private Gson M = new Gson();
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public TransferType n;
    public TransferState o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public String y;
    public String z;

    public TransferRecord(int i) {
        this.a = i;
    }

    public void a(Cursor cursor) {
        this.a = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.b));
        this.b = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.c));
        this.n = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow("type")));
        this.o = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state")));
        this.p = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.f));
        this.q = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.g));
        this.r = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.u));
        this.h = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.h));
        this.i = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.i));
        this.j = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.t));
        this.c = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.w));
        this.d = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.l));
        this.e = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.m));
        this.f = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.s));
        this.g = cursor.getInt(cursor.getColumnIndexOrThrow(TransferTable.n));
        this.u = cursor.getString(cursor.getColumnIndexOrThrow("etag"));
        this.s = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.j));
        this.t = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.o));
        this.k = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.q));
        this.l = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.r));
        this.m = cursor.getLong(cursor.getColumnIndexOrThrow(TransferTable.k));
        this.v = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.x));
        this.w = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.y));
        this.x = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.z));
        this.y = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.A));
        this.z = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.B));
        this.A = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.v));
        this.C = JsonUtils.a(cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.H)));
        this.D = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.D));
        this.E = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.E));
        this.F = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.F));
        this.G = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.I));
        this.H = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.G));
        this.I = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.J));
        this.B = cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.C));
        this.J = (TransferUtilityOptions) this.M.fromJson(cursor.getString(cursor.getColumnIndexOrThrow(TransferTable.K)), TransferUtilityOptions.class);
    }

    public boolean a(AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        if (a() || !c() || !a(transferStatusUpdater, connectivityManager)) {
            return false;
        }
        if (this.n.equals(TransferType.DOWNLOAD)) {
            this.L = TransferThreadPool.a(new DownloadTask(this, amazonS3, transferStatusUpdater));
            return true;
        }
        this.L = TransferThreadPool.a(new UploadTask(this, amazonS3, transferDBUtil, transferStatusUpdater));
        return true;
    }

    public boolean a(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (a(this.o) || TransferState.PAUSED.equals(this.o)) {
            return false;
        }
        transferStatusUpdater.a(this.a, TransferState.PAUSED);
        if (a()) {
            this.L.cancel(true);
        }
        return true;
    }

    boolean a(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        if (a(transferStatusUpdater, connectivityManager) || a(this.o)) {
            return false;
        }
        if (a()) {
            this.L.cancel(true);
        }
        return true;
    }

    public boolean b(final AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (a(this.o)) {
            return false;
        }
        transferStatusUpdater.a(this.a, TransferState.CANCELED);
        if (a()) {
            this.L.cancel(true);
        }
        if (TransferType.UPLOAD.equals(this.n) && this.d == 1) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        amazonS3.a(new AbortMultipartUploadRequest(TransferRecord.this.p, TransferRecord.this.q, TransferRecord.this.t));
                        TransferRecord.K.b("Successfully clean up multipart upload: " + TransferRecord.this.a);
                    } catch (AmazonClientException e) {
                        TransferRecord.K.b("Failed to abort multiplart upload: " + TransferRecord.this.a, e);
                    }
                }
            }).start();
        } else if (TransferType.DOWNLOAD.equals(this.n)) {
            new File(this.s).delete();
        }
        return true;
    }

    boolean a() {
        return (this.L == null || this.L.isDone()) ? false : true;
    }

    void a(long j) throws ExecutionException, InterruptedException, TimeoutException {
        if (a()) {
            this.L.get(j, TimeUnit.MILLISECONDS);
        }
    }

    private boolean a(TransferState transferState) {
        return TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState);
    }

    private boolean c() {
        return this.g == 0 && !TransferState.COMPLETED.equals(this.o);
    }

    public String toString() {
        return "[id:" + this.a + ",bucketName:" + this.p + ",key:" + this.q + ",file:" + this.s + ",type:" + this.n + ",bytesTotal:" + this.h + ",bytesCurrent:" + this.i + ",fileOffset:" + this.m + ",state:" + this.o + ",cannedAcl:" + this.I + ",mainUploadId:" + this.b + ",isMultipart:" + this.d + ",isLastPart:" + this.e + ",partNumber:" + this.g + ",multipartId:" + this.t + ",eTag:" + this.u + ",storageClass:" + this.B + ",userMetadata:" + this.C.toString() + ",transferUtilityOptions:" + this.M.toJson(this.J) + "]";
    }

    private boolean a(TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        if (connectivityManager == null || this.J == null || this.J.c().isConnected(connectivityManager)) {
            return true;
        }
        K.c("Network Connection " + this.J.c() + " is not available.");
        transferStatusUpdater.a(this.a, TransferState.WAITING_FOR_NETWORK);
        return false;
    }
}
