.class public Lcom/android/camera/constant/ExceptionConstant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/constant/ExceptionConstant$Exceptions;
    }
.end annotation


# static fields
.field public static final EXCEPTION_CAMERA_ACTIVITY_FINISHING:I = 0xeb

.field public static final EXCEPTION_CAMERA_ACTIVITY_NULL:I = 0xea

.field public static final EXCEPTION_CAMERA_DISABLED:I = 0xe3

.field public static final EXCEPTION_CAMERA_GET_DEVICE_NULL:I = 0xe6

.field public static final EXCEPTION_CAMERA_GET_PARAMETERS_NULL:I = 0xe7

.field public static final EXCEPTION_CAMERA_HANDLER_THREAD_STUCK:I = 0xec

.field public static final EXCEPTION_CAMERA_HARDWARE:I = 0xe2

.field public static final EXCEPTION_CAMERA_MODULE_CREATE:I = 0xed

.field public static final EXCEPTION_CAMERA_OPEN_CANCEL:I = 0xe1

.field public static final EXCEPTION_CAMERA_PERMISSION_BLOCK:I = 0xe5

.field public static final EXCEPTION_CAMERA_RUNTIME:I = 0xe4

.field public static final EXCEPTION_CAMERA_UNKNOWN_CAMERA_ID:I = 0xe9

.field public static final EXCEPTION_NO_ERROR:I = 0xe0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final transFromCamera2Error(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera2Error"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xe6

    return p0

    :cond_0
    const/16 p0, 0xe3

    return p0
.end method
