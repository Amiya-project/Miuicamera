.class public abstract Lcom/android/camera/aftersales/counters/BaseCounter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/aftersales/interfaces/ICounter;


# static fields
.field public static final CAMERA_ID_UNKNOWN:I = -0x1

.field public static final CAMERA_PREF_URI:Landroid/net/Uri;

.field public static final COLUMN_CAMERA_ID:Ljava/lang/String; = "CAMERA_ID"

.field public static final COLUMN_DATE_TIME:Ljava/lang/String; = "DATE_TIME"

.field public static final COLUMN_ERROR_ID:Ljava/lang/String; = "ERROR_ID"

.field public static final COLUMN_ROM_VERSION:Ljava/lang/String; = "ROM_VERSION"

.field public static final COUNTER_ID_ALL:I = 0x0

.field public static final COUNTER_ID_ANR:I = 0x2

.field public static final COUNTER_ID_BLACK:I = 0x8

.field public static final COUNTER_ID_CAMERA_ERROR:I = 0x4

.field public static final COUNTER_ID_CRASH:I = 0x1

.field public static final COUNTER_ID_GAUSSIAN:I = 0x3

.field public static final COUNTER_ID_LOEW_FRAME:I = 0x9

.field public static final COUNTER_ID_POPUP_FAILED:I = 0x6

.field public static final COUNTER_ID_RECORD_FAIL:I = 0x7

.field public static final COUNTER_ID_SESSION_ERROR:I = 0x5

.field public static final COUNTER_ID_TAKEDOWN_FAILED:I = 0xa

.field public static final PREVIEW_GAUSSIAN_TIME_OUT:J = 0xbb8L

.field public static final PROVIDER_AUTH:Ljava/lang/String; = "com.miui.maintenancemode.model.MaintenanceModeProvider"

.field public static final PROVIDER_URI:Ljava/lang/String; = "content://com.miui.maintenancemode.model.MaintenanceModeProvider"

.field public static final ROM_VERSION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "BaseCounter"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/aftersales/counters/BaseCounter;->ROM_VERSION:Ljava/lang/String;

    const-string v0, "content://com.miui.maintenancemode.model.MaintenanceModeProvider/camera"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/aftersales/counters/BaseCounter;->CAMERA_PREF_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendNewLine(JII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "id",
            "cameraId"
        }
    .end annotation

    const-string p0, "BaseCounter"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call maintenancemode provider to record event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ROM_VERSION"

    sget-object v4, Lcom/android/camera/aftersales/counters/BaseCounter;->ROM_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ERROR_ID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "DATE_TIME"

    invoke-static {p1, p2}, Lcom/android/camera/Util;->toHumanString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CAMERA_ID"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/camera/aftersales/counters/BaseCounter;->CAMERA_PREF_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "maintenancemode provider done with event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string/jumbo p3, "maintenancemode provider is dead"

    invoke-static {p0, p3, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public count(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "id",
            "cameraId"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/aftersales/counters/BaseCounter;->appendNewLine(JII)V

    return-void
.end method
