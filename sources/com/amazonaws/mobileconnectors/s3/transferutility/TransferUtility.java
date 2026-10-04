package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.regions.Region;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.VersionInfoUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class TransferUtility {
    static final int b = 5242880;
    private static final String g = "add_transfer";
    private static final String h = "pause_transfer";
    private static final String i = "resume_transfer";
    private static final String j = "cancel_transfer";
    final ConnectivityManager a;
    private TransferStatusUpdater d;
    private TransferDBUtil e;
    private final AmazonS3 l;
    private final String m;
    private final TransferUtilityOptions n;
    private static final Log c = LogFactory.a(TransferUtility.class);
    private static final Object f = new Object();
    private static String k = "";

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str) {
        synchronized (f) {
            k = str;
        }
    }

    private static String c() {
        synchronized (f) {
            if (k != null && !k.trim().isEmpty()) {
                return k.trim() + "/";
            }
            return "";
        }
    }

    public static class Builder {
        private AmazonS3 a;
        private Context b;
        private String c;
        private AWSConfiguration d;
        private TransferUtilityOptions e;

        protected Builder() {
        }

        public Builder a(AmazonS3 amazonS3) {
            this.a = amazonS3;
            return this;
        }

        public Builder a(Context context) {
            this.b = context.getApplicationContext();
            return this;
        }

        public Builder a(String str) {
            this.c = str;
            return this;
        }

        public Builder a(AWSConfiguration aWSConfiguration) {
            this.d = aWSConfiguration;
            return this;
        }

        public Builder a(TransferUtilityOptions transferUtilityOptions) {
            this.e = transferUtilityOptions;
            return this;
        }

        public TransferUtility a() {
            if (this.a == null) {
                throw new IllegalArgumentException("AmazonS3 client is required please set using .s3Client(yourClient)");
            }
            if (this.b == null) {
                throw new IllegalArgumentException("Context is required please set using .context(applicationContext)");
            }
            if (this.d != null) {
                try {
                    JSONObject jSONObjectA = this.d.a("S3TransferUtility");
                    this.a.a(Region.a(jSONObjectA.getString("Region")));
                    this.c = jSONObjectA.getString("Bucket");
                    TransferUtility.b(this.d.a());
                } catch (Exception e) {
                    throw new IllegalArgumentException("Failed to read S3TransferUtility please check your setup or awsconfiguration.json file", e);
                }
            }
            if (this.e == null) {
                this.e = new TransferUtilityOptions();
            }
            return new TransferUtility(this.a, this.b, this.c, this.e);
        }
    }

    public static Builder a() {
        return new Builder();
    }

    private TransferUtility(AmazonS3 amazonS3, Context context, String str, TransferUtilityOptions transferUtilityOptions) {
        this.l = amazonS3;
        this.m = str;
        this.n = transferUtilityOptions;
        this.e = new TransferDBUtil(context.getApplicationContext());
        this.d = TransferStatusUpdater.a(context.getApplicationContext());
        TransferThreadPool.a(this.n.b());
        this.a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    @Deprecated
    public TransferUtility(AmazonS3 amazonS3, Context context) {
        this.l = amazonS3;
        this.m = null;
        this.n = new TransferUtilityOptions();
        this.e = new TransferDBUtil(context.getApplicationContext());
        this.d = TransferStatusUpdater.a(context.getApplicationContext());
        TransferThreadPool.a(this.n.b());
        this.a = (ConnectivityManager) context.getSystemService("connectivity");
    }

    private String d() {
        if (this.m == null) {
            throw new IllegalArgumentException("TransferUtility has not been configured with a default bucket. Please use the corresponding method that specifies bucket name or configure the default bucket name in construction of the object. See TransferUtility.builder().defaultBucket() or TransferUtility.builder().awsConfiguration()");
        }
        return this.m;
    }

    public TransferObserver a(String str, String str2, File file) {
        return a(str, str2, file, (TransferListener) null);
    }

    public TransferObserver a(String str, File file) {
        return a(d(), str, file, (TransferListener) null);
    }

    public TransferObserver a(String str, String str2, File file, TransferListener transferListener) {
        if (file == null || file.isDirectory()) {
            throw new IllegalArgumentException("Invalid file: " + file);
        }
        int i2 = Integer.parseInt(this.e.a(TransferType.DOWNLOAD, str, str2, file, this.n).getLastPathSegment());
        if (file.isFile()) {
            c.d("Overwrite existing file: " + file);
            file.delete();
        }
        a(g, i2);
        return new TransferObserver(i2, this.e, str, str2, file, transferListener);
    }

    public TransferObserver a(String str, File file, TransferListener transferListener) {
        return a(d(), str, file, transferListener);
    }

    public TransferObserver b(String str, String str2, File file) {
        return a(str, str2, file, new ObjectMetadata());
    }

    public TransferObserver b(String str, File file) {
        return a(d(), str, file, new ObjectMetadata());
    }

    public TransferObserver a(String str, String str2, File file, CannedAccessControlList cannedAccessControlList) {
        return a(str, str2, file, new ObjectMetadata(), cannedAccessControlList);
    }

    public TransferObserver a(String str, File file, CannedAccessControlList cannedAccessControlList) {
        return a(d(), str, file, new ObjectMetadata(), cannedAccessControlList);
    }

    public TransferObserver a(String str, String str2, File file, ObjectMetadata objectMetadata) {
        return a(str, str2, file, objectMetadata, (CannedAccessControlList) null);
    }

    public TransferObserver a(String str, File file, ObjectMetadata objectMetadata) {
        return a(d(), str, file, objectMetadata, (CannedAccessControlList) null);
    }

    public TransferObserver a(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        return a(str, str2, file, objectMetadata, cannedAccessControlList, null);
    }

    public TransferObserver a(String str, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        return a(d(), str, file, objectMetadata, cannedAccessControlList, null);
    }

    public TransferObserver a(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferListener transferListener) {
        int iB;
        if (file == null || file.isDirectory() || !file.exists()) {
            throw new IllegalArgumentException("Invalid file: " + file);
        }
        if (a(file)) {
            iB = b(str, str2, file, objectMetadata, cannedAccessControlList);
        } else {
            iB = Integer.parseInt(this.e.a(TransferType.UPLOAD, str, str2, file, objectMetadata, cannedAccessControlList, this.n).getLastPathSegment());
        }
        int i2 = iB;
        a(g, i2);
        return new TransferObserver(i2, this.e, str, str2, file, transferListener);
    }

    public TransferObserver a(String str, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferListener transferListener) {
        return a(d(), str, file, objectMetadata, cannedAccessControlList, transferListener);
    }

    public TransferObserver a(int i2) throws Throwable {
        Cursor cursorA;
        try {
            cursorA = this.e.a(i2);
            try {
                if (!cursorA.moveToNext()) {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    return null;
                }
                TransferObserver transferObserver = new TransferObserver(i2, this.e);
                transferObserver.a(cursorA);
                if (cursorA != null) {
                    cursorA.close();
                }
                return transferObserver;
            } catch (Throwable th) {
                th = th;
                if (cursorA != null) {
                    cursorA.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    public List<TransferObserver> a(TransferType transferType) throws Throwable {
        Cursor cursorC;
        ArrayList arrayList = new ArrayList();
        try {
            cursorC = this.e.c(transferType);
            while (cursorC.moveToNext()) {
                try {
                    TransferObserver transferObserver = new TransferObserver(cursorC.getInt(cursorC.getColumnIndexOrThrow(TransferTable.b)), this.e);
                    transferObserver.a(cursorC);
                    arrayList.add(transferObserver);
                } catch (Throwable th) {
                    th = th;
                    if (cursorC != null) {
                        cursorC.close();
                    }
                    throw th;
                }
            }
            if (cursorC != null) {
                cursorC.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            cursorC = null;
        }
    }

    public List<TransferObserver> a(TransferType transferType, TransferState transferState) {
        return a(transferType, new TransferState[]{transferState});
    }

    public List<TransferObserver> a(TransferType transferType, TransferState[] transferStateArr) throws Throwable {
        Cursor cursorA;
        ArrayList arrayList = new ArrayList();
        try {
            cursorA = this.e.a(transferType, transferStateArr);
            while (cursorA.moveToNext()) {
                try {
                    if (cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.n)) == 0) {
                        TransferObserver transferObserver = new TransferObserver(cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.b)), this.e);
                        transferObserver.a(cursorA);
                        arrayList.add(transferObserver);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    private List<Integer> b(TransferType transferType, TransferState[] transferStateArr) throws Throwable {
        Cursor cursorA;
        ArrayList arrayList = new ArrayList();
        try {
            cursorA = this.e.a(transferType, transferStateArr);
            while (cursorA.moveToNext()) {
                try {
                    if (cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.n)) == 0) {
                        arrayList.add(Integer.valueOf(cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.b))));
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    private int b(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        long length = file.length();
        double d = length;
        Double.isNaN(d);
        long jMax = (long) Math.max(Math.ceil(d / 10000.0d), 5242880.0d);
        double d2 = jMax;
        Double.isNaN(d);
        Double.isNaN(d2);
        int iCeil = ((int) Math.ceil(d / d2)) + 1;
        ContentValues[] contentValuesArr = new ContentValues[iCeil];
        contentValuesArr[0] = this.e.a(str, str2, file, 0L, 0, "", file.length(), 0, objectMetadata, cannedAccessControlList, this.n);
        long j2 = length;
        long j3 = 0;
        int i2 = 1;
        for (int i3 = 1; i3 < iCeil; i3++) {
            long jMin = Math.min(jMax, j2);
            j2 -= jMax;
            contentValuesArr[i3] = this.e.a(str, str2, file, j3, i2, "", jMin, j2 <= 0 ? 1 : 0, objectMetadata, cannedAccessControlList, this.n);
            j3 += jMax;
            i2++;
        }
        return this.e.a(contentValuesArr);
    }

    public boolean b(int i2) {
        a(h, i2);
        return true;
    }

    public void b(TransferType transferType) throws Throwable {
        Throwable th;
        Cursor cursorC;
        try {
            cursorC = this.e.c(transferType);
            while (cursorC.moveToNext()) {
                try {
                    b(cursorC.getInt(cursorC.getColumnIndexOrThrow(TransferTable.b)));
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorC != null) {
                        cursorC.close();
                    }
                    throw th;
                }
            }
            if (cursorC != null) {
                cursorC.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursorC = null;
        }
    }

    public TransferObserver c(int i2) {
        a(i, i2);
        return a(i2);
    }

    public List<TransferObserver> c(TransferType transferType) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = b(transferType, new TransferState[]{TransferState.PAUSED, TransferState.FAILED, TransferState.CANCELED}).iterator();
        while (it.hasNext()) {
            arrayList.add(c(it.next().intValue()));
        }
        return arrayList;
    }

    public boolean d(int i2) {
        a(j, i2);
        return true;
    }

    public void d(TransferType transferType) throws Throwable {
        Throwable th;
        Cursor cursorC;
        try {
            cursorC = this.e.c(transferType);
            while (cursorC.moveToNext()) {
                try {
                    d(cursorC.getInt(cursorC.getColumnIndexOrThrow(TransferTable.b)));
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorC != null) {
                        cursorC.close();
                    }
                    throw th;
                }
            }
            if (cursorC != null) {
                cursorC.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursorC = null;
        }
    }

    public boolean e(int i2) {
        d(i2);
        return this.e.c(i2) > 0;
    }

    private synchronized void a(String str, int i2) {
        S3ClientReference.a(Integer.valueOf(i2), this.l);
        TransferRecord transferRecordA = this.d.a(i2);
        if (transferRecordA == null) {
            transferRecordA = this.e.h(i2);
            if (transferRecordA == null) {
                c.e("Cannot find transfer with id: " + i2);
                return;
            }
            this.d.a(transferRecordA);
        } else if (g.equals(str)) {
            c.d("Transfer has already been added: " + i2);
            return;
        }
        if (g.equals(str) || i.equals(str)) {
            transferRecordA.a(this.l, this.e, this.d, this.a);
        } else if (h.equals(str)) {
            transferRecordA.a(this.l, this.d);
        } else if (j.equals(str)) {
            transferRecordA.b(this.l, this.d);
        } else {
            c.e("Unknown action: " + str);
        }
    }

    private boolean a(File file) {
        return file != null && file.length() > 5242880;
    }

    static <X extends AmazonWebServiceRequest> X a(X x) {
        x.b().b("TransferService/" + c() + VersionInfoUtils.a());
        return x;
    }

    static <X extends AmazonWebServiceRequest> X b(X x) {
        x.b().b("TransferService_multipart/" + c() + VersionInfoUtils.a());
        return x;
    }

    TransferDBUtil b() {
        return this.e;
    }
}
