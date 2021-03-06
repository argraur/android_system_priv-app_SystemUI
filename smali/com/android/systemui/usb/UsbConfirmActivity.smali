.class public Lcom/android/systemui/usb/UsbConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 165
    :cond_5
    if-eqz p2, :cond_e

    .line 166
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_d
    return-void

    .line 168
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    const/4 v7, -0x1

    if-ne p2, v7, :cond_68

    .line 115
    :try_start_3
    const-string/jumbo v7, "usb"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 116
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 117
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 118
    .local v5, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 119
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 120
    .local v0, "alwaysUse":Z
    const/4 v3, 0x0

    .line 122
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v7, :cond_7e

    .line 123
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "device"

    iget-object v8, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v4, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 129
    if-eqz v0, :cond_6c

    .line 131
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 150
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_47
    :goto_47
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 153
    iget-object v9, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 152
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/usb/UsbConfirmActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_68} :catch_73

    .line 159
    .end local v0    # "alwaysUse":Z
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->finish()V

    .line 112
    return-void

    .line 133
    .restart local v0    # "alwaysUse":Z
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :cond_6c
    :try_start_6c
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_73

    goto :goto_47

    .line 155
    .end local v0    # "alwaysUse":Z
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :catch_73
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "UsbConfirmActivity"

    const-string/jumbo v8, "Unable to start activity"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "alwaysUse":Z
    .restart local v1    # "b":Landroid/os/IBinder;
    .local v3, "intent":Landroid/content/Intent;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :cond_7e
    :try_start_7e
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v7, :cond_47

    .line 136
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "accessory"

    iget-object v8, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v4, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 142
    if-eqz v0, :cond_a5

    .line 144
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_47

    .line 146
    :cond_a5
    iget-object v7, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_ab} :catch_73

    goto :goto_47
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 63
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "device"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 64
    const-string/jumbo v5, "accessory"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbAccessory;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 65
    const-string/jumbo v5, "rinfo"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 68
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "appName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 71
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v5, :cond_bc

    .line 74
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const v6, 0x7f0f01cd

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 75
    new-instance v5, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 80
    :goto_5f
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 82
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    const-string/jumbo v5, "layout_inflater"

    .line 86
    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 88
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090030

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 89
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x1020335

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 90
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v5, :cond_d3

    .line 91
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v6, 0x7f0f01d2

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 95
    :goto_9f
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 97
    const v6, 0x1020336

    .line 96
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 98
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbConfirmActivity;->setupAlert()V

    .line 59
    return-void

    .line 77
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_bc
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const v6, 0x7f0f01cc

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/usb/UsbConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 78
    new-instance v5, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_5f

    .line 93
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_d3
    iget-object v5, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v6, 0x7f0f01d1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_9f
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_9
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 105
    return-void
.end method
