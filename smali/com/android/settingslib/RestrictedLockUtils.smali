.class public Lcom/android/settingslib/RestrictedLockUtils;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 72
    const-string/jumbo v6, "device_policy"

    .line 71
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 73
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_d

    .line 74
    return-object v7

    .line 76
    :cond_d
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 78
    .local v5, "um":Landroid/os/UserManager;
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 77
    invoke-virtual {v5, p1, v6}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 81
    .local v4, "restrictionSource":I
    if-eqz v4, :cond_1e

    .line 82
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    .line 83
    :cond_1e
    return-object v7

    .line 87
    :cond_1f
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_30

    const/4 v3, 0x1

    .line 89
    .local v3, "enforcedByProfileOwner":Z
    :goto_24
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_32

    const/4 v2, 0x1

    .line 90
    .local v2, "enforcedByDeviceOwner":Z
    :goto_29
    if-eqz v3, :cond_34

    .line 91
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    return-object v6

    .line 87
    .end local v2    # "enforcedByDeviceOwner":Z
    .end local v3    # "enforcedByProfileOwner":Z
    :cond_30
    const/4 v3, 0x0

    .restart local v3    # "enforcedByProfileOwner":Z
    goto :goto_24

    .line 89
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "enforcedByDeviceOwner":Z
    goto :goto_29

    .line 92
    :cond_34
    if-eqz v2, :cond_42

    .line 95
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 96
    .local v0, "deviceOwner":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget v6, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    if-ne v6, p2, :cond_3f

    .end local v0    # "deviceOwner":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :goto_3e
    return-object v0

    .line 98
    .restart local v0    # "deviceOwner":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3f
    sget-object v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_3e

    .line 100
    .end local v0    # "deviceOwner":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_42
    return-object v7
.end method

.method public static getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 539
    const-string/jumbo v2, "device_policy"

    .line 538
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 540
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_d

    .line 541
    return-object v3

    .line 543
    :cond_d
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 544
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1d

    .line 545
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 547
    :cond_1d
    return-object v3
.end method

.method private static getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 551
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_6

    .line 552
    return-object v3

    .line 555
    :cond_6
    const-string/jumbo v2, "device_policy"

    .line 554
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 556
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_12

    .line 557
    return-object v3

    .line 559
    :cond_12
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 560
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1e

    .line 561
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 563
    :cond_1e
    return-object v3
.end method

.method public static getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 628
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_28

    .line 630
    iget-object v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_16

    .line 631
    const-string/jumbo v2, "android.app.extra.DEVICE_ADMIN"

    iget-object v3, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 633
    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 634
    .local v0, "adminUserId":I
    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_22

    .line 635
    iget v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 637
    :cond_22
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    .end local v0    # "adminUserId":I
    :cond_28
    return-object v1
.end method

.method public static hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 105
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 106
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 643
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 644
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 645
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_10

    .line 646
    const/4 v3, 0x1

    return v3

    .line 649
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_22
    const/4 v3, 0x0

    return v3
.end method

.method public static sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 618
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v0

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 620
    .local v1, "targetUserId":I
    if-eqz p1, :cond_1a

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1a

    .line 621
    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v2

    .line 620
    if-eqz v2, :cond_1a

    .line 622
    iget v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 624
    :cond_1a
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 617
    return-void
.end method
