.class public final Lorg/apache/poi/poifs/property/RootProperty;
.super Lorg/apache/poi/poifs/property/DirectoryProperty;


# static fields
.field private static final NAME:Ljava/lang/String; = "Root Entry"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Root Entry"

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setNodeColor(B)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setPropertyType(B)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(I[BI)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Root Entry"

    return-object p0
.end method

.method public setSize(I)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/poifs/storage/SmallDocumentBlock;->calcSize(I)I

    move-result p1

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/property/Property;->setSize(I)V

    return-void
.end method
