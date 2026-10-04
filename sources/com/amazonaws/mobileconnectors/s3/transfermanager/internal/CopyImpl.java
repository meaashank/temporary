package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.Copy;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.s3.transfermanager.model.CopyResult;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class CopyImpl extends AbstractTransfer implements Copy {
    public CopyImpl(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, TransferStateChangeListener transferStateChangeListener) {
        super(str, transferProgress, progressListenerChain, transferStateChangeListener);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Copy
    public CopyResult a() {
        CopyResult copyResult = null;
        while (true) {
            try {
                if (this.b.b() && copyResult != null) {
                    return copyResult;
                }
                copyResult = (CopyResult) this.b.a().get();
            } catch (ExecutionException e) {
                a(e);
                return null;
            }
        }
    }
}
