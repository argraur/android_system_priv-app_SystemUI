.class public abstract Landroid/support/v4/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field private mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# virtual methods
.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 2
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 267
    return-void
.end method

.method public overridesItemVisibility()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 288
    iput-object p1, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    .line 287
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .registers 3
    .param p1, "isVisible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, p0, Landroid/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 277
    :cond_9
    return-void
.end method
