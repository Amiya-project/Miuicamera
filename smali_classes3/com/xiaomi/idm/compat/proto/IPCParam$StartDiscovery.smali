.class public final Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscoveryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartDiscovery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;",
        ">;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscoveryOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

.field public static final DISCTYPE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICESECURITYTYPE_FIELD_NUMBER:I = 0x4

.field public static final SERVICETYPES_FIELD_NUMBER:I = 0x1

.field public static final SERVICEUUIDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private discType_:I

.field private serviceSecurityType_:I

.field private serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-direct {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    const-class v1, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$12100()Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object v0
.end method

.method public static synthetic access$12200(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->setServiceTypes(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12300(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->addServiceTypes(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12400(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->addAllServiceTypes(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$12500(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->clearServiceTypes()V

    return-void
.end method

.method public static synthetic access$12600(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->addServiceTypesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$12700(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->setServiceUuids(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12800(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->addServiceUuids(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12900(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->addAllServiceUuids(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$13000(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->clearServiceUuids()V

    return-void
.end method

.method public static synthetic access$13100(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->addServiceUuidsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$13200(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->setDiscType(I)V

    return-void
.end method

.method public static synthetic access$13300(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->clearDiscType()V

    return-void
.end method

.method public static synthetic access$13400(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->setServiceSecurityType(I)V

    return-void
.end method

.method public static synthetic access$13500(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->clearServiceSecurityType()V

    return-void
.end method

.method private addAllServiceTypes(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllServiceUuids(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addServiceTypes(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addServiceTypesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addServiceUuids(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addServiceUuidsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDiscType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->discType_:I

    return-void
.end method

.method private clearServiceSecurityType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceSecurityType_:I

    return-void
.end method

.method private clearServiceTypes()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearServiceUuids()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureServiceTypesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureServiceUuidsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDiscType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->discType_:I

    return-void
.end method

.method private setServiceSecurityType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceSecurityType_:I

    return-void
.end method

.method private setServiceTypes(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceTypesIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setServiceUuids(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->ensureServiceUuidsIsMutable()V

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "serviceTypes_"

    aput-object p3, p0, p2

    const-string p2, "serviceUuids_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "discType_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "serviceSecurityType_"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u021a\u0002\u021a\u0003\u0004\u0004\u0004"

    sget-object p2, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery$Builder;-><init>(Lcom/xiaomi/idm/compat/proto/IPCParam$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;-><init>()V

    return-object p0

    nop

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

.method public getDiscType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->discType_:I

    return p0
.end method

.method public getServiceSecurityType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceSecurityType_:I

    return p0
.end method

.method public getServiceTypes(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypesCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServiceTypesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceTypes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getServiceUuids(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServiceUuidsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$StartDiscovery;->serviceUuids_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
