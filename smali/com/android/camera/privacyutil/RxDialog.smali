.class public Lcom/android/camera/privacyutil/RxDialog;
.super Lio/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/privacyutil/RxDialog$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RxDialog"


# instance fields
.field private final mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private final mOkStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "okBtnStr"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/android/camera/privacyutil/RxDialog;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    iput-object p2, p0, Lcom/android/camera/privacyutil/RxDialog;->mOkStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/privacyutil/RxDialog$Listener;

    invoke-direct {v0, p1}, Lcom/android/camera/privacyutil/RxDialog$Listener;-><init>(Lio/reactivex/Observer;)V

    iget-object v1, p0, Lcom/android/camera/privacyutil/RxDialog;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/camera/privacyutil/RxDialog;->mOkStr:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
