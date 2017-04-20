.class final Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;
.super Ljava/lang/Object;
.source "HfpClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/HfpClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HfpClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/HfpClientProfile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/HfpClientProfile;Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HfpClientProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 9
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 64
    invoke-static {}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "HfpClientProfile"

    const-string/jumbo v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_f
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3, p2}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-set1(Lcom/android/settingslib/bluetooth/HfpClientProfile;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 67
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get4(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    .line 69
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 70
    .local v2, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get1(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 72
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_69

    .line 73
    const-string/jumbo v3, "HfpClientProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HfpClient profile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get1(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get2(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get3(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 77
    :cond_69
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    const/4 v4, 0x2

    .line 76
    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 78
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_20

    .line 80
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_73
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-set0(Lcom/android/settingslib/bluetooth/HfpClientProfile;Z)Z

    .line 63
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "HfpClientProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->-set0(Lcom/android/settingslib/bluetooth/HfpClientProfile;Z)Z

    .line 84
    return-void
.end method
