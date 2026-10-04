###### Class com.google.android.exoplayer2.upstream.UdpDataSource (com.google.android.exoplayer2.upstream.UdpDataSource)
.class public final Lcom/google/android/exoplayer2/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEAFULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/UdpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;

.field private final socketTimeoutMillis:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/UdpDataSource;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x7d0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/UdpDataSource;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x1f40

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/UdpDataSource;",
            ">;II)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 92
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    .line 93
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    .line 94
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_10

    .line 166
    :try_start_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_e

    .line 170
    :catch_e
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 172
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1b

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 176
    :cond_1b
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 177
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 179
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->opened:Z

    if-eqz v1, :cond_31

    .line 180
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->opened:Z

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_31

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 5

    .line 99
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 104
    :try_start_10
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 105
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 107
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_45

    .line 111
    :cond_3c
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_45} :catch_62

    .line 118
    :goto_45
    :try_start_45
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_4c
    .catch Ljava/net/SocketException; {:try_start_45 .. :try_end_4c} :catch_5b

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->opened:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_58

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :cond_58
    const-wide/16 v0, -0x1

    return-wide v0

    :catch_5b
    move-exception p1

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_62
    move-exception p1

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_2a

    .line 139
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_23

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2a

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_2a

    :catch_23
    move-exception p1

    .line 141
    new-instance p2, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 149
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 150
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    return p3
.end method

###### Class com.google.android.exoplayer2.upstream.UdpDataSource.UdpDataSourceException (com.google.android.exoplayer2.upstream.UdpDataSource$UdpDataSourceException)
.class public final Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
.super Ljava/io/IOException;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/UdpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdpDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
