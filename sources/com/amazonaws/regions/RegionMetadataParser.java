package com.amazonaws.regions;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RegionMetadataParser {
    private static final String a = "Region";
    private static final String b = "Name";
    private static final String c = "Domain";
    private static final String d = "Endpoint";
    private static final String e = "ServiceName";
    private static final String f = "Http";
    private static final String g = "Https";
    private static final String h = "Hostname";

    public static RegionMetadata a(InputStream inputStream) {
        return new RegionMetadata(b(inputStream, false));
    }

    @Deprecated
    public RegionMetadataParser() {
    }

    @Deprecated
    public List<Region> b(InputStream inputStream) {
        return b(inputStream, false);
    }

    @Deprecated
    public List<Region> a(InputStream inputStream, boolean z) {
        return b(inputStream, z);
    }

    private static List<Region> b(InputStream inputStream, boolean z) {
        try {
            try {
                NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getElementsByTagName(a);
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < elementsByTagName.getLength(); i++) {
                    Node nodeItem = elementsByTagName.item(i);
                    if (nodeItem.getNodeType() == 1) {
                        arrayList.add(a((Element) nodeItem, z));
                    }
                }
                return arrayList;
            } finally {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
        } catch (IOException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new IOException("Unable to parse region metadata file: " + e3.getMessage(), e3);
        }
    }

    private static Region a(Element element, boolean z) {
        Region region = new Region(a("Name", element), a(c, element));
        NodeList elementsByTagName = element.getElementsByTagName(d);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            a(region, (Element) elementsByTagName.item(i), z);
        }
        return region;
    }

    private static void a(Region region, Element element, boolean z) {
        String strA = a(e, element);
        String strA2 = a(h, element);
        String strA3 = a(f, element);
        String strA4 = a(g, element);
        if (z && !a(strA2)) {
            throw new IllegalStateException("Invalid service endpoint (" + strA2 + ") is detected.");
        }
        region.c().put(strA, strA2);
        region.d().put(strA, Boolean.valueOf("true".equals(strA3)));
        region.e().put(strA, Boolean.valueOf("true".equals(strA4)));
    }

    private static String a(String str, Element element) {
        Node nodeItem = element.getElementsByTagName(str).item(0);
        if (nodeItem == null) {
            return null;
        }
        return nodeItem.getChildNodes().item(0).getNodeValue();
    }

    private static boolean a(String str) {
        return str.endsWith(".amazonaws.com");
    }
}
