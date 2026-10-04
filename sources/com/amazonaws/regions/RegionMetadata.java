package com.amazonaws.regions;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RegionMetadata {
    private final List<Region> a;

    public RegionMetadata(List<Region> list) {
        if (list == null) {
            throw new IllegalArgumentException("regions cannot be null");
        }
        this.a = Collections.unmodifiableList(new ArrayList(list));
    }

    public List<Region> a() {
        return this.a;
    }

    public Region a(String str) {
        for (Region region : this.a) {
            if (region.a().equals(str)) {
                return region;
            }
        }
        return null;
    }

    public List<Region> b(String str) {
        LinkedList linkedList = new LinkedList();
        for (Region region : this.a) {
            if (region.c(str)) {
                linkedList.add(region);
            }
        }
        return linkedList;
    }

    public Region c(String str) {
        String strD = d(str);
        for (Region region : this.a) {
            Iterator<String> it = region.c().values().iterator();
            while (it.hasNext()) {
                if (strD.equals(d(it.next()))) {
                    return region;
                }
            }
        }
        throw new IllegalArgumentException("No region found with any service for endpoint " + str);
    }

    private static String d(String str) {
        String host = URI.create(str).getHost();
        if (host != null) {
            return host;
        }
        return URI.create("http://" + str).getHost();
    }

    public String toString() {
        return this.a.toString();
    }
}
