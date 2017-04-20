.class Lcom/android/systemui/statusbar/car/CarBatteryController$1;
.super Ljava/lang/Object;
.source "CarBatteryController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/CarBatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/CarBatteryController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/CarBatteryController;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;->this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 263
    const/16 v0, 0x10

    if-ne p1, v0, :cond_b

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;->this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/car/CarBatteryController;->-set0(Lcom/android/systemui/statusbar/car/CarBatteryController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 262
    :cond_b
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .prologue
    .line 270
    const/16 v0, 0x10

    if-ne p1, v0, :cond_a

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;->this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->-set0(Lcom/android/systemui/statusbar/car/CarBatteryController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 269
    :cond_a
    return-void
.end method
