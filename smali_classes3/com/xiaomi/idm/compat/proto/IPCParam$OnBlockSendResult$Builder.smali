.class public final Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2200()Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/compat/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-static {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2700(Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;)V

    return-object p0
.end method

.method public clearHead()Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-static {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2500(Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;)V

    return-object p0
.end method

.method public getCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->getCode()I

    move-result p0

    return p0
.end method

.method public getHead()Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->getHead()Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;

    move-result-object p0

    return-object p0
.end method

.method public hasHead()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->hasHead()Z

    move-result p0

    return p0
.end method

.method public mergeHead(Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2400(Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;)V

    return-object p0
.end method

.method public setCode(I)Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2600(Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;I)V

    return-object p0
.end method

.method public setHead(Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead$Builder;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2300(Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;)V

    return-object p0
.end method

.method public setHead(Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;->access$2300(Lcom/xiaomi/idm/compat/proto/IPCParam$OnBlockSendResult;Lcom/xiaomi/idm/compat/proto/IPCParam$TransHead;)V

    return-object p0
.end method
