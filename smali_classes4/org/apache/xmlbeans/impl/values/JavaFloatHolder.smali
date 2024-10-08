.class public abstract Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;


# instance fields
.field private _value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    return-void
.end method

.method public static compare(FF)I
    .locals 3

    cmpg-float v0, p0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ge p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public static serialize(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "INF"

    return-object p0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "-INF"

    return-object p0

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    const-string p0, "NaN"

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)F
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexFloat(Ljava/lang/CharSequence;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "float"

    invoke-interface {p1, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method


# virtual methods
.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    new-instance v0, Ljava/math/BigDecimal;

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result p0

    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->serialize(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public floatValue()F
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    return p0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_FLOAT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->set_float(F)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->set_float(F)V

    return-void
.end method

.method public set_double(D)V
    .locals 0

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->set_float(F)V

    return-void
.end method

.method public set_float(F)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    return-void
.end method

.method public set_long(J)V
    .locals 0

    long-to-float p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->set_float(F)V

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->set_float(F)V

    return-void
.end method

.method public value_hash_code()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->_value:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method
