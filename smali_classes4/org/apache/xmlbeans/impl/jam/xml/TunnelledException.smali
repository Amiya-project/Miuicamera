.class public Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private mXSE:Ljavax/xml/stream/XMLStreamException;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;->mXSE:Ljavax/xml/stream/XMLStreamException;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;->mXSE:Ljavax/xml/stream/XMLStreamException;

    return-void
.end method


# virtual methods
.method public getXMLStreamException()Ljavax/xml/stream/XMLStreamException;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/jam/xml/TunnelledException;->mXSE:Ljavax/xml/stream/XMLStreamException;

    return-object p0
.end method
