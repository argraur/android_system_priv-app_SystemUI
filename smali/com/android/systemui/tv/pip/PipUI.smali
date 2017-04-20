.class public Lcom/android/systemui/tv/pip/PipUI;
.super Lcom/android/systemui/SystemUI;
.source "PipUI.java"


# instance fields
.field private mSupportPip:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipUI;->mSupportPip:Z

    if-nez v0, :cond_8

    .line 49
    return-void

    .line 51
    :cond_8
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->onConfigurationChanged()V

    .line 46
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 35
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 36
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 37
    const-string/jumbo v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 36
    :goto_16
    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mSupportPip:Z

    .line 38
    iget-boolean v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mSupportPip:Z

    if-nez v2, :cond_1f

    .line 39
    return-void

    .line 36
    :cond_1d
    const/4 v2, 0x0

    goto :goto_16

    .line 41
    :cond_1f
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    .line 42
    .local v0, "pipManager":Lcom/android/systemui/tv/pip/PipManager;
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipManager;->initialize(Landroid/content/Context;)V

    .line 34
    return-void
.end method
