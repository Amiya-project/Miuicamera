.class public final Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;
.super Lorg/apache/xmlbeans/impl/store/Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaxSaver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field private _buf:[C

.field private _contentHandler:Lorg/xml/sax/ContentHandler;

.field private _lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->class$org$apache$xmlbeans$impl$store$Saver:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Saver"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Saver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->class$org$apache$xmlbeans$impl$store$Saver:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_attributes:Lorg/xml/sax/helpers/AttributesImpl;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result p1
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;->_saxException:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method private emitNamespacesHelper()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0, v6}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_attributes:Lorg/xml/sax/helpers/AttributesImpl;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "http://www.w3.org/2000/xmlns/"

    const-string v3, ""

    const-string v5, "CDATA"

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_attributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v2, "http://www.w3.org/2000/xmlns/"

    const-string v3, ""

    const-string/jumbo v4, "xmlns"

    const-string v5, "CDATA"

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw v1

    :cond_2
    return-void
.end method

.method private getPrefixedName(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, [C

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    check-cast v0, [C

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    if-eqz v2, :cond_2

    array-length v2, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    if-ge v2, v3, :cond_3

    :cond_2
    const/16 v2, 0x400

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v4, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-static {v2, v1, v0, v3, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-interface {v0, v2, v1, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->emitNamespacesHelper()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->getPrefixedName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v7, "CDATA"

    invoke-virtual/range {v3 .. v8}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->emitNamespacesHelper()V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->getPrefixedName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {p2, p3, v1, p1, v2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw p2
.end method

.method public emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->getPrefixedName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw v0
.end method

.method public emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw v0
.end method

.method public emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, [C

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, [C

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-interface {v1, v0, v2, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    if-nez v1, :cond_3

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    :cond_3
    :goto_1
    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    if-lez v1, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    array-length v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v3, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;->_buf:[C

    invoke-interface {v2, v3, v4, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    add-int/2addr v2, v1

    iput v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    sub-int/2addr v2, v1

    iput v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V

    throw v0
.end method
