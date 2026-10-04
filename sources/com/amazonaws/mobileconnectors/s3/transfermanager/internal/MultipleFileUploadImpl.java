package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileUpload;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.s3.transfermanager.Upload;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class MultipleFileUploadImpl extends MultipleFileTransfer<Upload> implements MultipleFileUpload {
    private final String f;
    private final String g;

    public MultipleFileUploadImpl(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, String str2, String str3, Collection<? extends Upload> collection) {
        super(str, transferProgress, progressListenerChain, collection);
        this.f = str2;
        this.g = str3;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileUpload
    public String a() {
        return this.f;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileUpload
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

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.MultipleFileUpload
    public Collection<? extends Upload> c() {
        return Collections.unmodifiableCollection(this.e);
    }
}
