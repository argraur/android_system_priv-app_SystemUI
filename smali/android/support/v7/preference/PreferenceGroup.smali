.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;
.source "PreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceGroup$1;
    }
.end annotation


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v4/util/SimpleArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    iput-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 59
    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 61
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 63
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Landroid/support/v7/preference/PreferenceGroup$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/PreferenceGroup$1;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 80
    sget-object v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup:[I

    .line 79
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 84
    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 83
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    .line 82
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method


# virtual methods
.method public addItemFromInflater(Landroid/support/v7/preference/Preference;)V
    .registers 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 125
    return-void
.end method

.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .registers 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 157
    return v8

    .line 160
    :cond_b
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_2d

    .line 161
    iget-boolean v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v5, :cond_21

    .line 162
    iget v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 165
    :cond_21
    instance-of v5, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_2d

    move-object v5, p1

    .line 168
    check-cast v5, Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v6, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 172
    :cond_2d
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v5, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 173
    .local v2, "insertionIndex":I
    if-gez v2, :cond_39

    .line 174
    mul-int/lit8 v5, v2, -0x1

    add-int/lit8 v2, v5, -0x1

    .line 177
    :cond_39
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 178
    return v7

    .line 181
    :cond_40
    monitor-enter p0

    .line 182
    :try_start_41
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_78

    monitor-exit p0

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    .line 186
    .local v4, "preferenceManager":Landroid/support/v7/preference/PreferenceManager;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_7b

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 189
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 190
    .local v0, "id":J
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :goto_6a
    invoke-virtual {p1, v4, v0, v1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;J)V

    .line 196
    iget-boolean v5, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v5, :cond_74

    .line 197
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 200
    :cond_74
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 202
    return v8

    .line 181
    .end local v0    # "id":J
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preferenceManager":Landroid/support/v7/preference/PreferenceManager;
    :catchall_78
    move-exception v5

    monitor-exit p0

    throw v5

    .line 192
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "preferenceManager":Landroid/support/v7/preference/PreferenceManager;
    :cond_7b
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    .restart local v0    # "id":J
    goto :goto_6a
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 393
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 394
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_14

    .line 395
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 389
    :cond_14
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 382
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 383
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_14

    .line 384
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 378
    :cond_14
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .registers 9
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 287
    return-object p0

    .line 289
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 290
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v3, :cond_34

    .line 291
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 292
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 295
    return-object v2

    .line 298
    :cond_24
    instance-of v5, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_31

    .line 299
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 301
    .local v4, "returnedPreference":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_31

    .line 302
    return-object v4

    .line 290
    .end local v4    # "returnedPreference":Landroid/support/v7/preference/Preference;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 307
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_34
    return-object v6
.end method

.method public getPreference(I)Landroid/support/v7/preference/Preference;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .registers 5
    .param p1, "disableDependents"    # Z

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 365
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 366
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_14

    .line 367
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 360
    :cond_14
    return-void
.end method

.method public onAttached()V
    .registers 4

    .prologue
    .line 332
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 336
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 339
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 340
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_17

    .line 341
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 331
    :cond_17
    return-void
.end method

.method public onDetached()V
    .registers 4

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 350
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 354
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_17

    .line 355
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 346
    :cond_17
    return-void
.end method

.method protected onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .registers 2
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 108
    return-void
.end method

.method sortPreferences()V
    .registers 2

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 371
    return-void

    .line 372
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
