.class public Lorg/dom4j/io/PruningDispatchHandler;
.super Lorg/dom4j/io/DispatchHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/dom4j/io/DispatchHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    invoke-virtual {p0}, Lorg/dom4j/io/DispatchHandler;->getActiveHandlerCount()I

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object p0

    invoke-interface {p0}, Lorg/dom4j/Node;->detach()Lorg/dom4j/Node;

    :cond_0
    return-void
.end method
