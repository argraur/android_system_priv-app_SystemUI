.class public Lcom/android/settingslib/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDensity:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 23
    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    iget-object v4, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 29
    .local v0, "configChanges":I
    iget v4, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v4, v5, :cond_26

    move v1, v2

    .line 30
    .local v1, "densityChanged":Z
    :goto_17
    if-nez v1, :cond_1d

    and-int/lit16 v4, v0, 0x304

    if-eqz v4, :cond_28

    .line 32
    :cond_1d
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    .line 33
    return v2

    .end local v1    # "densityChanged":Z
    :cond_26
    move v1, v3

    .line 29
    goto :goto_17

    .line 35
    .restart local v1    # "densityChanged":Z
    :cond_28
    return v3
.end method
