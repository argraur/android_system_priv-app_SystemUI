.class public abstract Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 4
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 627
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 629
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 635
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    .line 634
    if-eqz v4, :cond_25

    .line 636
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 637
    .local v3, "secureKeyguardShowing":Z
    :cond_25
    :goto_25
    if-nez v3, :cond_34

    .line 638
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 636
    .end local v3    # "secureKeyguardShowing":Z
    :cond_32
    const/4 v3, 0x1

    goto :goto_25

    .line 641
    .restart local v3    # "secureKeyguardShowing":Z
    :cond_34
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .local v0, "N":I
    const/4 v1, 0x0

    .line 643
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    if-ge v2, v0, :cond_52

    .line 644
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v4, :cond_53

    .line 650
    :cond_52
    return v1

    .line 647
    :cond_53
    add-int/lit8 v1, v1, 0x1

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_40
.end method

.method public getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 683
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_c

    .line 684
    const v0, 0x7f02007b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 686
    :cond_c
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 660
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 668
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_20

    .line 669
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_10

    .line 670
    const v0, 0x7f0f0307

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :cond_10
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1c

    const v0, 0x7f0f0306

    .line 672
    :goto_17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :cond_1c
    const v0, 0x7f0f0305

    goto :goto_17

    .line 675
    :cond_20
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_2c

    .line 676
    const v0, 0x7f0f0303

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 678
    :cond_2c
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 689
    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 663
    return-void
.end method
