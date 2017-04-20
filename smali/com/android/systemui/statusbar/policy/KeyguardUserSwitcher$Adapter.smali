.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "KeyguardUserSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p3, "kgu"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 258
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 259
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    .line 260
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 257
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    .line 266
    .local v0, "item":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    instance-of v3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-eqz v3, :cond_3c

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-eqz v3, :cond_3c

    :goto_10
    move-object v2, p2

    .line 272
    check-cast v2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 274
    .local v2, "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "name":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4e

    .line 276
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 281
    :goto_2e
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setAvatarEnabled(Z)V

    .line 282
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 283
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    return-object p2

    .line 268
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    :cond_3c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 269
    const v4, 0x7f040049

    const/4 v5, 0x0

    .line 268
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 270
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 278
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    :cond_4e
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_2e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 290
    .local v0, "user":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_16

    .line 294
    :cond_e
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v1, :cond_15

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 288
    :cond_15
    :goto_15
    return-void

    .line 293
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)V

    goto :goto_15
.end method
