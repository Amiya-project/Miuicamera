.class public interface abstract LOooOO0o/OooOo00;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooOO0o/OooOo00$OooO00o;
    }
.end annotation


# static fields
.field public static final o0ooOOo:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, LOooOO0o/OooOo00;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sE130CAA0A01A7CDE5A2B4FEB8B311707"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctfbc3atype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, LOooOO0o/OooOo00;->o0ooOOo:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract o0OoOOo0(Ljava/lang/String;)V
.end method

.method public abstract o0o0Oo0()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract oOoo0oO0(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract oo000O0o()Ljava/lang/String;
.end method

.method public abstract oo0O00oO()Z
.end method

.method public abstract oo0o0O0o()V
.end method
