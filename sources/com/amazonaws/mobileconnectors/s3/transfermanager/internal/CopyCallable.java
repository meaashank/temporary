package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration;
import com.amazonaws.mobileconnectors.s3.transfermanager.model.CopyResult;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.Headers;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.CopyObjectResult;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.StorageClass;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class CopyCallable implements Callable<CopyResult> {
    private static final Log g = LogFactory.a(CopyCallable.class);
    private final AmazonS3 a;
    private final ExecutorService b;
    private final CopyObjectRequest c;
    private String d;
    private final ObjectMetadata e;
    private final CopyImpl f;
    private final TransferManagerConfiguration h;
    private final List<Future<PartETag>> i = new ArrayList();
    private final ProgressListenerCallbackExecutor j;

    public CopyCallable(TransferManager transferManager, ExecutorService executorService, CopyImpl copyImpl, CopyObjectRequest copyObjectRequest, ObjectMetadata objectMetadata, ProgressListenerChain progressListenerChain) {
        this.a = transferManager.b();
        this.h = transferManager.a();
        this.b = executorService;
        this.c = copyObjectRequest;
        this.e = objectMetadata;
        this.j = ProgressListenerCallbackExecutor.a(progressListenerChain);
        this.f = copyImpl;
    }

    List<Future<PartETag>> a() {
        return this.i;
    }

    String b() {
        return this.d;
    }

    public boolean c() {
        return this.e.k() > this.h.d();
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public CopyResult call() throws Exception {
        this.f.a(Transfer.TransferState.InProgress);
        if (c()) {
            a(2);
            f();
            return null;
        }
        return e();
    }

    private CopyResult e() {
        CopyObjectResult copyObjectResultA = this.a.a(this.c);
        CopyResult copyResult = new CopyResult();
        copyResult.a(this.c.h());
        copyResult.b(this.c.i());
        copyResult.c(this.c.k());
        copyResult.d(this.c.l());
        copyResult.e(copyObjectResultA.i());
        copyResult.f(copyObjectResultA.d());
        return copyResult;
    }

    private void f() throws Exception {
        String strK = this.c.k();
        String strL = this.c.l();
        this.d = a(this.c);
        try {
            a(new CopyPartRequestFactory(this.c, this.d, a(this.e.k()), this.e.k()));
        } catch (Exception e) {
            a(8);
            try {
                this.a.a(new AbortMultipartUploadRequest(strK, strL, this.d));
            } catch (Exception e2) {
                g.c("Unable to abort multipart upload, you may need to manually remove uploaded parts: " + e2.getMessage(), e2);
            }
            throw e;
        }
    }

    private long a(long j) {
        long jA = TransferManagerUtils.a(this.c, this.h, j);
        g.b("Calculated optimal part size: " + jA);
        return jA;
    }

    private void a(CopyPartRequestFactory copyPartRequestFactory) {
        while (copyPartRequestFactory.a()) {
            if (this.b.isShutdown()) {
                throw new CancellationException("TransferManager has been shutdown");
            }
            this.i.add(this.b.submit(new CopyPartCallable(this.a, copyPartRequestFactory.b())));
        }
    }

    private String a(CopyObjectRequest copyObjectRequest) {
        InitiateMultipartUploadRequest initiateMultipartUploadRequestB = new InitiateMultipartUploadRequest(copyObjectRequest.k(), copyObjectRequest.l()).b(copyObjectRequest.n());
        if (copyObjectRequest.o() != null) {
            initiateMultipartUploadRequestB.a(copyObjectRequest.o());
        }
        if (copyObjectRequest.m() != null) {
            initiateMultipartUploadRequestB.a(StorageClass.fromValue(copyObjectRequest.m()));
        }
        if (copyObjectRequest.x() != null) {
            initiateMultipartUploadRequestB.a(copyObjectRequest.x());
        }
        ObjectMetadata objectMetadataP = copyObjectRequest.p();
        if (objectMetadataP == null) {
            objectMetadataP = new ObjectMetadata();
        }
        if (objectMetadataP.m() == null) {
            objectMetadataP.f(this.e.m());
        }
        initiateMultipartUploadRequestB.a(objectMetadataP);
        a(this.e, objectMetadataP);
        String strC = this.a.a(initiateMultipartUploadRequestB).c();
        g.b("Initiated new multipart upload: " + strC);
        return strC;
    }

    private void a(int i) {
        if (this.j == null) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.a(i);
        this.j.a(progressEvent);
    }

    private void a(ObjectMetadata objectMetadata, ObjectMetadata objectMetadata2) {
        Map<String, String> mapH = objectMetadata.h();
        Map<String, String> mapH2 = objectMetadata2.h();
        String[] strArr = {Headers.ad, Headers.V, Headers.T, Headers.U, Headers.ac, Headers.ae, Headers.W, Headers.Y, Headers.Z};
        if (mapH != null) {
            if (mapH2 == null) {
                mapH2 = new HashMap<>();
                objectMetadata2.a(mapH2);
            }
            for (String str : strArr) {
                String str2 = mapH.get(str);
                if (str2 != null) {
                    mapH2.put(str, str2);
                }
            }
        }
    }
}
