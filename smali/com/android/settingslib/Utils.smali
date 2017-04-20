.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .registers 4
    .param p0, "percentage"    # D

    .prologue
    .line 113
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .registers 5
    .param p0, "percentage"    # I

    .prologue
    .line 108
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .registers 5
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;
    .registers 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;
    .param p2, "shortString"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 128
    const-string/jumbo v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "plugType":I
    const-string/jumbo v4, "status"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .local v2, "status":I
    if-ne v2, v7, :cond_39

    .line 134
    if-ne v0, v6, :cond_22

    .line 135
    if-eqz p2, :cond_1f

    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_ac_short:I

    .line 146
    .local v1, "resId":I
    :goto_1a
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .end local v1    # "resId":I
    .local v3, "statusString":Ljava/lang/String;
    :goto_1e
    return-object v3

    .line 136
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_1f
    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_ac:I

    .restart local v1    # "resId":I
    goto :goto_1a

    .line 137
    .end local v1    # "resId":I
    :cond_22
    if-ne v0, v7, :cond_2c

    .line 138
    if-eqz p2, :cond_29

    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_usb_short:I

    .restart local v1    # "resId":I
    goto :goto_1a

    .line 139
    .end local v1    # "resId":I
    :cond_29
    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_usb:I

    .restart local v1    # "resId":I
    goto :goto_1a

    .line 140
    .end local v1    # "resId":I
    :cond_2c
    if-ne v0, v8, :cond_36

    .line 141
    if-eqz p2, :cond_33

    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_wireless_short:I

    .restart local v1    # "resId":I
    goto :goto_1a

    .line 142
    .end local v1    # "resId":I
    :cond_33
    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_wireless:I

    .restart local v1    # "resId":I
    goto :goto_1a

    .line 144
    .end local v1    # "resId":I
    :cond_36
    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    .restart local v1    # "resId":I
    goto :goto_1a

    .line 147
    .end local v1    # "resId":I
    :cond_39
    const/4 v4, 0x3

    if-ne v2, v4, :cond_43

    .line 148
    sget v4, Lcom/android/settingslib/R$string;->battery_info_status_discharging:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1e

    .line 149
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_43
    if-ne v2, v8, :cond_4c

    .line 150
    sget v4, Lcom/android/settingslib/R$string;->battery_info_status_not_charging:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1e

    .line 151
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x5

    if-ne v2, v4, :cond_56

    .line 152
    sget v4, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1e

    .line 154
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_56
    sget v4, Lcom/android/settingslib/R$string;->battery_info_status_unknown:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1e
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 162
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010435

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 163
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 164
    .local v0, "colorAccent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return v0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    if-eqz p0, :cond_12

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_12

    .line 196
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0

    .line 198
    :cond_12
    return-object v1
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 203
    :try_start_0
    const-string/jumbo v2, "android"

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 204
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    return-object v2

    .line 205
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :catch_e
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 216
    const v1, 0x1040078

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 173
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v1, :cond_10

    .line 174
    new-array v1, v0, [Landroid/content/pm/Signature;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 176
    :cond_10
    sget-object v1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 177
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 179
    :cond_1a
    sget-object v1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_24

    .line 180
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 182
    :cond_24
    sget-object v1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 183
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 185
    :cond_2e
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    if-eqz v1, :cond_42

    .line 186
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-nez v1, :cond_71

    .line 187
    :cond_42
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-nez v1, :cond_71

    .line 188
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-nez v1, :cond_71

    .line 189
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-nez v1, :cond_71

    .line 190
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.printspooler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-nez v1, :cond_71

    .line 191
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    .line 185
    :cond_71
    return v0
.end method
