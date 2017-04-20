.class public Lcom/android/systemui/tuner/OtherPrefs;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "OtherPrefs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 24
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/OtherPrefs;->addPreferencesFromResource(I)V

    .line 23
    return-void
.end method
