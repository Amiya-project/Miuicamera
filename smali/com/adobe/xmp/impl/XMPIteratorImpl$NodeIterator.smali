.class public Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeIterator"
.end annotation


# static fields
.field public static final ITERATE_CHILDREN:I = 0x1

.field public static final ITERATE_NODE:I = 0x0

.field public static final ITERATE_QUALIFIER:I = 0x2


# instance fields
.field private childrenIterator:Ljava/util/Iterator;

.field private index:I

.field private path:Ljava/lang/String;

.field private returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

.field private state:I

.field private subIterator:Ljava/util/Iterator;

.field public final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

.field private visitedNode:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    iput p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    return-void
.end method

.method private iterateChildren(Ljava/util/Iterator;)Z
    .locals 6

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-boolean v1, v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/impl/XMPNode;

    iget v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    new-instance v3, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-object v5, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    invoke-direct {v3, v4, p1, v5, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    :cond_1
    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "/"

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafname()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 7

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    new-instance v0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v0
.end method

.method public getChildrenIterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public getReturnProperty()Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-object p0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->reportNode()Z

    move-result p0

    return p0

    :cond_1
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/IteratorOptions;->isOmitQualifiers()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    :cond_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    :cond_5
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "There are no more nodes to return"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public reportNode()Z
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafnodes()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public setChildrenIterator(Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    return-void
.end method

.method public setReturnProperty(Lcom/adobe/xmp/properties/XMPPropertyInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-void
.end method
