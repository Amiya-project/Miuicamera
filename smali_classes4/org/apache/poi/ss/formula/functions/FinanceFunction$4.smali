.class public final Lorg/apache/poi/ss/formula/functions/FinanceFunction$4;
.super Lorg/apache/poi/ss/formula/functions/FinanceFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/FinanceFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/FinanceFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(DDDDZ)D
    .locals 0

    invoke-static/range {p1 .. p9}, Lorg/apache/poi/ss/formula/functions/FinanceLib;->pv(DDDDZ)D

    move-result-wide p0

    return-wide p0
.end method
