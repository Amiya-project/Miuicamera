.class public Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/UnionDocumentImpl$UnionImpl$MemberTypesImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlListImpl;

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union$MemberTypes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/UnionDocumentImpl$UnionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberTypesImpl"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-void
.end method
