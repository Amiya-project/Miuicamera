.class public Lcom/xiaomi/ai/api/SpeechSettings$UnsupportedLanguage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/ai/api/common/InstructionPayload;


# annotations
.annotation runtime Lcom/xiaomi/ai/api/common/NamespaceName;
    name = "UnsupportedLanguage"
    namespace = "SpeechSettings"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/SpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedLanguage"
.end annotation


# instance fields
.field private lang:Ljava/lang/String;
    .annotation runtime Lcom/xiaomi/ai/api/common/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ai/api/SpeechSettings$UnsupportedLanguage;->lang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLang()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/xiaomi/ai/api/common/Required;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/ai/api/SpeechSettings$UnsupportedLanguage;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/xiaomi/ai/api/SpeechSettings$UnsupportedLanguage;
    .locals 0
    .annotation runtime Lcom/xiaomi/ai/api/common/Required;
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ai/api/SpeechSettings$UnsupportedLanguage;->lang:Ljava/lang/String;

    return-object p0
.end method
