.class public Lcom/android/settingslib/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private mAttrUserRestriction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field private mUseAdminDisabledSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 43
    iput-boolean v6, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 47
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    .line 50
    if-eqz p3, :cond_60

    .line 52
    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    .line 51
    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference_userRestriction:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 55
    .local v3, "userRestriction":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 56
    .local v1, "data":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2d

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_2d

    .line 57
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_43

    .line 58
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_2d
    :goto_2d
    if-nez v1, :cond_46

    move-object v4, v5

    :goto_30
    iput-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 65
    iget-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 65
    invoke-static {v4, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 67
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 68
    return-void

    .line 60
    .restart local v1    # "data":Ljava/lang/CharSequence;
    :cond_43
    iget-object v1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v1, "data":Ljava/lang/CharSequence;
    goto :goto_2d

    .line 63
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_46
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    .line 72
    :cond_4b
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference_useAdminDisabledSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 73
    .local v2, "useAdminDisabledSummary":Landroid/util/TypedValue;
    if-eqz v2, :cond_60

    .line 75
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_63

    .line 76
    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_61

    const/4 v4, 0x1

    .line 74
    :goto_5e
    iput-boolean v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 46
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v2    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .end local v3    # "userRestriction":Landroid/util/TypedValue;
    :cond_60
    return-void

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v2    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .restart local v3    # "userRestriction":Landroid/util/TypedValue;
    :cond_61
    move v4, v6

    .line 76
    goto :goto_5e

    :cond_63
    move v4, v6

    .line 75
    goto :goto_5e
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .registers 5
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 136
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 133
    return-void
.end method

.method public isDisabledByAdmin()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    return v0
.end method

.method public onAttachedToHierarchy()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 121
    :cond_d
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v1, :cond_a

    .line 86
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    :cond_a
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    if-eqz v1, :cond_26

    .line 89
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_26

    .line 91
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v1, :cond_27

    .line 92
    sget v1, Lcom/android/settingslib/R$string;->disabled_by_admin_summary_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    .end local v0    # "summaryView":Landroid/widget/TextView;
    :cond_26
    :goto_26
    return-void

    .line 95
    .restart local v0    # "summaryView":Landroid/widget/TextView;
    :cond_27
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_26
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_d

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z
    .registers 6
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 147
    if-eqz p1, :cond_16

    const/4 v1, 0x1

    .line 148
    .local v1, "disabled":Z
    :goto_3
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "changed":Z
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eq v2, v1, :cond_d

    .line 151
    iput-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_d
    iget-object v3, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 155
    return v0

    .line 147
    .end local v0    # "changed":Z
    .end local v1    # "disabled":Z
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "disabled":Z
    goto :goto_3

    .line 154
    .restart local v0    # "changed":Z
    :cond_18
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public useAdminDisabledSummary(Z)V
    .registers 2
    .param p1, "useSummary"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 101
    return-void
.end method
