.class public final Lorg/apache/poi/ss/usermodel/charts/DataSources$1;
.super Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;->fromNumericCellRange(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method


# virtual methods
.method public getPointAt(I)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/charts/DataSources$1;->getPointAt(I)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public isNumeric()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
