.class public Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

# interfaces
.implements Lorg/w3c/dom/DocumentFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentFragXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    return-void
.end method


# virtual methods
.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-object p0
.end method
