.class public Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "MultiSelectListPreferenceDialogFragment.java"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z


# direct methods
.method static synthetic -get0(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic -set0(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 29
    return-void
.end method

.method private getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

    .line 48
    .local v1, "fragment":Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    if-nez p1, :cond_3c

    .line 59
    invoke-direct {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    .line 61
    .local v0, "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    invoke-virtual {v0}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 62
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 63
    const-string/jumbo v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    .line 62
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1f
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 68
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    iput-boolean v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v0}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 55
    .end local v0    # "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    :goto_3b
    return-void

    .line 73
    :cond_3c
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 74
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    const-string/jumbo v2, "MultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    const-string/jumbo v1, "MultiSelectListPreferenceDialogFragment.changed"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 76
    const-string/jumbo v1, "MultiSelectListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 77
    const-string/jumbo v1, "MultiSelectListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_3b
.end method

.method public onDialogClosed(Z)V
    .registers 5
    .param p1, "positiveResult"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    .line 120
    .local v0, "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    if-eqz p1, :cond_15

    iget-boolean v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    if-eqz v2, :cond_15

    .line 121
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 122
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 123
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 126
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 118
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 98
    iget-object v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v3

    .line 99
    .local v1, "entryCount":I
    new-array v0, v1, [Z

    .line 100
    .local v0, "checkedItems":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1e

    .line 101
    iget-object v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 103
    :cond_1e
    iget-object v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 104
    new-instance v4, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;

    invoke-direct {v4, p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;-><init>(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)V

    .line 103
    invoke-virtual {p1, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v0, "MultiSelectListPreferenceDialogFragment.values"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    const-string/jumbo v0, "MultiSelectListPreferenceDialogFragment.changed"

    iget-boolean v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string/jumbo v0, "MultiSelectListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 87
    const-string/jumbo v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
