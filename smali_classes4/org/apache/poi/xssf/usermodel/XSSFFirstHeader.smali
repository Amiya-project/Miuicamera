.class public Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;
.super Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Header;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setDifferentFirst(Z)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->getFirstHeader()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->unsetFirstHeader()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFHeaderFooter;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->setFirstHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
