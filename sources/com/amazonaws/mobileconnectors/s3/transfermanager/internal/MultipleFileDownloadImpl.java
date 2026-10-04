package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.Download;
import com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileDownload;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MultipleFileDownloadImpl extends MultipleFileTransfer<Download> implements MultipleFileDownload {
    private final String f;
    private final String g;

    public MultipleFileDownloadImpl(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, String str2, String str3, Collection<? extends Download> collection) {
        super(str, transferProgress, progressListenerChain, collection);
        this.f = str2;
        this.g = str3;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileDownload
    public String a() {
        return this.f;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileDownload
    public String b() {
        return this.g;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer, com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public void g() {
        if (this.e.isEmpty()) {
            return;
        }
        super.g();
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileDownload
    public void c() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((DownloadImpl) ((Transfer) it.next())).m();
        }
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            ((DownloadImpl) ((Transfer) it2.next())).b(Transfer.TransferState.Canceled);
        }
    }
}
