.class public Lokhttp3/internal/http2/Http2Connection$3;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->writePingLater(ZIILokhttp3/internal/http2/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic val$payload1:I

.field public final synthetic val$payload2:I

.field public final synthetic val$ping:Lokhttp3/internal/http2/Ping;

.field public final synthetic val$reply:Z


# direct methods
.method public varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/http2/Ping;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    iput p5, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    iput p6, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    iput-object p7, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$ping:Lokhttp3/internal/http2/Ping;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$ping:Lokhttp3/internal/http2/Ping;

    invoke-virtual {v0, v1, v2, v3, p0}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZIILokhttp3/internal/http2/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
