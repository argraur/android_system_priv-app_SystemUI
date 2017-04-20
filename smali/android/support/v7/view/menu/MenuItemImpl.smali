.class public final Landroid/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/support/v4/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 88
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 93
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 137
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 138
    iput p3, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    .line 139
    iput p2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    .line 140
    iput p4, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 141
    iput p5, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    .line 142
    iput-object p6, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 143
    iput p7, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 123
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 698
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    .line 699
    return v1

    .line 701
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 703
    const/4 v0, 0x1

    return v0

    .line 706
    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v0, :cond_1a

    .line 707
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    .line 706
    if-eqz v0, :cond_21

    .line 708
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0

    .line 711
    :cond_21
    return v1
.end method

.method public expandActionView()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 684
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    if-nez v0, :cond_8

    .line 685
    return v1

    .line 688
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v0, :cond_14

    .line 689
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    .line 688
    if-eqz v0, :cond_1b

    .line 690
    :cond_14
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0

    .line 693
    :cond_1b
    return v1
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 649
    const-string/jumbo v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    .line 648
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    .line 632
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_17

    .line 633
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 634
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    .line 636
    :cond_17
    return-object v1
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 241
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 420
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    .line 421
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 424
    :cond_9
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1e

    .line 425
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iput v3, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 427
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 428
    return-object v0

    .line 431
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1e
    return-object v2
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 259
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_a
    return v0

    :cond_b
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_a
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 300
    .local v1, "shortcut":C
    if-nez v1, :cond_a

    .line 301
    const-string/jumbo v2, ""

    return-object v2

    .line 304
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_2e

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 308
    :sswitch_1c
    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 312
    :sswitch_22
    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 316
    :sswitch_28
    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 305
    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_22
        0xa -> :sswitch_1c
        0x20 -> :sswitch_28
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 391
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 393
    .local v0, "ctitle":Ljava/lang/CharSequence;
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_12

    if-eqz v0, :cond_12

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 400
    :cond_12
    return-object v0

    .line 391
    .end local v0    # "ctitle":Ljava/lang/CharSequence;
    :cond_13
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .restart local v0    # "ctitle":Ljava/lang/CharSequence;
    goto :goto_6

    .line 397
    :cond_16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "itemView"    # Landroid/support/v7/view/menu/MenuView$ItemView;

    .prologue
    .line 366
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 366
    :goto_c
    return-object v0

    .line 368
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public hasCollapsibleActionView()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 722
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1d

    .line 723
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_17

    .line 724
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 726
    :cond_17
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 728
    :cond_1d
    return v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invoke()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 152
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 153
    return v3

    .line 156
    :cond_e
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 157
    return v3

    .line 160
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_27

    .line 161
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 162
    return v3

    .line 165
    :cond_27
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_41

    .line 167
    :try_start_2b
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_36} :catch_37

    .line 168
    return v3

    .line 169
    :catch_37
    move-exception v0

    .line 170
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "MenuItemImpl"

    const-string/jumbo v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_41
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 175
    return v3

    .line 178
    :cond_4e
    const/4 v1, 0x0

    return v1
.end method

.method public isActionButton()Z
    .registers 3

    .prologue
    .line 568
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 738
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 456
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 480
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 183
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isExclusiveCheckable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 475
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isVisible()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 507
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_19

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v0

    :cond_19
    return v0

    .line 509
    :cond_1a
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public requestsActionButton()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 572
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public requiresActionButton()Z
    .registers 3

    .prologue
    .line 576
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 643
    const-string/jumbo v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    .line 642
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 6
    .param p1, "resId"    # I

    .prologue
    .line 622
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 623
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 624
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 625
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 611
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 612
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 613
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_17

    .line 614
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 616
    :cond_17
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 617
    return-object p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setActionViewExpanded(Z)V
    .registers 4
    .param p1, "isExpanded"    # Z

    .prologue
    .line 732
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 733
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 731
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 4
    .param p1, "alphaChar"    # C

    .prologue
    .line 246
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    .line 247
    return-object p0

    .line 250
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 252
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 254
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 461
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 462
    .local v0, "oldFlags":I
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_17

    const/4 v1, 0x1

    :goto_a
    or-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 463
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_16

    .line 464
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 467
    :cond_16
    return-object p0

    :cond_17
    move v1, v2

    .line 462
    goto :goto_a
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 485
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 488
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 493
    :goto_b
    return-object p0

    .line 490
    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_b
.end method

.method setCheckedInt(Z)V
    .registers 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 497
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 498
    .local v0, "oldFlags":I
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_17

    const/4 v1, 0x2

    :goto_a
    or-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 499
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_16

    .line 500
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 496
    :cond_16
    return-void

    :cond_17
    move v1, v2

    .line 498
    goto :goto_a
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_f

    .line 189
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 194
    :goto_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 196
    return-object p0

    .line 191
    :cond_f
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8
.end method

.method public setExclusiveCheckable(Z)V
    .registers 4
    .param p1, "exclusive"    # Z

    .prologue
    .line 471
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 470
    return-void

    .line 471
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "iconResId"    # I

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 449
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 451
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 436
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 437
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 440
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 227
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 3
    .param p1, "isActionButton"    # Z

    .prologue
    .line 580
    if-eqz p1, :cond_9

    .line 581
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 579
    :goto_8
    return-void

    .line 583
    :cond_9
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 548
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 547
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 4
    .param p1, "numericChar"    # C

    .prologue
    .line 264
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    .line 265
    return-object p0

    .line 268
    :cond_5
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 270
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 272
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 744
    const-string/jumbo v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    .line 743
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 538
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 539
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 5
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 277
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 278
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 280
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 282
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4
    .param p1, "actionEnum"    # I

    .prologue
    .line 593
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_e
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 606
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 592
    return-void

    .line 593
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 679
    return-object p0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "actionEnum"    # I

    .prologue
    .line 677
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .registers 3
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 347
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # I

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 373
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 375
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_11

    .line 378
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 381
    :cond_11
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 409
    if-nez p1, :cond_6

    .line 410
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 413
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 415
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3
    .param p1, "shown"    # Z

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 533
    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 6
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 521
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 522
    .local v0, "oldFlags":I
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_13

    move v1, v2

    :goto_a
    or-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 523
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2

    .line 522
    :cond_13
    const/16 v1, 0x8

    goto :goto_a
.end method

.method public shouldShowIcon()Z
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public showsTextAsAction()Z
    .registers 3

    .prologue
    .line 588
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method
