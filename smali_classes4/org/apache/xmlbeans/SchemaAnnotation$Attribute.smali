.class public interface abstract Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/SchemaAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Attribute"
.end annotation


# virtual methods
.method public abstract getName()Ljavax/xml/namespace/QName;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getValueUri()Ljava/lang/String;
.end method
