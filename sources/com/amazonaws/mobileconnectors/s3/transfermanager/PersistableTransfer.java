package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.mobileconnectors.s3.transferutility.TransferTable;
import com.amazonaws.services.s3.model.ResponseHeaderOverrides;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.JsonUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class PersistableTransfer {
    public abstract String i();

    public final void a(OutputStream outputStream) throws IOException {
        outputStream.write(i().getBytes(StringUtils.a));
        outputStream.flush();
    }

    public static <T extends PersistableTransfer> T a(InputStream inputStream) {
        AwsJsonReader awsJsonReaderA = JsonUtils.a(new BufferedReader(new InputStreamReader(inputStream, StringUtils.a)));
        try {
            awsJsonReaderA.c();
            String strH = null;
            long j = -1;
            long j2 = -1;
            String strH2 = null;
            String strH3 = null;
            String strH4 = null;
            String strH5 = null;
            String strH6 = null;
            long[] jArr = null;
            ResponseHeaderOverrides responseHeaderOverrides = null;
            boolean z = false;
            while (awsJsonReaderA.f()) {
                String strG = awsJsonReaderA.g();
                if (strG.equals("pauseType")) {
                    strH = awsJsonReaderA.h();
                } else if (strG.equals("bucketName")) {
                    strH4 = awsJsonReaderA.h();
                } else if (strG.equals(TransferTable.g)) {
                    strH5 = awsJsonReaderA.h();
                } else if (strG.equals(TransferTable.j)) {
                    strH2 = awsJsonReaderA.h();
                } else if (strG.equals("multipartUploadId")) {
                    strH3 = awsJsonReaderA.h();
                } else if (strG.equals("partSize")) {
                    j = Long.parseLong(awsJsonReaderA.h());
                } else if (strG.equals("mutlipartUploadThreshold")) {
                    j2 = Long.parseLong(awsJsonReaderA.h());
                } else if (strG.equals("versionId")) {
                    strH6 = awsJsonReaderA.h();
                } else if (strG.equals("range")) {
                    awsJsonReaderA.a();
                    long[] jArr2 = {Long.parseLong(awsJsonReaderA.h()), Long.parseLong(awsJsonReaderA.h())};
                    awsJsonReaderA.b();
                    jArr = jArr2;
                } else if (strG.equals("responseHeaders")) {
                    ResponseHeaderOverrides responseHeaderOverrides2 = new ResponseHeaderOverrides();
                    awsJsonReaderA.c();
                    while (awsJsonReaderA.f()) {
                        String strG2 = awsJsonReaderA.g();
                        if (strG2.equals("contentType")) {
                            responseHeaderOverrides2.a(awsJsonReaderA.h());
                        } else if (strG2.equals("contentLanguage")) {
                            responseHeaderOverrides2.c(awsJsonReaderA.h());
                        } else if (strG2.equals("expires")) {
                            responseHeaderOverrides2.e(awsJsonReaderA.h());
                        } else if (strG2.equals("cacheControl")) {
                            responseHeaderOverrides2.g(awsJsonReaderA.h());
                        } else if (strG2.equals("contentDisposition")) {
                            responseHeaderOverrides2.i(awsJsonReaderA.h());
                        } else if (strG2.equals("contentEncoding")) {
                            responseHeaderOverrides2.k(awsJsonReaderA.h());
                        } else {
                            awsJsonReaderA.j();
                        }
                    }
                    awsJsonReaderA.d();
                    responseHeaderOverrides = responseHeaderOverrides2;
                } else if (strG.equals("isRequesterPays")) {
                    z = Boolean.parseBoolean(awsJsonReaderA.h());
                } else {
                    awsJsonReaderA.j();
                }
            }
            awsJsonReaderA.d();
            if ("download".equals(strH)) {
                return new PersistableDownload(strH4, strH5, strH6, jArr, responseHeaderOverrides, z, strH2);
            }
            if ("upload".equals(strH)) {
                return new PersistableUpload(strH4, strH5, strH2, strH3, j, j2);
            }
            throw new UnsupportedOperationException("Unsupported paused transfer type: " + strH);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static <T extends PersistableTransfer> T a(String str) {
        if (str == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes(StringUtils.a));
        try {
            return (T) a(byteArrayInputStream);
        } finally {
            try {
                byteArrayInputStream.close();
            } catch (IOException unused) {
            }
        }
    }
}
