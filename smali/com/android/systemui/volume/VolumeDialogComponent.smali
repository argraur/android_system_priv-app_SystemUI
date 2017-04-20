.class public Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogComponent$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mDialog:Lcom/android/systemui/volume/VolumeDialog;

.field private final mSysui:Lcom/android/systemui/SystemUI;

.field private final mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->sendUserActivity()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->startSettings(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .registers 12
    .param p1, "sysui"    # Lcom/android/systemui/SystemUI;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    const/4 v6, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/media/VolumePolicy;

    .line 61
    const/16 v1, 0x190

    .line 57
    invoke-direct {v0, v6, v6, v6, v1}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 168
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/volume/VolumeDialogComponent$2;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 75
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog;

    .line 76
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    .line 75
    const/16 v2, 0x7e4

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->applyConfiguration()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_volume_down_silent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_volume_up_silent"

    aput-object v2, v1, v6

    .line 79
    const-string/jumbo v2, "sysui_do_not_disturb"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 78
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private applyConfiguration()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportant(IZ)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportant(IZ)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->setAutomute(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog;->setSilentMode(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->showDndTile(Z)V

    .line 122
    return-void
.end method

.method private sendUserActivity()V
    .registers 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 117
    .local v0, "kvm":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_f

    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 115
    :cond_f
    return-void
.end method

.method private setVolumePolicy(ZZZI)V
    .registers 7
    .param p1, "volumeDownToEnterSilent"    # Z
    .param p2, "volumeUpToExitSilent"    # Z
    .param p3, "doNotDisturbWhenSilent"    # Z
    .param p4, "vibrateToSilentDebounce"    # I

    .prologue
    .line 110
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 109
    return-void
.end method

.method private startSettings(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 163
    return-void
.end method


# virtual methods
.method public dismissNow()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->dismiss()V

    .line 142
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 147
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/VolumeDialog;->dump(Ljava/io/PrintWriter;)V

    .line 158
    return-void
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 137
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string/jumbo v3, "sysui_volume_down_silent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 85
    if-eqz p2, :cond_24

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v1, 0x1

    .line 89
    .local v1, "volumeDownToEnterSilent":Z
    :goto_12
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 90
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 88
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    .line 83
    .end local v1    # "volumeDownToEnterSilent":Z
    :cond_21
    :goto_21
    return-void

    .line 86
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "volumeDownToEnterSilent":Z
    goto :goto_12

    .line 87
    .end local v1    # "volumeDownToEnterSilent":Z
    :cond_24
    const/4 v1, 0x1

    .restart local v1    # "volumeDownToEnterSilent":Z
    goto :goto_12

    .line 91
    .end local v1    # "volumeDownToEnterSilent":Z
    :cond_26
    const-string/jumbo v3, "sysui_volume_up_silent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 92
    if-eqz p2, :cond_4a

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_48

    const/4 v2, 0x1

    .line 95
    .local v2, "volumeUpToExitSilent":Z
    :goto_38
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 96
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 97
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 95
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    goto :goto_21

    .line 93
    .end local v2    # "volumeUpToExitSilent":Z
    :cond_48
    const/4 v2, 0x0

    .restart local v2    # "volumeUpToExitSilent":Z
    goto :goto_38

    .line 94
    .end local v2    # "volumeUpToExitSilent":Z
    :cond_4a
    const/4 v2, 0x1

    .restart local v2    # "volumeUpToExitSilent":Z
    goto :goto_38

    .line 98
    .end local v2    # "volumeUpToExitSilent":Z
    :cond_4c
    const-string/jumbo v3, "sysui_do_not_disturb"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 99
    if-eqz p2, :cond_70

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v0, 0x1

    .line 102
    .local v0, "doNotDisturbWhenSilent":Z
    :goto_5e
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 103
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 104
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 102
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    goto :goto_21

    .line 100
    .end local v0    # "doNotDisturbWhenSilent":Z
    :cond_6e
    const/4 v0, 0x0

    .restart local v0    # "doNotDisturbWhenSilent":Z
    goto :goto_5e

    .line 101
    .end local v0    # "doNotDisturbWhenSilent":Z
    :cond_70
    const/4 v0, 0x1

    .restart local v0    # "doNotDisturbWhenSilent":Z
    goto :goto_5e
.end method

.method public register()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->register()V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setCombinedIcon(Landroid/content/Context;Z)V

    .line 152
    return-void
.end method
