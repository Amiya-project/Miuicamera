.class public Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static synthetic class$org$apache$xmlbeans$impl$values$XmlComplexContentImpl:Ljava/lang/Class;


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->class$org$apache$xmlbeans$impl$values$XmlComplexContentImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.XmlComplexContentImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->class$org$apache$xmlbeans$impl$values$XmlComplexContentImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public arraySetterHelper([BLjavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([BLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([DLjavax/xml/namespace/QName;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([DLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([FLjavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([FLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ILjavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ILjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([JLjavax/xml/namespace/QName;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([JLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/lang/String;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigDecimal;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigDecimal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigDecimal;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigDecimal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigInteger;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigInteger;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigInteger;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigInteger;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Calendar;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Calendar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Calendar;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Calendar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Date;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Date;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Date;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Date;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/List;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/List;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljavax/xml/namespace/QName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljavax/xml/namespace/QName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDate;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDateSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDate;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDateSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDuration;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDurationSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDuration;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDurationSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/StringEnumAbstractBase;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/StringEnumAbstractBase;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    if-ne v5, p0, :cond_2

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_8

    invoke-interface {v0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    aget-object v5, p1, v3

    if-ne v4, v5, :cond_8

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-interface {v0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    move v1, v3

    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_7

    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-ne v4, p0, :cond_6

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v0, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    aget-object v4, p1, v1

    if-ne v3, v4, :cond_7

    goto :goto_6

    :cond_6
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v0, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    move v3, v1

    goto :goto_7

    :cond_8
    move p0, v2

    move v2, v1

    :goto_7
    move v4, v3

    :goto_8
    array-length v5, p1

    if-ge v4, v5, :cond_9

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    sub-int v4, v3, v1

    add-int/2addr v4, v2

    if-le p0, v4, :cond_a

    add-int/lit8 v4, p0, -0x1

    invoke-interface {v0, p2, v4}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_a
    :goto_a
    if-ge v1, v3, :cond_c

    if-lt v2, p0, :cond_b

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    goto :goto_b

    :cond_b
    invoke-interface {v0, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    :goto_b
    check-cast v4, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    return-void

    :cond_d
    :goto_c
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    :goto_d
    if-lez p0, :cond_e

    invoke-interface {v0, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_d

    :cond_e
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-interface {v0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    if-ne v5, p0, :cond_2

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_8

    invoke-interface {v0, p3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    aget-object v5, p1, v3

    if-ne v4, v5, :cond_8

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-interface {v0, p3, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/xmlbeans/QNameSet;Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    move v1, v3

    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_7

    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-ne v4, p0, :cond_6

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v0, p3, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    aget-object v4, p1, v1

    if-ne v3, v4, :cond_7

    goto :goto_6

    :cond_6
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v0, p3, p2, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/xmlbeans/QNameSet;Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result p0

    move v3, v1

    goto :goto_7

    :cond_8
    move p0, v2

    move v2, v1

    :goto_7
    move v4, v3

    :goto_8
    array-length v5, p1

    if-ge v4, v5, :cond_9

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    sub-int v4, v3, v1

    add-int/2addr v4, v2

    if-le p0, v4, :cond_a

    add-int/lit8 v4, p0, -0x1

    invoke-interface {v0, p3, v4}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_a
    :goto_a
    if-ge v1, v3, :cond_c

    if-lt v2, p0, :cond_b

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    goto :goto_b

    :cond_b
    invoke-interface {v0, p3, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v4

    :goto_b
    check-cast v4, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    return-void

    :cond_d
    :goto_c
    invoke-interface {v0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result p0

    :goto_d
    if-lez p0, :cond_e

    invoke-interface {v0, p3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_d

    :cond_e
    return-void
.end method

.method public arraySetterHelper([SLjavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-short v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([SLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-short v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ZLjavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-boolean v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-boolean v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([[BLjavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([[BLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public get_default_attribute_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_default_element_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get_elementflags(Ljavax/xml/namespace/QName;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v2

    if-nez v2, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    or-int/2addr v0, v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    or-int p0, v0, p1

    return p0

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public is_child_element_order_sensitive()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isOrderSensitive()Z

    move-result p0

    return p0
.end method

.method public new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;-><init>(Lorg/apache/xmlbeans/SchemaParticle;)V

    return-object v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0
.end method

.method public final set_String(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Type does not allow for textual content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public set_nil()V
    .locals 0

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    sget-boolean p1, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->$assertionsDisabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public unionArraySetterHelper([Ljava/lang/Object;Ljavax/xml/namespace/QName;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Ljavax/xml/namespace/QName;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Ljavax/xml/namespace/QName;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objectSet(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public unionArraySetterHelper([Ljava/lang/Object;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, p3, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v2, :cond_2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-interface {p0, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    :goto_3
    check-cast v3, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objectSet(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public update_from_complex_content()V
    .locals 0

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Complex types cannot be used as hash keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
