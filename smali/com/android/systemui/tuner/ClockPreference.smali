.class public Lcom/android/systemui/tuner/ClockPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "ClockPreference.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/lang/String;

.field private mClockEnabled:Z

.field private mHasSeconds:Z

.field private mHasSetValue:Z

.field private mReceivedClock:Z

.field private mReceivedSeconds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x1040032

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "seconds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "disabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onAttached()V
    .registers 5

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onAttached()V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClockPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 48
    const-string/jumbo v2, "clock_seconds"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 47
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onDetached()V
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClockPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 54
    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onDetached()V

    .line 52
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 59
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    .line 61
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    .line 62
    iget-object v2, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :goto_1d
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    .line 67
    :cond_1f
    :goto_1f
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    if-eqz v0, :cond_3b

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    if-eqz v0, :cond_55

    .line 73
    const-string/jumbo v0, "seconds"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setValue(Ljava/lang/String;)V

    .line 58
    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    move v0, v1

    .line 62
    goto :goto_1d

    .line 63
    :cond_3e
    const-string/jumbo v2, "clock_seconds"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 64
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    .line 65
    if-eqz p2, :cond_52

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_52

    move v0, v1

    :cond_52
    iput-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    goto :goto_1f

    .line 74
    :cond_55
    iget-boolean v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_60

    .line 75
    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3b

    .line 77
    :cond_60
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClockPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "clock_seconds"

    const-string/jumbo v0, "seconds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    :goto_16
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 86
    iget-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_29
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClockPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v2, "icon_blacklist"

    .line 91
    const-string/jumbo v3, ","

    iget-object v4, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v1

    .line 84
    :cond_41
    const/4 v0, 0x0

    goto :goto_16

    .line 88
    :cond_43
    iget-object v0, p0, Lcom/android/systemui/tuner/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_29
.end method
