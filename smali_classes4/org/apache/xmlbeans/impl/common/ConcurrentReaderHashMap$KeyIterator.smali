.class public Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$KeyIterator;
.super Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$HashIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$KeyIterator;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$HashIterator;-><init>(Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;)V

    return-void
.end method


# virtual methods
.method public returnValueOfNext()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    return-object p0
.end method
