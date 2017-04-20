.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Activity;
.source "BrightnessDialog.java"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 42
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 43
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 44
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    const v3, 0x7f0400c4

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/BrightnessDialog;->setContentView(I)V

    .line 48
    const v3, 0x7f1201e5

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x7f1201e6

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 50
    .local v1, "slider":Lcom/android/systemui/settings/ToggleSlider;
    new-instance v3, Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v3, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 69
    const/16 v0, 0x19

    if-eq p1, v0, :cond_8

    .line 70
    const/16 v0, 0x18

    if-ne p1, v0, :cond_10

    .line 72
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->finish()V

    .line 75
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 71
    :cond_10
    const/16 v0, 0xa4

    if-ne p1, v0, :cond_b

    goto :goto_8
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 57
    const/16 v0, 0xdc

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 54
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 63
    const/16 v0, 0xdc

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 61
    return-void
.end method
