package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.util.TimingInfo;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface RequestHandler {
    void a(Request<?> request);

    void a(Request<?> request, Exception exc);

    void a(Request<?> request, Object obj, TimingInfo timingInfo);
}
