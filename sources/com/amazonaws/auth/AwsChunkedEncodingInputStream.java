package com.amazonaws.auth;

import android.support.v4.media.session.PlaybackStateCompat;
import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AwsChunkedEncodingInputStream extends SdkInputStream {
    protected static final String a = "UTF-8";
    private static final int b = 255;
    private static final int c = 131072;
    private static final int d = 262144;
    private static final String e = "\r\n";
    private static final String f = "AWS4-HMAC-SHA256-PAYLOAD";
    private static final String g = ";chunk-signature=";
    private static final int h = 64;
    private static final byte[] i = new byte[0];
    private static final Log v = LogFactory.a(AwsChunkedEncodingInputStream.class);
    private InputStream j;
    private final int k;
    private final byte[] l;
    private final String m;
    private final String n;
    private final String o;
    private String p;
    private final AWS4Signer q;
    private ChunkContentIterator r;
    private DecodedStreamBuffer s;
    private boolean t;
    private boolean u;

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i2, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.j = null;
        this.t = true;
        this.u = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i2 = Math.max(awsChunkedEncodingInputStream.k, i2);
            this.j = awsChunkedEncodingInputStream.j;
            this.s = awsChunkedEncodingInputStream.s;
        } else {
            this.j = inputStream;
            this.s = null;
        }
        if (i2 < 131072) {
            throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
        }
        this.k = i2;
        this.l = bArr;
        this.m = str;
        this.n = str2;
        this.o = str3;
        this.p = str3;
        this.q = aWS4Signer;
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = new byte[1];
        int i2 = read(bArr, 0, 1);
        if (i2 == -1) {
            return i2;
        }
        if (v.a()) {
            v.b("One byte read from the stream.");
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        e();
        if (bArr == null) {
            throw new NullPointerException();
        }
        if (i2 < 0 || i3 < 0 || i3 > bArr.length - i2) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 == 0) {
            return 0;
        }
        if (this.r == null || !this.r.a()) {
            if (this.u) {
                return -1;
            }
            this.u = b();
        }
        int iA = this.r.a(bArr, i2, i3);
        if (iA > 0) {
            this.t = false;
            if (v.a()) {
                v.b(iA + " byte read from the stream.");
            }
        }
        return iA;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        int i2;
        if (j <= 0) {
            return 0L;
        }
        int iMin = (int) Math.min(PlaybackStateCompat.ACTION_SET_REPEAT_MODE, j);
        byte[] bArr = new byte[iMin];
        long j2 = j;
        while (j2 > 0 && (i2 = read(bArr, 0, iMin)) >= 0) {
            j2 -= (long) i2;
        }
        return j - j2;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i2) {
        e();
        if (!this.t) {
            throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
        }
        if (this.j.markSupported()) {
            if (v.a()) {
                v.b("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
            }
            this.j.mark(Integer.MAX_VALUE);
        } else {
            if (v.a()) {
                v.b("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
            }
            this.s = new DecodedStreamBuffer(this.k);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        e();
        this.r = null;
        this.p = this.o;
        if (this.j.markSupported()) {
            if (v.a()) {
                v.b("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
            }
            this.j.reset();
        } else {
            if (v.a()) {
                v.b("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
            }
            if (this.s == null) {
                throw new IOException("Cannot reset the stream because the mark is not set.");
            }
            this.s.c();
        }
        this.r = null;
        this.t = true;
        this.u = false;
    }

    public static long a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Nonnegative content length expected.");
        }
        long j2 = j / PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        long j3 = j % PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        return (j2 * b(PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) + (j3 > 0 ? b(j3) : 0L) + b(0L);
    }

    private static long b(long j) {
        return ((long) (Long.toHexString(j).length() + g.length() + 64 + "\r\n".length())) + j + ((long) "\r\n".length());
    }

    private boolean b() throws IOException {
        byte[] bArr;
        byte[] bArr2 = new byte[131072];
        int i2 = 0;
        while (i2 < 131072) {
            if (this.s != null && this.s.a()) {
                bArr2[i2] = this.s.b();
                i2++;
            } else {
                int i3 = this.j.read(bArr2, i2, 131072 - i2);
                if (i3 == -1) {
                    break;
                }
                if (this.s != null) {
                    this.s.a(bArr2, i2, i3);
                }
                i2 += i3;
            }
        }
        if (i2 == 0) {
            this.r = new ChunkContentIterator(a(i));
            return true;
        }
        if (i2 < bArr2.length) {
            bArr = new byte[i2];
            System.arraycopy(bArr2, 0, bArr, 0, i2);
        } else {
            bArr = bArr2;
        }
        this.r = new ChunkContentIterator(a(bArr));
        return false;
    }

    private byte[] a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(bArr.length));
        String strA = BinaryUtils.a(this.q.a("AWS4-HMAC-SHA256-PAYLOAD\n" + this.m + "\n" + this.n + "\n" + this.p + "\n" + BinaryUtils.a(this.q.d("")) + "\n" + BinaryUtils.a(this.q.a(bArr)), this.l, SigningAlgorithm.HmacSHA256));
        this.p = strA;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(g);
        sb2.append(strA);
        sb.append(sb2.toString());
        sb.append("\r\n");
        try {
            byte[] bytes = sb.toString().getBytes(StringUtils.a);
            byte[] bytes2 = "\r\n".getBytes(StringUtils.a);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e2) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e2.getMessage(), e2);
        }
    }

    @Override // com.amazonaws.internal.SdkInputStream
    protected InputStream a() {
        return this.j;
    }
}
