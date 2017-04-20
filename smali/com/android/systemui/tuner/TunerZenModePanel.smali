.class public Lcom/android/systemui/tuner/TunerZenModePanel;
.super Landroid/widget/LinearLayout;
.source "TunerZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerZenModePanel$1;
    }
.end annotation


# instance fields
.field private mButtons:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mDone:Landroid/view/View;

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mEditing:Z

.field private mHeaderSwitch:Landroid/view/View;

.field private mMoreSettings:Landroid/view/View;

.field private final mUpdate:Ljava/lang/Runnable;

.field private mZenMode:I

.field private mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/TunerZenModePanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->updatePanel()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance v0, Lcom/android/systemui/tuner/TunerZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerZenModePanel$1;-><init>(Lcom/android/systemui/tuner/TunerZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method private postUpdatePanel()V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/tuner/TunerZenModePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method private updatePanel()V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 128
    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    .line 129
    .local v0, "zenOn":Z
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v4, 0x1020017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_28

    move v1, v2

    :goto_1b
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    if-eqz v0, :cond_2a

    :goto_22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void

    .line 128
    .end local v0    # "zenOn":Z
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "zenOn":Z
    goto :goto_8

    :cond_28
    move v1, v3

    .line 130
    goto :goto_1b

    :cond_2a
    move v2, v3

    .line 131
    goto :goto_22
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .registers 4
    .param p1, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 54
    const v0, 0x7f120271

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0f0298

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v0, 0x7f120295

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 61
    const v0, 0x7f120272

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f02c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f02c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    return-void
.end method

.method public isEditing()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    if-ne p1, v1, :cond_35

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 85
    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    if-nez v1, :cond_27

    .line 86
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DndFavoriteZen"

    .line 87
    const/4 v3, 0x3

    .line 86
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v2, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    const-string/jumbo v3, "TunerZenModePanel"

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    .line 82
    :cond_26
    :goto_26
    return-void

    .line 91
    :cond_27
    iput v3, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 92
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string/jumbo v2, "TunerZenModePanel"

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    goto :goto_26

    .line 95
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    if-ne p1, v1, :cond_4e

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_26

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4e
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    if-ne p1, v1, :cond_26

    .line 100
    iput-boolean v3, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 101
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_26
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 71
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .registers 3
    .param p1, "zenPanelCallback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 76
    return-void
.end method

.method public setDoneListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    .line 123
    return-void
.end method

.method public setZenState(I)V
    .registers 2
    .param p1, "zenMode"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    .line 110
    return-void
.end method
