.class public interface abstract Lcom/xiaomi/idm/compat/proto/IPCParam$SendBlockConfigurationOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendBlockConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMaxParallelTask()I
.end method

.method public abstract getServiceId()Ljava/lang/String;
.end method

.method public abstract getServiceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSizePerPacket()I
.end method

.method public abstract getTimeout()J
.end method
