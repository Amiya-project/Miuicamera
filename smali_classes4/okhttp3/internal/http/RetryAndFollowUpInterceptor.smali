.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    iput-boolean p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_0
    new-instance v1, Lokhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v0, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_9

    const/16 v4, 0x134

    if-eq v2, v4, :cond_9

    const/16 v4, 0x191

    if-eq v2, v4, :cond_8

    const/16 v4, 0x197

    if-eq v2, v4, :cond_5

    const/16 v0, 0x198

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v1

    :cond_1
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p0

    instance-of p0, p0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_7

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v2

    if-nez v2, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v2, v5, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    :cond_10
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_2
    if-nez v4, :cond_11

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_11
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "Authorization"

    invoke-virtual {v2, p0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_12
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 2

    instance-of p0, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_3

    return v0

    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private recover(Ljava/io/IOException;ZLokhttp3/Request;)Z
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p3

    instance-of p3, p3, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz p3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .locals 1

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result p1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v7

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v8

    new-instance v9, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v9

    move-object v1, v10

    :goto_0
    iget-boolean v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v3, :cond_a

    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1, v0, v3, v10, v10}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v11

    if-nez v11, :cond_2

    iget-boolean p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v12, v2, 0x1

    const/16 v1, 0x14

    if-gt v12, v1, :cond_6

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_5

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v13, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v13

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v13, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_1
    move-object v1, v0

    move-object v0, v11

    move v2, v12

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the body of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance p0, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result p1

    const-string v0, "Cannot retry streamed HTTP body"

    invoke-direct {p0, v0, p1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many follow-up requests: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    instance-of v4, v3, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v9

    :goto_2
    invoke-direct {p0, v3, v4, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    :cond_8
    throw v3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, v10}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    throw p1

    :cond_a
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return p0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object p0
.end method
