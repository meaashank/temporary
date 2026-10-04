package com.amazonaws.regions;

import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RegionUtils {
    private static List<Region> a;
    private static final Log b = LogFactory.a("com.amazonaws.request");

    public static synchronized List<Region> a() {
        if (a == null) {
            b();
        }
        return a;
    }

    public static synchronized List<Region> a(String str) {
        LinkedList linkedList;
        linkedList = new LinkedList();
        for (Region region : a()) {
            if (region.c(str)) {
                linkedList.add(region);
            }
        }
        return linkedList;
    }

    public static Region b(String str) {
        for (Region region : a()) {
            if (region.a().equals(str)) {
                return region;
            }
        }
        return null;
    }

    public static Region c(String str) {
        String host = d(str).getHost();
        for (Region region : a()) {
            Iterator<String> it = region.c().values().iterator();
            while (it.hasNext()) {
                if (d(it.next()).getHost().equals(host)) {
                    return region;
                }
            }
        }
        throw new IllegalArgumentException("No region found with any service for endpoint " + str);
    }

    public static synchronized void b() {
        if (System.getProperty(SDKGlobalConfiguration.f) != null) {
            try {
                c();
            } catch (FileNotFoundException e) {
                throw new RuntimeException("Couldn't find regions override file specified", e);
            }
        }
        if (a == null) {
            d();
        }
        if (a == null) {
            throw new RuntimeException("Failed to initialize the regions.");
        }
    }

    private static void c() {
        String property = System.getProperty(SDKGlobalConfiguration.f);
        if (b.a()) {
            b.b("Using local override of the regions file (" + property + ") to initiate regions data...");
        }
        a(new FileInputStream(new File(property)));
    }

    private static void a(InputStream inputStream) {
        try {
            a = new RegionMetadataParser().b(inputStream);
        } catch (Exception e) {
            b.d("Failed to parse regional endpoints", e);
        }
    }

    private static void d() {
        if (b.a()) {
            b.b("Initializing the regions with default regions");
        }
        a = RegionDefaults.a();
    }

    private static URI d(String str) {
        try {
            URI uri = new URI(str);
            if (uri.getHost() != null) {
                return uri;
            }
            return new URI("http://" + str);
        } catch (URISyntaxException e) {
            throw new RuntimeException("Unable to parse service endpoint: " + e.getMessage());
        }
    }
}
