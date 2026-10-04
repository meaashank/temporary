###### Class com.amazonaws.services.s3.Headers (com.amazonaws.services.s3.Headers)
.class public interface abstract Lcom/amazonaws/services/s3/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final A:Ljava/lang/String; = "x-amz-server-side-encryption-aws-kms-key-id"

.field public static final B:Ljava/lang/String; = "x-amz-server-side-encryption-customer-algorithm"

.field public static final C:Ljava/lang/String; = "x-amz-server-side-encryption-customer-key"

.field public static final D:Ljava/lang/String; = "x-amz-server-side-encryption-customer-key-MD5"

.field public static final E:Ljava/lang/String; = "x-amz-copy-source-server-side-encryption-customer-algorithm"

.field public static final F:Ljava/lang/String; = "x-amz-copy-source-server-side-encryption-customer-key"

.field public static final G:Ljava/lang/String; = "x-amz-copy-source-server-side-encryption-customer-key-MD5"

.field public static final H:Ljava/lang/String; = "x-amz-expiration"

.field public static final I:Ljava/lang/String; = "Expires"

.field public static final J:Ljava/lang/String; = "x-amz-copy-source-if-match"

.field public static final K:Ljava/lang/String; = "x-amz-copy-source-if-none-match"

.field public static final L:Ljava/lang/String; = "x-amz-copy-source-if-unmodified-since"

.field public static final M:Ljava/lang/String; = "x-amz-copy-source-if-modified-since"

.field public static final N:Ljava/lang/String; = "Range"

.field public static final O:Ljava/lang/String; = "x-amz-copy-source-range"

.field public static final P:Ljava/lang/String; = "If-Modified-Since"

.field public static final Q:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final R:Ljava/lang/String; = "If-Match"

.field public static final S:Ljava/lang/String; = "If-None-Match"

.field public static final T:Ljava/lang/String; = "x-amz-key"

.field public static final U:Ljava/lang/String; = "x-amz-key-v2"

.field public static final V:Ljava/lang/String; = "x-amz-iv"

.field public static final W:Ljava/lang/String; = "x-amz-matdesc"

.field public static final X:Ljava/lang/String; = "x-amz-crypto-instr-file"

.field public static final Y:Ljava/lang/String; = "x-amz-unencrypted-content-length"

.field public static final Z:Ljava/lang/String; = "x-amz-unencrypted-content-md5"

.field public static final a:Ljava/lang/String; = "Cache-Control"

.field public static final aa:Ljava/lang/String; = "x-amz-website-redirect-location"

.field public static final ab:Ljava/lang/String; = "x-amz-restore"

.field public static final ac:Ljava/lang/String; = "x-amz-wrap-alg"

.field public static final ad:Ljava/lang/String; = "x-amz-cek-alg"

.field public static final ae:Ljava/lang/String; = "x-amz-tag-len"

.field public static final af:Ljava/lang/String; = "x-amz-request-payer"

.field public static final ag:Ljava/lang/String; = "x-amz-request-charged"

.field public static final ah:Ljava/lang/String; = "x-amz-replication-status"

.field public static final ai:Ljava/lang/String; = "x-amz-region"

.field public static final aj:Ljava/lang/String; = "x-amz-bucket-region"

.field public static final ak:Ljava/lang/String; = "x-amz-abort-date"

.field public static final al:Ljava/lang/String; = "x-amz-abort-rule-id"

.field public static final am:Ljava/lang/String; = "x-amz-mp-parts-count"

.field public static final an:Ljava/lang/String; = "x-amz-tagging"

.field public static final ao:Ljava/lang/String; = "x-amz-tagging-count"

.field public static final ap:Ljava/lang/String; = "x-amz-tagging-directive"

.field public static final b:Ljava/lang/String; = "Content-Disposition"

.field public static final c:Ljava/lang/String; = "Content-Encoding"

.field public static final d:Ljava/lang/String; = "Content-Length"

.field public static final e:Ljava/lang/String; = "Content-Range"

.field public static final f:Ljava/lang/String; = "Content-MD5"

.field public static final g:Ljava/lang/String; = "Content-Type"

.field public static final h:Ljava/lang/String; = "Content-Language"

.field public static final i:Ljava/lang/String; = "Date"

.field public static final j:Ljava/lang/String; = "ETag"

.field public static final k:Ljava/lang/String; = "Last-Modified"

.field public static final l:Ljava/lang/String; = "Server"

.field public static final m:Ljava/lang/String; = "Connection"

.field public static final n:Ljava/lang/String; = "x-amz-"

.field public static final o:Ljava/lang/String; = "x-amz-acl"

.field public static final p:Ljava/lang/String; = "x-amz-date"

.field public static final q:Ljava/lang/String; = "x-amz-meta-"

.field public static final r:Ljava/lang/String; = "x-amz-version-id"

.field public static final s:Ljava/lang/String; = "x-amz-mfa"

.field public static final t:Ljava/lang/String; = "x-amz-request-id"

.field public static final u:Ljava/lang/String; = "x-amz-id-2"

.field public static final v:Ljava/lang/String; = "X-Amz-Cf-Id"

.field public static final w:Ljava/lang/String; = "x-amz-metadata-directive"

.field public static final x:Ljava/lang/String; = "x-amz-security-token"

.field public static final y:Ljava/lang/String; = "x-amz-storage-class"

.field public static final z:Ljava/lang/String; = "x-amz-server-side-encryption"
