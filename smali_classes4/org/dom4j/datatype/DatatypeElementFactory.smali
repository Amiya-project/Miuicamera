.class public Lorg/dom4j/datatype/DatatypeElementFactory;
.super Lorg/dom4j/DocumentFactory;


# instance fields
.field private attributeXSDatatypes:Ljava/util/Map;

.field private childrenXSDatatypes:Ljava/util/Map;

.field private elementQName:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 1

    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->attributeXSDatatypes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->childrenXSDatatypes:Ljava/util/Map;

    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->elementQName:Lorg/dom4j/QName;

    return-void
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1

    invoke-virtual {p0, p2}, Lorg/dom4j/datatype/DatatypeElementFactory;->getAttributeXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/dom4j/datatype/DatatypeAttribute;

    invoke-direct {p0, p2, v0, p3}, Lorg/dom4j/datatype/DatatypeAttribute;-><init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;Ljava/lang/String;)V

    return-object p0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeElementFactory;->getChildElementXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/dom4j/datatype/DatatypeElement;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/datatype/DatatypeElement;-><init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    instance-of v1, v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/datatype/DatatypeElementFactory;->getChildElementXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/dom4j/datatype/DatatypeElement;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/datatype/DatatypeElement;-><init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->attributeXSDatatypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-object p0
.end method

.method public getChildElementXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->childrenXSDatatypes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-object p0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->elementQName:Lorg/dom4j/QName;

    return-object p0
.end method

.method public setAttributeXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 0

    iget-object p0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->attributeXSDatatypes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setChildElementXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 0

    iget-object p0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->childrenXSDatatypes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
