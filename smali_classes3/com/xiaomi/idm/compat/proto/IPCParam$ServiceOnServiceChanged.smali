.class public final Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChangedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOnServiceChanged"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;,
        Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;",
        ">;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChangedOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

.field public static final NEWSERVICEID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICEID_FIELD_NUMBER:I = 0x1

.field public static final SUBCHANGETYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field private newServiceId_:Ljava/lang/String;

.field private serviceId_:Ljava/lang/String;

.field private subChangeType_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-direct {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    const-class v1, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->serviceId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->newServiceId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$39300()Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object v0
.end method

.method public static synthetic access$39400(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->setServiceId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$39500(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->clearServiceId()V

    return-void
.end method

.method public static synthetic access$39600(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->setServiceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$39700(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->setNewServiceId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$39800(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->clearNewServiceId()V

    return-void
.end method

.method public static synthetic access$39900(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->setNewServiceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$40000(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->setSubChangeTypeValue(I)V

    return-void
.end method

.method public static synthetic access$40100(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->setSubChangeType(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;)V

    return-void
.end method

.method public static synthetic access$40200(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->clearSubChangeType()V

    return-void
.end method

.method private clearNewServiceId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->getDefaultInstance()Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->getNewServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->newServiceId_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->getDefaultInstance()Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->serviceId_:Ljava/lang/String;

    return-void
.end method

.method private clearSubChangeType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->subChangeType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNewServiceId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->newServiceId_:Ljava/lang/String;

    return-void
.end method

.method private setNewServiceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->newServiceId_:Ljava/lang/String;

    return-void
.end method

.method private setServiceId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->serviceId_:Ljava/lang/String;

    return-void
.end method

.method private setServiceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->serviceId_:Ljava/lang/String;

    return-void
.end method

.method private setSubChangeType(Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->subChangeType_:I

    return-void
.end method

.method private setSubChangeTypeValue(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->subChangeType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "serviceId_"

    aput-object p3, p0, p2

    const-string p2, "newServiceId_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "subChangeType_"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000c"

    sget-object p2, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$Builder;-><init>(Lcom/xiaomi/idm/compat/proto/IPCParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNewServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->newServiceId_:Ljava/lang/String;

    return-object p0
.end method

.method public getNewServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->newServiceId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->serviceId_:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->serviceId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSubChangeType()Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->subChangeType_:I

    invoke-static {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;->forNumber(I)Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;->UNRECOGNIZED:Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;

    :cond_0
    return-object p0
.end method

.method public getSubChangeTypeValue()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$ServiceOnServiceChanged;->subChangeType_:I

    return p0
.end method
