.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o000O0/OooO0O0;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO0oo/OooO00o/OooO0O0/o000O0/OooO0O0<",
        "LOooO0oo/OooO00o/OooO0O0/o00Ooo;",
        "LOooO0oo/OooO00o/OooO0O0/OooOo00;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljavax/net/SocketFactory;

.field private final OooO0O0:Ljavax/net/ssl/SSLSocketFactory;

.field private final OooO0OO:I

.field private final OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

.field private final OooO0o0:LOooO0oo/OooO00o/OooO0O0/Oooo000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0oo/OooO00o/OooO0O0/Oooo000<",
            "+",
            "LOooO0oo/OooO00o/OooO0O0/OooOo00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    sget-object v4, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    sget-object v5, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V

    return-void
.end method

.method public constructor <init>(ILOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;-><init>(Ljavax/net/ssl/SSLSocketFactory;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO00o:Ljavax/net/SocketFactory;

    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0O0:Ljavax/net/ssl/SSLSocketFactory;

    iput p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0OO:I

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    :goto_0
    iput-object p4, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    sget-object p5, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

    :goto_1
    invoke-direct {p1, p5}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0o0:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP params"

    invoke-static {p2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO00o:Ljavax/net/SocketFactory;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0O0:Ljavax/net/ssl/SSLSocketFactory;

    const-string p1, "http.connection.timeout"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->OooOO0(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0OO:I

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOO;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    move-result-object p1

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo;

    invoke-static {p2}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOO;->OooO00o(LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;

    move-result-object p2

    invoke-direct {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0o0:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    return-void
.end method

.method public static synthetic OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;)I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0OO:I

    return p0
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o00Ooo;

    invoke-virtual {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o00Ooo;)LOooO0oo/OooO00o/OooO0O0/OooOo00;

    move-result-object p0

    return-object p0
.end method

.method public OooO0OO(Ljava/net/Socket;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)LOooO0oo/OooO00o/OooO0O0/OooOo00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "http.socket.buffer-size"

    const/16 v0, 0x2000

    invoke-interface {p2, p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;->OooOO0(Ljava/lang/String;I)I

    move-result p0

    new-instance p2, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo00;

    invoke-direct {p2, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo00;-><init>(I)V

    invoke-virtual {p2, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOo00;->OooO0oO(Ljava/net/Socket;)V

    return-object p2
.end method

.method public OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o00Ooo;)LOooO0oo/OooO00o/OooO0O0/OooOo00;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "https"

    if-eqz v2, :cond_1

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO00o:Ljavax/net/SocketFactory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0O0:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;->OooO0Oo()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;->OooO0o0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v4, 0x50

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o00Ooo;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v4, 0x1bb

    :cond_4
    :goto_2
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_5
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o0()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0o0()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_6
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooOO0o()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooO0oo()I

    move-result p1

    if-ltz p1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_7
    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0Oo:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;

    invoke-virtual {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooOO0;->OooOO0()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :try_start_0
    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o$OooO00o;

    invoke-direct {v1, p0, v0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o$OooO00o;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;Ljava/net/Socket;Ljava/net/InetSocketAddress;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO00o;->OooO0o0:LOooO0oo/OooO00o/OooO0O0/Oooo000;

    invoke-interface {p0, v0}, LOooO0oo/OooO00o/OooO0O0/Oooo000;->OooO00o(Ljava/net/Socket;)LOooO0oo/OooO00o/OooO0O0/OooOo;

    move-result-object p0

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/OooOo00;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method contract violation only checked exceptions are wrapped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0O0;->OooO00o(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " scheme is not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
