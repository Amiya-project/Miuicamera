.class public Lorg/dom4j/io/SAXModifyReader;
.super Lorg/dom4j/io/SAXReader;


# instance fields
.field private pruneElements:Z

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/io/SAXReader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .locals 2

    new-instance p1, Lorg/dom4j/io/SAXModifyContentHandler;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/dom4j/io/SAXModifyContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    iget-object p0, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {p1, p0}, Lorg/dom4j/io/SAXModifyContentHandler;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    return-object p1
.end method

.method public getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object p0
.end method

.method public isPruneElements()Z
    .locals 0

    iget-boolean p0, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    return p0
.end method

.method public setPruneElements(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0

    iput-object p1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-void
.end method
