.class public Lorg/apache/xmlbeans/XmlSimpleList$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public i:Ljava/util/ListIterator;

.field private final synthetic this$0:Lorg/apache/xmlbeans/XmlSimpleList;

.field private final synthetic val$index:I


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlSimpleList;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->this$0:Lorg/apache/xmlbeans/XmlSimpleList;

    iput p2, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/xmlbeans/XmlSimpleList;->access$000(Lorg/apache/xmlbeans/XmlSimpleList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlSimpleList$2;->i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
