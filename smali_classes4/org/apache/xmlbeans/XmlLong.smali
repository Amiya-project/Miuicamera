.class public interface abstract Lorg/apache/xmlbeans/XmlLong;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlbeans/XmlInteger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/XmlLong$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "_BI_long"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlLong;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getLongValue()J
.end method

.method public abstract longValue()J
.end method

.method public abstract set(J)V
.end method

.method public abstract setLongValue(J)V
.end method
