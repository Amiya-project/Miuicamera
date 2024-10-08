.class public Lorg/dom4j/tree/FlyweightProcessingInstruction;
.super Lorg/dom4j/tree/AbstractProcessingInstruction;


# instance fields
.field public target:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public values:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractProcessingInstruction;->parseValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 2

    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getValues()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This PI is read-only and cannot be modified"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
