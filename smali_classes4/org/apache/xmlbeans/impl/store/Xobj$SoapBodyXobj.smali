.class public Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;

# interfaces
.implements Lorg/apache/xmlbeans/impl/soap/SOAPBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoapBodyXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public addBodyElement(Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method

.method public addDocument(Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_addDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method

.method public addFault()Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public addFault(Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public addFault(Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/soap/SOAPException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_addFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public getFault()Lorg/apache/xmlbeans/impl/soap/SOAPFault;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_getFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method

.method public hasFault()Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapBody_hasFault(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result p0

    return p0
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyXobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method
