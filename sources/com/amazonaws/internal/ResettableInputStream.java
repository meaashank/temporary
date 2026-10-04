package com.amazonaws.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public class ResettableInputStream extends ReleasableInputStream {
    private static final Log a = LogFactory.a(ResettableInputStream.class);
    private final File b;
    private final FileInputStream c;
    private final FileChannel d;
    private long e;

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    public ResettableInputStream(File file) {
        this(new FileInputStream(file), file);
    }

    public ResettableInputStream(FileInputStream fileInputStream) {
        this(fileInputStream, null);
    }

    private ResettableInputStream(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.b = file;
        this.c = fileInputStream;
        this.d = fileInputStream.getChannel();
        this.e = this.d.position();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        f();
        try {
            this.e = this.d.position();
            if (a.d()) {
                a.a("File input stream marked at position " + this.e);
            }
        } catch (IOException e) {
            throw new AmazonClientException("Failed to mark the file position", e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        f();
        this.d.position(this.e);
        if (a.d()) {
            a.a("Reset to position " + this.e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        f();
        return this.c.available();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        f();
        return this.c.read();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        f();
        return this.c.skip(j);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        f();
        return this.c.read(bArr, i, i2);
    }

    public File e() {
        return this.b;
    }

    public static ResettableInputStream a(File file) {
        return a(file, (String) null);
    }

    public static ResettableInputStream a(File file, String str) {
        try {
            return new ResettableInputStream(file);
        } catch (IOException e) {
            if (str == null) {
                throw new AmazonClientException(e);
            }
            throw new AmazonClientException(str, e);
        }
    }

    public static ResettableInputStream a(FileInputStream fileInputStream) {
        return a(fileInputStream, (String) null);
    }

    public static ResettableInputStream a(FileInputStream fileInputStream, String str) {
        try {
            return new ResettableInputStream(fileInputStream);
        } catch (IOException e) {
            throw new AmazonClientException(str, e);
        }
    }
}
