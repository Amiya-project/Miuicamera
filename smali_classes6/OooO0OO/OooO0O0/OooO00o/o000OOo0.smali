.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o000OOo0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o0000o0o:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o000OOo0;->o0000o0o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o000OOo0;->o0000o0o:Landroid/os/Handler;

    invoke-static {p0, p1, p2}, Lcom/android/camera/RotateDialogController;->lambda$showFeatureAutomaticDialog$6(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method
