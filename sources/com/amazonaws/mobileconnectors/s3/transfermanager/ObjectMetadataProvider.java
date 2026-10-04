package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.services.s3.model.ObjectMetadata;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface ObjectMetadataProvider {
    void a(File file, ObjectMetadata objectMetadata);
}
