.class public final Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;",
        ">;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->access$17200()Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/compat/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConnLevel()Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->access$17700(Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;)V

    return-object p0
.end method

.method public clearServiceId()Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->access$17400(Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;)V

    return-object p0
.end method

.method public getConnLevel()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->getConnLevel()I

    move-result p0

    return p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setConnLevel(I)Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->access$17600(Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;I)V

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->access$17300(Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;->access$17500(Lcom/xiaomi/idm/compat/proto/IPCParam$ClientAcceptConnection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
