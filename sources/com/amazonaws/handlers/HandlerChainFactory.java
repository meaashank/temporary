package com.amazonaws.handlers;

import com.amazonaws.AmazonClientException;
import com.amazonaws.util.ClassLoaderHelper;
import com.amazonaws.util.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HandlerChainFactory {
    public List<RequestHandler2> a(String str) {
        return a(str, RequestHandler.class);
    }

    public List<RequestHandler2> b(String str) {
        return a(str, RequestHandler2.class);
    }

    private List<RequestHandler2> a(String str, Class<?> cls) throws Throwable {
        BufferedReader bufferedReader;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                InputStream resourceAsStream = getClass().getResourceAsStream(str);
                if (resourceAsStream == null) {
                    return arrayList;
                }
                bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, StringUtils.a));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            String strTrim = line.trim();
                            if (!"".equals(strTrim)) {
                                Object objNewInstance = ClassLoaderHelper.loadClass(strTrim, cls, getClass()).newInstance();
                                if (cls.isInstance(objNewInstance)) {
                                    if (cls == RequestHandler2.class) {
                                        arrayList.add((RequestHandler2) objNewInstance);
                                    } else if (cls == RequestHandler.class) {
                                        arrayList.add(RequestHandler2.a((RequestHandler) objNewInstance));
                                    } else {
                                        throw new IllegalStateException();
                                    }
                                } else {
                                    throw new AmazonClientException("Unable to instantiate request handler chain for client.  Listed request handler ('" + strTrim + "') does not implement the " + cls + " API.");
                                }
                            }
                        } else {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused) {
                            }
                            return arrayList;
                        }
                    } catch (Exception e) {
                        e = e;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception e2) {
            e = e2;
        }
        throw new AmazonClientException("Unable to instantiate request handler chain for client: " + e.getMessage(), e);
    }
}
