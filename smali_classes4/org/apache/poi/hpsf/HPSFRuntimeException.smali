.class public Lorg/apache/poi/hpsf/HPSFRuntimeException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = -0x6c4e57bc3addbe77L


# instance fields
.field private reason:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;->reason:Ljava/lang/Throwable;

    return-object p0
.end method
