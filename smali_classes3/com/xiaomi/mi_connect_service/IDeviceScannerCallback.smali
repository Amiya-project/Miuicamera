.class public interface abstract Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback$Stub;,
        Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onEndpointFound(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccessWrite(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
