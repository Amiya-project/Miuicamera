.class public abstract Ljavax/xml/transform/sax/SAXTransformerFactory;
.super Ljavax/xml/transform/TransformerFactory;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

.field public static final FEATURE_XMLFILTER:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/transform/TransformerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method
