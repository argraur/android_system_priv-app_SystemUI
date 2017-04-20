.class public Lcom/android/systemui/statusbar/car/CarBatteryController;
.super Landroid/content/BroadcastReceiver;
.source "CarBatteryController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/CarBatteryController$1;,
        Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mLevel:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/car/CarBatteryController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/CarBatteryController$1;-><init>(Lcom/android/systemui/statusbar/car/CarBatteryController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 82
    const/16 v3, 0x10

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 78
    return-void
.end method

.method private notifyBatteryLevelChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_8
    if-ge v0, v1, :cond_1a

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 256
    iget v3, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 255
    invoke-interface {v2, v3, v4, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 253
    :cond_1a
    return-void
.end method

.method private updateBatteryIcon(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    const/4 v3, 0x3

    .line 209
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3b

    .line 210
    const-string/jumbo v2, "CarBatteryController"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 211
    const-string/jumbo v2, "CarBatteryController"

    const-string/jumbo v3, "Device connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    if-eqz v2, :cond_1f

    .line 215
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;->showBatteryView()V

    .line 218
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v2, :cond_25

    if-nez p1, :cond_26

    .line 219
    :cond_25
    return-void

    .line 223
    :cond_26
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 224
    .local v1, "featuresBundle":Landroid/os/Bundle;
    if-nez v1, :cond_2f

    .line 225
    return-void

    .line 228
    :cond_2f
    const-string/jumbo v2, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    .line 229
    const/4 v3, -0x1

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, "batteryLevel":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->updateBatteryLevel(I)V

    .line 208
    .end local v0    # "batteryLevel":I
    .end local v1    # "featuresBundle":Landroid/os/Bundle;
    :cond_3a
    :goto_3a
    return-void

    .line 231
    :cond_3b
    if-nez p2, :cond_3a

    .line 232
    const-string/jumbo v2, "CarBatteryController"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 233
    const-string/jumbo v2, "CarBatteryController"

    const-string/jumbo v3, "Device disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4f
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    if-eqz v2, :cond_3a

    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;->hideBatteryView()V

    goto :goto_3a
.end method

.method private updateBatteryLevel(I)V
    .registers 5
    .param p1, "batteryLevel"    # I

    .prologue
    const/4 v1, 0x3

    .line 168
    const/4 v0, -0x1

    if-ne p1, v0, :cond_17

    .line 169
    const-string/jumbo v0, "CarBatteryController"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 170
    const-string/jumbo v0, "CarBatteryController"

    const-string/jumbo v1, "Battery level invalid. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_16
    return-void

    .line 176
    :cond_17
    packed-switch p1, :pswitch_data_6a

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 197
    :goto_1d
    const-string/jumbo v0, "CarBatteryController"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 198
    const-string/jumbo v0, "CarBatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; setting mLevel as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->notifyBatteryLevelChanged()V

    .line 167
    return-void

    .line 178
    :pswitch_51
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    goto :goto_1d

    .line 181
    :pswitch_56
    const/16 v0, 0x57

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    goto :goto_1d

    .line 184
    :pswitch_5b
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    goto :goto_1d

    .line 187
    :pswitch_60
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    goto :goto_1d

    .line 190
    :pswitch_65
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    goto :goto_1d

    .line 176
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
    .end packed-switch
.end method


# virtual methods
.method public addBatteryViewHandler(Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;)V
    .registers 2
    .param p1, "batteryViewHandler"    # Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    .line 112
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    invoke-interface {p1, v0, v1, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 104
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 98
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 243
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 87
    const-string/jumbo v0, "CarBatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "    mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 86
    return-void
.end method

.method public isPowerSave()Z
    .registers 2

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "CarBatteryController"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 132
    const-string/jumbo v5, "CarBatteryController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive(). action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_29
    const-string/jumbo v5, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 136
    const-string/jumbo v5, "CarBatteryController"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 137
    const-string/jumbo v5, "CarBatteryController"

    const-string/jumbo v6, "Received ACTION_AG_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_44
    const-string/jumbo v5, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "batteryLevel":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->updateBatteryLevel(I)V

    .line 145
    if-eq v1, v8, :cond_59

    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    if-eqz v5, :cond_59

    .line 146
    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;->showBatteryView()V

    .line 128
    .end local v1    # "batteryLevel":I
    :cond_59
    :goto_59
    return-void

    .line 148
    :cond_5a
    const-string/jumbo v5, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 149
    const-string/jumbo v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, "newState":I
    const-string/jumbo v5, "CarBatteryController"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 152
    const-string/jumbo v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 153
    .local v4, "oldState":I
    const-string/jumbo v5, "CarBatteryController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_CONNECTION_STATE_CHANGED event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 154
    const-string/jumbo v7, " -> "

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v4    # "oldState":I
    :cond_9f
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 159
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/car/CarBatteryController;->updateBatteryIcon(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_59
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .registers 3
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public setPowerSaveMode(Z)V
    .registers 2
    .param p1, "powerSave"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public startListening()V
    .registers 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method
