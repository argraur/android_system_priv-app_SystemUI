.class public abstract Landroid/support/v14/preference/PreferenceDialogFragment;
.super Landroid/app/DialogFragment;
.source "PreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Landroid/support/v7/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 208
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 206
    return-void
.end method


# virtual methods
.method public getPreference()Landroid/support/v7/preference/DialogPreference;
    .registers 5

    .prologue
    .line 174
    iget-object v2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    if-nez v2, :cond_1d

    .line 175
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    .line 178
    .local v0, "fragment":Landroid/support/v7/preference/DialogPreference$TargetFragment;
    invoke-interface {v0, v1}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DialogPreference;

    iput-object v2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    .line 180
    .end local v0    # "fragment":Landroid/support/v7/preference/DialogPreference$TargetFragment;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1d
    iget-object v2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    return-object v2
.end method

.method protected needInputMethod()Z
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_27

    .line 240
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 241
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 243
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 244
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1d

    move-object v3, v0

    .line 245
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1d
    const/4 v2, 0x0

    .line 251
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_27

    .line 252
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_27
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    iput p2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    .line 258
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    .line 80
    .local v5, "rawFragment":Landroid/app/Fragment;
    instance-of v6, v5, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    if-nez v6, :cond_15

    .line 81
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Target fragment must implement TargetFragment interface"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_15
    move-object v2, v5

    .line 86
    check-cast v2, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    .line 88
    .local v2, "fragment":Landroid/support/v7/preference/DialogPreference$TargetFragment;
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "key":Ljava/lang/String;
    if-nez p1, :cond_93

    .line 90
    invoke-interface {v2, v4}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/DialogPreference;

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    .line 91
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 92
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 93
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 94
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 95
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v6

    iput v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 97
    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_61

    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_66

    .line 99
    :cond_61
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    iput-object v3, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 76
    :cond_65
    :goto_65
    return-void

    .line 101
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_66
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 102
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_65

    .line 109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_93
    const-string/jumbo v6, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 110
    const-string/jumbo v6, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 111
    const-string/jumbo v6, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 112
    const-string/jumbo v6, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 113
    const-string/jumbo v6, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 114
    const-string/jumbo v6, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 115
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_65

    .line 116
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_65
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 139
    .local v2, "context":Landroid/content/Context;
    const/4 v4, -0x2

    iput v4, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    .line 141
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 143
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 141
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 144
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 145
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v2}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_41

    .line 149
    invoke-virtual {p0, v1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 155
    :goto_30
    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 159
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 160
    invoke-direct {p0, v3}, Landroid/support/v14/preference/PreferenceDialogFragment;->requestInputMethod(Landroid/app/Dialog;)V

    .line 163
    :cond_40
    return-object v3

    .line 152
    .end local v3    # "dialog":Landroid/app/Dialog;
    :cond_41
    iget-object v4, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_30
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 221
    .local v1, "resId":I
    if-nez v1, :cond_6

    .line 222
    return-object v2

    .line 225
    :cond_6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 265
    iget v0, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceDialogFragment;->onDialogClosed(Z)V

    .line 263
    return-void

    .line 265
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string/jumbo v0, "PreferenceDialogFragment.title"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 126
    const-string/jumbo v0, "PreferenceDialogFragment.positiveText"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 127
    const-string/jumbo v0, "PreferenceDialogFragment.negativeText"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 128
    const-string/jumbo v0, "PreferenceDialogFragment.message"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 129
    const-string/jumbo v0, "PreferenceDialogFragment.layout"

    iget v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3b

    .line 131
    const-string/jumbo v0, "PreferenceDialogFragment.icon"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    :cond_3b
    return-void
.end method
