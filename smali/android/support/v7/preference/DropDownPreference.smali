.class public Landroid/support/v7/preference/DropDownPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/DropDownPreference$1;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    sget v0, Landroid/support/v7/preference/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 133
    new-instance v0, Landroid/support/v7/preference/DropDownPreference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/DropDownPreference$1;-><init>(Landroid/support/v7/preference/DropDownPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 57
    iput-object p1, p0, Landroid/support/v7/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 60
    invoke-direct {p0}, Landroid/support/v7/preference/DropDownPreference;->updateEntries()V

    .line 55
    return-void
.end method

.method private updateEntries()V
    .registers 7

    .prologue
    .line 89
    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 90
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_11
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    .line 92
    .local v0, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 88
    .end local v0    # "c":Ljava/lang/CharSequence;
    :cond_21
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .registers 4

    .prologue
    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findSpinnerIndexOfValue(Ljava/lang/String;)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_19

    if-eqz v0, :cond_19

    .line 109
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_19

    .line 110
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 111
    return v1

    .line 109
    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 115
    .end local v1    # "i":I
    :cond_19
    const/4 v2, -0x1

    return v2
.end method

.method protected notifyChanged()V
    .registers 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v7/preference/ListPreference;->notifyChanged()V

    .line 121
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 126
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Landroid/support/v7/preference/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 127
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Landroid/support/v7/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 130
    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 125
    return-void
.end method

.method protected onClick()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 64
    return-void
.end method
