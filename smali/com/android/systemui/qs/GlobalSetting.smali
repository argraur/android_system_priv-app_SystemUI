.class public abstract Lcom/android/systemui/qs/GlobalSetting;
.super Landroid/database/ContentObserver;
.source "GlobalSetting.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/qs/GlobalSetting;->mSettingName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getValue()I
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/GlobalSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(I)V
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/GlobalSetting;->handleValueChanged(I)V

    .line 58
    return-void
.end method

.method public setListening(Z)V
    .registers 5
    .param p1, "listening"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_13

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/qs/GlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    :goto_12
    return-void

    .line 53
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_12
.end method