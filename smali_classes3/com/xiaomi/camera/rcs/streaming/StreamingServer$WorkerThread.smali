.class public Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;
.super Ljava/lang/Thread;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerThread"
.end annotation


# instance fields
.field private final mClient:Ljava/net/Socket;

.field private final mInput:Ljava/io/BufferedReader;

.field private final mOutput:Ljava/io/OutputStream;

.field private mSession:Lnet/majorkernelpanic/streaming/Session;

.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            "this$0",
            "client"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    new-instance p1, Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p1}, Lnet/majorkernelpanic/streaming/Session;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    return-void
.end method

.method private isAuthorized(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    iget-object p1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v0, "authorization"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$600(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$600(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public processRequest(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->isAuthorized(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "OPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "WWW-Authenticate: Basic realm=\"XMRCSS\"\r\n"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    const-string p0, "401 Unauthorized"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "DESCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object p1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$000(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/util/WeakHashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->syncConfigure()V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getSessionDescription()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/\r\nContent-Type: application/sdp\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->content:Ljava/lang/String;

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "OPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Public: DESCRIBE,SETUP,TEARDOWN,PLAY,PAUSE,SET_PARAMETER,GET_PARAMETER\r\n"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_2
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "SETUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const-string v1, "trackID=(\\w+)"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v5, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->uri:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_3

    const-string p0, "400 Bad Request"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v5, v1}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v5

    if-nez v5, :cond_4

    const-string p0, "404 Not Found"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    return-object v0

    :cond_4
    const-string v5, "client_port=(\\d+)(?:-(\\d+))?"

    invoke-static {v5, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object p1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v6, "transport"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object p1

    invoke-interface {p1}, Lnet/majorkernelpanic/streaming/Stream;->getDestinationPorts()[I

    move-result-object p1

    aget v5, p1, v2

    aget p1, p1, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    add-int/lit8 p1, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iget-object v6, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v6, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v6

    invoke-interface {v6}, Lnet/majorkernelpanic/streaming/Stream;->getSSRC()I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v7, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v7

    invoke-interface {v7}, Lnet/majorkernelpanic/streaming/Stream;->getLocalPorts()[I

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v8}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v9, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v9

    invoke-interface {v9, v5, p1}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationPorts(II)V

    iget-object v9, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v9}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v9

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SETUP -> before: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    monitor-enter v10

    if-ne v1, v3, :cond_9

    :try_start_0
    iget-object v11, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v12, v11, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSharedVideoEncoder:Landroid/media/MediaCodec;

    if-nez v12, :cond_7

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "create shared video codec"

    invoke-static {v11, v12}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v12, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v12}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v12

    invoke-virtual {v12}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    iget-object v13, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v13}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v13

    invoke-virtual {v13}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->createVideoEncoder(Landroid/content/SharedPreferences;Lnet/majorkernelpanic/streaming/video/VideoQuality;)V

    goto :goto_1

    :cond_7
    iget-object v11, v11, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSharedVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget-object v12, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v12}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v12

    invoke-virtual {v12}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "video quality matched"

    invoke-static {v11, v12}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v11, v3

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "video quality does not match"

    invoke-static {v11, v12}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_9
    :goto_2
    move v11, v2

    :goto_3
    iget-object v12, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v12, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v12

    invoke-interface {v12, v11}, Lnet/majorkernelpanic/streaming/Stream;->setUseSharedMediaCodec(Z)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v10, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v10, v1}, Lnet/majorkernelpanic/streaming/Session;->syncStart(I)V

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SETUP ->  after: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v11}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_a

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v9, "SETUP -> send STATE_STREAMING_STARTED"

    invoke-static {v1, v9}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v9, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v9, v4}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingSessionState(Lnet/majorkernelpanic/streaming/Session;I)V

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport: RTP/AVP/UDP;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "multicast"

    goto :goto_4

    :cond_b
    const-string v4, "unicast"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";destination="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";client_port="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";server_port="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v7, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v7, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";ssrc="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";mode=play\r\nSession: 1185d20035702ca\r\nCache-Control: no-cache\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :goto_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v4, "PLAY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p1, "RTP-Info: "

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "url=rtsp://"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/trackID="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";seq=0,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v3}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "url=rtsp://"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/trackID="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";seq=0,"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nSession: 1185d20035702ca\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_10
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "TEARDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEARDOWN -> session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_11
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "GET_PARAMETER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_PARAMETER -> session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    iget-object v1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v2, "SET_PARAMETER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET_PARAMETER -> session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$400(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$400(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->content:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;->handleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_13

    const-string p1, "Content-Type: application/json\r\n"

    iput-object p1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->content:Ljava/lang/String;

    :cond_13
    const-string p0, "200 OK"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto :goto_6

    :cond_14
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "400 Bad Request"

    iput-object p0, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    :goto_6
    return-object v0
.end method

.method public run()V
    .locals 5

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request comes from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->parseRequest(Ljava/io/BufferedReader;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_0
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown request from client"

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    invoke-direct {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;-><init>()V

    const-string v2, "400 Bad Request"

    iput-object v2, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->processRequest(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_0
    const-string v1, "An error occurred"

    :goto_2
    invoke-static {v2, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingServerState(I)V

    new-instance v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    invoke-direct {v1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)V

    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->send(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response was not sent properly"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client has left"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->syncStop()V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingSessionState(Lnet/majorkernelpanic/streaming/Session;I)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$000(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->release()V

    :try_start_3
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WorkerThread: Client disconnected"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
