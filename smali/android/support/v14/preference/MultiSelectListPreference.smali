.class public Landroid/support/v14/preference/MultiSelectListPreference;
.super Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v14/preference/MultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    sget v0, Landroid/support/v7/preference/R$attr;->dialogPreferenceStyle:I

    .line 80
    const v1, 0x1010091

    .line 78
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 59
    sget-object v1, Landroid/support/v7/preference/R$styleable;->MultiSelectListPreference:[I

    .line 58
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->MultiSelectListPreference_entries:I

    .line 64
    sget v2, Landroid/support/v7/preference/R$styleable;->MultiSelectListPreference_android_entries:I

    .line 62
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 67
    sget v1, Landroid/support/v7/preference/R$styleable;->MultiSelectListPreference_entryValues:I

    .line 68
    sget v2, Landroid/support/v7/preference/R$styleable;->MultiSelectListPreference_android_entryValues:I

    .line 66
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    return-object p1

    .line 141
    :cond_7
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 256
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 257
    .local v1, "defaultValues":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    array-length v4, v1

    :goto_b
    if-ge v3, v4, :cond_19

    aget-object v0, v1, v3

    .line 260
    .local v0, "defaultValue":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 263
    .end local v0    # "defaultValue":Ljava/lang/CharSequence;
    :cond_19
    return-object v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 286
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object v0, p1

    .line 292
    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;

    .line 293
    .local v0, "myState":Landroid/support/v14/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    iget-object v1, v0, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 285
    return-void

    .line 288
    .end local v0    # "myState":Landroid/support/v14/preference/MultiSelectListPreference$SavedState;
    :cond_1e
    invoke-super {p0, p1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 273
    invoke-super {p0}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 274
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 276
    return-object v1

    .line 279
    :cond_b
    new-instance v0, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 280
    .local v0, "myState":Landroid/support/v14/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    .line 281
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 268
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_8
    invoke-virtual {p0, p2}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 267
    return-void

    .line 268
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_c
    check-cast p2, Ljava/util/Set;

    goto :goto_8
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 104
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 108
    return v2

    .line 111
    :cond_13
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 114
    return v2

    .line 116
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2e
    const/4 v1, 0x0

    return v1
.end method

.method public setValues(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 212
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-virtual {p0, p1}, Landroid/support/v14/preference/MultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 210
    return-void
.end method
