package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.json.JsonUtils;
import com.google.gson.Gson;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class TransferDBUtil {
    private static final String b = ",?";
    private static TransferDBBase d;
    private Gson e = new Gson();
    private static final Log a = LogFactory.a(TransferDBUtil.class);
    private static final Object c = new Object();

    public TransferDBUtil(Context context) {
        synchronized (c) {
            if (d == null) {
                d = new TransferDBBase(context);
            }
        }
    }

    public void a() {
        synchronized (c) {
            if (d != null) {
                d.b();
            }
        }
    }

    public Uri a(String str, String str2, File file, long j, int i, String str3, long j2, int i2, TransferUtilityOptions transferUtilityOptions) {
        return d.a(d.c(), a(str, str2, file, j, i, str3, j2, i2, new ObjectMetadata(), null, transferUtilityOptions));
    }

    public Uri a(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, TransferUtilityOptions transferUtilityOptions) {
        return a(transferType, str, str2, file, objectMetadata, null, transferUtilityOptions);
    }

    public Uri a(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        return d.a(d.c(), b(transferType, str, str2, file, objectMetadata, cannedAccessControlList, transferUtilityOptions));
    }

    public Uri a(TransferType transferType, String str, String str2, File file, TransferUtilityOptions transferUtilityOptions) {
        return a(transferType, str, str2, file, new ObjectMetadata(), transferUtilityOptions);
    }

    public int a(ContentValues[] contentValuesArr) {
        return d.a(d.c(), contentValuesArr);
    }

    public int a(TransferRecord transferRecord) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TransferTable.b, Integer.valueOf(transferRecord.a));
        contentValues.put("state", transferRecord.o.toString());
        contentValues.put(TransferTable.h, Long.valueOf(transferRecord.h));
        contentValues.put(TransferTable.i, Long.valueOf(transferRecord.i));
        return d.a(f(transferRecord.a), contentValues, null, null);
    }

    public int a(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TransferTable.i, Long.valueOf(j));
        return d.a(f(i), contentValues, null, null);
    }

    public int b(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TransferTable.h, Long.valueOf(j));
        return d.a(f(i), contentValues, null, null);
    }

    public int a(int i, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", transferState.toString());
        if (TransferState.FAILED.equals(transferState)) {
            return d.a(f(i), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()});
        }
        return d.a(f(i), contentValues, null, null);
    }

    public int b(int i, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", transferState.toString());
        return d.a(d.c(), contentValues, "_id=" + i, null);
    }

    public int a(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TransferTable.o, str);
        return d.a(f(i), contentValues, null, null);
    }

    public int b(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("etag", str);
        return d.a(f(i), contentValues, null, null);
    }

    public int b() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", TransferState.PENDING_NETWORK_DISCONNECT.toString());
        return d.a(d.c(), contentValues, "state in (?,?,?)", new String[]{TransferState.IN_PROGRESS.toString(), TransferState.RESUMED_WAITING.toString(), TransferState.WAITING.toString()});
    }

    public int c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", TransferState.RESUMED_WAITING.toString());
        return d.a(d.c(), contentValues, "state in (?,?)", new String[]{TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.WAITING_FOR_NETWORK.toString()});
    }

    public int d() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", TransferState.PAUSED.toString());
        return d.a(d.c(), contentValues, "state in (?,?,?,?)", new String[]{TransferState.IN_PROGRESS.toString(), TransferState.PENDING_PAUSE.toString(), TransferState.RESUMED_WAITING.toString(), TransferState.WAITING.toString()});
    }

    public int a(TransferType transferType) {
        String str;
        String[] strArr;
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", TransferState.PENDING_PAUSE.toString());
        if (transferType == TransferType.ANY) {
            str = "state in (?,?,?)";
            strArr = new String[]{TransferState.IN_PROGRESS.toString(), TransferState.RESUMED_WAITING.toString(), TransferState.WAITING.toString()};
        } else {
            String[] strArr2 = {TransferState.IN_PROGRESS.toString(), TransferState.RESUMED_WAITING.toString(), TransferState.WAITING.toString(), transferType.toString()};
            str = "state in (?,?,?) and type=?";
            strArr = strArr2;
        }
        return d.a(d.c(), contentValues, str, strArr);
    }

    public int b(TransferType transferType) {
        String str;
        String[] strArr;
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", TransferState.PENDING_CANCEL.toString());
        if (transferType == TransferType.ANY) {
            str = "state in (?,?,?,?,?)";
            strArr = new String[]{TransferState.IN_PROGRESS.toString(), TransferState.RESUMED_WAITING.toString(), TransferState.WAITING.toString(), TransferState.PAUSED.toString(), TransferState.WAITING_FOR_NETWORK.toString()};
        } else {
            String[] strArr2 = {TransferState.IN_PROGRESS.toString(), TransferState.RESUMED_WAITING.toString(), TransferState.WAITING.toString(), TransferState.PAUSED.toString(), TransferState.WAITING_FOR_NETWORK.toString(), transferType.toString()};
            str = "state in (?,?,?,?,?) and type=?";
            strArr = strArr2;
        }
        return d.a(d.c(), contentValues, str, strArr);
    }

    public Cursor c(TransferType transferType) {
        if (transferType == TransferType.ANY) {
            return d.a(d.c(), null, null, null, null);
        }
        return d.a(d.c(), null, "type=?", new String[]{transferType.toString()}, null);
    }

    public Cursor a(TransferType transferType, TransferState transferState) {
        if (transferType == TransferType.ANY) {
            return d.a(a(transferState), null, null, null, null);
        }
        return d.a(a(transferState), null, "type=?", new String[]{transferType.toString()}, null);
    }

    public Cursor a(TransferType transferType, TransferState[] transferStateArr) {
        String str;
        String[] strArr;
        int length = transferStateArr.length;
        String strI = i(length);
        int i = 0;
        if (transferType == TransferType.ANY) {
            String str2 = "state in (" + strI + ")";
            String[] strArr2 = new String[length];
            while (i < length) {
                strArr2[i] = transferStateArr[i].toString();
                i++;
            }
            str = str2;
            strArr = strArr2;
        } else {
            String str3 = "state in (" + strI + ") and type=?";
            String[] strArr3 = new String[length + 1];
            while (i < length) {
                strArr3[i] = transferStateArr[i].toString();
                i++;
            }
            strArr3[i] = transferType.toString();
            str = str3;
            strArr = strArr3;
        }
        return d.a(d.c(), null, str, strArr, null);
    }

    public Cursor a(int i) {
        return d.a(f(i), null, null, null, null);
    }

    public long b(int i) throws Throwable {
        Throwable th;
        Cursor cursorA;
        try {
            cursorA = d.a(g(i), null, null, null, null);
            long j = 0;
            while (cursorA.moveToNext()) {
                try {
                    if (TransferState.PART_COMPLETED.equals(TransferState.getState(cursorA.getString(cursorA.getColumnIndexOrThrow("state"))))) {
                        j += cursorA.getLong(cursorA.getColumnIndexOrThrow(TransferTable.h));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return j;
        } catch (Throwable th3) {
            th = th3;
            cursorA = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
    
        r0 = r8.getLong(r8.getColumnIndexOrThrow(com.amazonaws.mobileconnectors.s3.transferutility.TransferTable.i));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long a(int r8, int r9) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            com.amazonaws.mobileconnectors.s3.transferutility.TransferDBBase r1 = com.amazonaws.mobileconnectors.s3.transferutility.TransferDBUtil.d     // Catch: java.lang.Throwable -> L4c
            android.net.Uri r2 = r7.g(r8)     // Catch: java.lang.Throwable -> L4c
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r8 = r1.a(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
        Lf:
            boolean r0 = r8.moveToNext()     // Catch: java.lang.Throwable -> L4a
            if (r0 == 0) goto L42
            java.lang.String r0 = "part_num"
            int r0 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L4a
            int r0 = r8.getInt(r0)     // Catch: java.lang.Throwable -> L4a
            java.lang.String r1 = "state"
            int r1 = r8.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L4a
            java.lang.String r1 = r8.getString(r1)     // Catch: java.lang.Throwable -> L4a
            if (r0 != r9) goto Lf
            com.amazonaws.mobileconnectors.s3.transferutility.TransferState r0 = com.amazonaws.mobileconnectors.s3.transferutility.TransferState.PART_COMPLETED     // Catch: java.lang.Throwable -> L4a
            com.amazonaws.mobileconnectors.s3.transferutility.TransferState r1 = com.amazonaws.mobileconnectors.s3.transferutility.TransferState.getState(r1)     // Catch: java.lang.Throwable -> L4a
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L4a
            if (r0 != 0) goto Lf
            java.lang.String r9 = "bytes_current"
            int r9 = r8.getColumnIndexOrThrow(r9)     // Catch: java.lang.Throwable -> L4a
            long r0 = r8.getLong(r9)     // Catch: java.lang.Throwable -> L4a
            goto L44
        L42:
            r0 = 0
        L44:
            if (r8 == 0) goto L49
            r8.close()
        L49:
            return r0
        L4a:
            r9 = move-exception
            goto L4e
        L4c:
            r9 = move-exception
            r8 = r0
        L4e:
            if (r8 == 0) goto L53
            r8.close()
        L53:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.s3.transferutility.TransferDBUtil.a(int, int):long");
    }

    public int c(int i) {
        return d.a(f(i), null, null);
    }

    public List<PartETag> d(int i) throws Throwable {
        Cursor cursorA;
        ArrayList arrayList = new ArrayList();
        try {
            cursorA = d.a(g(i), null, null, null, null);
            while (cursorA.moveToNext()) {
                try {
                    arrayList.add(new PartETag(cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.n)), cursorA.getString(cursorA.getColumnIndexOrThrow("etag"))));
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

    public List<UploadPartRequest> c(int i, String str) throws Throwable {
        Cursor cursorA;
        ArrayList arrayList = new ArrayList();
        try {
            cursorA = d.a(g(i), null, null, null, null);
            while (cursorA.moveToNext()) {
                try {
                    if (!TransferState.PART_COMPLETED.equals(TransferState.getState(cursorA.getString(cursorA.getColumnIndexOrThrow("state"))))) {
                        UploadPartRequest uploadPartRequestB = new UploadPartRequest().b(cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.b))).d(cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.c))).b(cursorA.getString(cursorA.getColumnIndexOrThrow(TransferTable.f))).d(cursorA.getString(cursorA.getColumnIndexOrThrow(TransferTable.g))).f(str).b(new File(cursorA.getString(cursorA.getColumnIndexOrThrow(TransferTable.j)))).d(cursorA.getLong(cursorA.getColumnIndexOrThrow(TransferTable.k))).f(cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.n))).b(cursorA.getLong(cursorA.getColumnIndexOrThrow(TransferTable.h)));
                        boolean z = true;
                        if (1 != cursorA.getInt(cursorA.getColumnIndexOrThrow(TransferTable.m))) {
                            z = false;
                        }
                        arrayList.add(uploadPartRequestB.b(z));
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

    public boolean e(int i) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorA = d.a(g(i), null, "state=?", new String[]{TransferState.WAITING_FOR_NETWORK.toString()}, null);
            try {
                boolean zMoveToNext = cursorA.moveToNext();
                if (cursorA != null) {
                    cursorA.close();
                }
                return zMoveToNext;
            } catch (Throwable th) {
                cursor = cursorA;
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private String i(int i) {
        if (i <= 0) {
            a.e("Cannot create a string of 0 or less placeholders.");
            return null;
        }
        StringBuilder sb = new StringBuilder((b.length() * i) - 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(b);
        }
        return sb.toString();
    }

    public ContentValues a(String str, String str2, File file, long j, int i, String str3, long j2, int i2, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", TransferType.UPLOAD.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put(TransferTable.f, str);
        contentValues.put(TransferTable.g, str2);
        contentValues.put(TransferTable.j, file.getAbsolutePath());
        contentValues.put(TransferTable.i, (Long) 0L);
        contentValues.put(TransferTable.h, Long.valueOf(j2));
        contentValues.put(TransferTable.l, (Integer) 1);
        contentValues.put(TransferTable.n, Integer.valueOf(i));
        contentValues.put(TransferTable.k, Long.valueOf(j));
        contentValues.put(TransferTable.o, str3);
        contentValues.put(TransferTable.m, Integer.valueOf(i2));
        contentValues.put(TransferTable.s, (Integer) 0);
        contentValues.putAll(a(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put(TransferTable.J, cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put(TransferTable.K, this.e.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    private ContentValues a(ObjectMetadata objectMetadata) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TransferTable.H, JsonUtils.a(objectMetadata.h()));
        contentValues.put(TransferTable.x, objectMetadata.m());
        contentValues.put(TransferTable.A, objectMetadata.o());
        contentValues.put(TransferTable.B, objectMetadata.p());
        contentValues.put(TransferTable.G, objectMetadata.q());
        contentValues.put(TransferTable.z, objectMetadata.r());
        contentValues.put(TransferTable.F, objectMetadata.k_());
        contentValues.put(TransferTable.I, objectMetadata.y());
        contentValues.put(TransferTable.D, objectMetadata.b());
        if (objectMetadata.v() != null) {
            contentValues.put(TransferTable.E, String.valueOf(objectMetadata.v().getTime()));
        }
        if (objectMetadata.w() != null) {
            contentValues.put(TransferTable.C, objectMetadata.w());
        }
        return contentValues;
    }

    private ContentValues b(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", transferType.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put(TransferTable.f, str);
        contentValues.put(TransferTable.g, str2);
        contentValues.put(TransferTable.j, file.getAbsolutePath());
        contentValues.put(TransferTable.i, (Long) 0L);
        if (transferType.equals(TransferType.UPLOAD)) {
            contentValues.put(TransferTable.h, Long.valueOf(file != null ? file.length() : 0L));
        }
        contentValues.put(TransferTable.l, (Integer) 0);
        contentValues.put(TransferTable.n, (Integer) 0);
        contentValues.put(TransferTable.s, (Integer) 0);
        contentValues.putAll(a(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put(TransferTable.J, cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put(TransferTable.K, this.e.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public Uri e() {
        return d.c();
    }

    public Uri f(int i) {
        return Uri.parse(d.c() + "/" + i);
    }

    public Uri g(int i) {
        return Uri.parse(d.c() + "/part/" + i);
    }

    public Uri a(TransferState transferState) {
        return Uri.parse(d.c() + "/state/" + transferState.toString());
    }

    TransferRecord h(int i) throws Throwable {
        Cursor cursorA;
        TransferRecord transferRecord = null;
        try {
            cursorA = a(i);
            try {
                if (cursorA.moveToFirst()) {
                    transferRecord = new TransferRecord(i);
                    transferRecord.a(cursorA);
                }
                if (cursorA != null) {
                    cursorA.close();
                }
                return transferRecord;
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

    static TransferDBBase a(Context context) {
        TransferDBBase transferDBBase;
        synchronized (c) {
            if (d == null) {
                d = new TransferDBBase(context);
            }
            transferDBBase = d;
        }
        return transferDBBase;
    }
}
