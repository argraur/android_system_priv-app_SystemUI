.class public Lcom/android/systemui/tuner/TunerActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "TunerActivity.java"

# interfaces
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_d

    .line 52
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onBackPressed()V

    .line 50
    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "tuner"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3e

    .line 41
    const-string/jumbo v3, "com.android.settings.action.DEMO_MODE"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 42
    .local v2, "showDemoMode":Z
    :goto_21
    if-eqz v2, :cond_40

    new-instance v1, Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>()V

    .line 44
    .local v1, "fragment":Landroid/support/v14/preference/PreferenceFragment;
    :goto_28
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 45
    const-string/jumbo v4, "tuner"

    .line 44
    const v5, 0x7f120142

    invoke-virtual {v3, v5, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 35
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "fragment":Landroid/support/v14/preference/PreferenceFragment;
    .end local v2    # "showDemoMode":Z
    :cond_3d
    return-void

    .line 40
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3e
    const/4 v2, 0x0

    goto :goto_21

    .line 43
    .restart local v2    # "showDemoMode":Z
    :cond_40
    new-instance v1, Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/TunerFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/support/v14/preference/PreferenceFragment;
    goto :goto_28
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .registers 9
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 61
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 62
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/tuner/TunerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v4, 0x7f120142

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 64
    const-string/jumbo v4, "PreferenceFragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 65
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 66
    const/4 v4, 0x1

    return v4

    .line 67
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :catch_2e
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "TunerActivity"

    const-string/jumbo v5, "Problem launching fragment"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v4, 0x0

    return v4
.end method

.method public onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z
    .registers 9
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 76
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;-><init>()V

    .line 77
    .local v1, "fragment":Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 78
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 81
    const v3, 0x7f120142

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 82
    const-string/jumbo v3, "PreferenceFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 83
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 84
    return v5
.end method
