.class public interface abstract annotation LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0;
        defaultImpl = LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0;
        include = .enum LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO00o;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO00o;
        property = ""
        visible = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO0OO;,
        LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO00o;,
        LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO0O0;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultImpl()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract include()LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO00o;
.end method

.method public abstract property()Ljava/lang/String;
.end method

.method public abstract use()LOooO0OO/OooO0o0/OooO00o/OooO00o/o00000O0$OooO0O0;
.end method

.method public abstract visible()Z
.end method
