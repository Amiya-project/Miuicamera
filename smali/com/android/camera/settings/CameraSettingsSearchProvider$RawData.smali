.class public Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/CameraSettingsSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawData"
.end annotation


# instance fields
.field public extras:Ljava/lang/String;

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/settings/CameraSettingsSearchProvider;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/settings/CameraSettingsSearchProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "title",
            "intentAction",
            "intentTargetPackage",
            "intentTargetClass",
            "extras"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->this$0:Lcom/android/camera/settings/CameraSettingsSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->intentAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->intentTargetPackage:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->intentTargetClass:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->extras:Ljava/lang/String;

    return-void
.end method
