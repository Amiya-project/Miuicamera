.class public interface abstract Lcom/xiaomi/idm/compat/proto/IPCParam$ClientOnAccountChangedOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientOnAccountChangedOrBuilder"
.end annotation


# virtual methods
.method public abstract getNewIdHash()Ljava/lang/String;
.end method

.method public abstract getNewIdHashBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;
.end method

.method public abstract getSubChangeTypeValue()I
.end method
