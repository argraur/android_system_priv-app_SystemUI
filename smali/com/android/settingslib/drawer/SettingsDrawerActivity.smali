.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private static sDashboardCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeaderContainer:Landroid/widget/FrameLayout;

.field private mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mShowingMenu:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)Lcom/android/settingslib/drawer/SettingsDrawerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/settingslib/applications/InterestingConfigChanges;
    .registers 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-object v0
.end method

.method static synthetic -get2()Landroid/util/ArraySet;
    .registers 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .registers 1

    sput-object p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    const-string/jumbo v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    .line 58
    return-void
.end method

.method private isTopLevelTile(Landroid/content/Intent;)Z
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 172
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_8

    .line 173
    return v9

    .line 176
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "category$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 178
    .local v1, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v6, v1, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tile$iterator":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 179
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 181
    sget-boolean v6, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_62

    .line 182
    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intent is for top level tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_62
    const/4 v6, 0x1

    return v6

    .line 188
    .end local v1    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v5    # "tile$iterator":Ljava/util/Iterator;
    :cond_64
    sget-boolean v6, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_82

    .line 189
    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent is not for top level settings "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_82
    return v9
.end method

.method private updateUserHandlesIfNeeded(Lcom/android/settingslib/drawer/Tile;)V
    .registers 7
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 322
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 324
    .local v1, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_4a

    .line 325
    iget-object v3, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_47

    .line 326
    sget-boolean v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v2, :cond_44

    .line 327
    const-string/jumbo v3, "SettingsDrawerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete the user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_44
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 324
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 321
    :cond_4a
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 220
    :cond_9
    return-void
.end method

.method public getDashboardCategories()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-nez v0, :cond_23

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    .line 275
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 277
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 278
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    .line 280
    :cond_23
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v0
.end method

.method protected onCategoriesChanged()V
    .registers 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->updateDrawer()V

    .line 285
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 287
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 283
    :cond_1a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x26

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 88
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    .local v1, "theme":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_31

    .line 90
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 92
    invoke-virtual {p0, v8}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->requestWindowFeature(I)Z

    .line 94
    :cond_31
    sget v5, Lcom/android/settingslib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 95
    sget v5, Lcom/android/settingslib/R$id;->content_header_container:I

    invoke-virtual {p0, v5}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    .line 96
    sget v5, Lcom/android/settingslib/R$id;->drawer_layout:I

    invoke-virtual {p0, v5}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout;

    iput-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 97
    iget-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v5, :cond_4f

    .line 98
    return-void

    .line 100
    :cond_4f
    sget v5, Lcom/android/settingslib/R$id;->action_bar:I

    invoke-virtual {p0, v5}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    .line 101
    .local v4, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 102
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 103
    iget-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v8}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 104
    iput-object v10, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 105
    return-void

    .line 107
    :cond_6a
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    .line 108
    invoke-virtual {p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 109
    new-instance v5, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-direct {v5, p0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    iput-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    .line 110
    sget v5, Lcom/android/settingslib/R$id;->left_drawer:I

    invoke-virtual {p0, v5}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 111
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    new-instance v5, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    .line 83
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1e

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 128
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openDrawer()V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_1e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    return-void
.end method

.method public onProfileTileOpen()V
    .registers 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    .line 347
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_38

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    new-instance v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_38
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_53

    .line 150
    const-string/jumbo v2, "show_drawer_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 151
    const-string/jumbo v2, "show_drawer_menu"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 153
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->showMenuIcon()V

    .line 135
    :cond_53
    :goto_53
    return-void

    .line 155
    :cond_54
    invoke-direct {p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->isTopLevelTile(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 156
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->showMenuIcon()V

    goto :goto_53
.end method

.method protected onTileClicked(Lcom/android/settingslib/drawer/Tile;)V
    .registers 3
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    .line 334
    :cond_9
    return-void
.end method

.method public openDrawer()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_c

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 214
    :cond_c
    return-void
.end method

.method public openTile(Lcom/android/settingslib/drawer/Tile;)Z
    .registers 8
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v3, 0x0

    const v4, 0x8000

    const/4 v5, 0x1

    .line 292
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->closeDrawer()V

    .line 293
    if-nez p1, :cond_1a

    .line 294
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    return v5

    .line 299
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->updateUserHandlesIfNeeded(Lcom/android/settingslib/drawer/Tile;)V

    .line 300
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 301
    .local v1, "numUserHandles":I
    if-le v1, v5, :cond_2d

    .line 302
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V

    .line 303
    return v3

    .line 304
    :cond_2d
    if-ne v1, v5, :cond_4f

    .line 306
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "show_drawer_menu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 318
    .end local v1    # "numUserHandles":I
    :goto_4e
    return v5

    .line 311
    .restart local v1    # "numUserHandles":I
    :cond_4f
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "show_drawer_menu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_65
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_65} :catch_66

    goto :goto_4e

    .line 315
    .end local v1    # "numUserHandles":I
    :catch_66
    move-exception v0

    .line 316
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SettingsDrawerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find tile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e
.end method

.method public setContentView(I)V
    .registers 4
    .param p1, "layoutResID"    # I

    .prologue
    .line 235
    sget v1, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_d

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 239
    :cond_d
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 234
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 249
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method public showMenuIcon()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 266
    iput-boolean v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    .line 267
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$drawable;->ic_menu:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->content_description_menu_button:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 265
    return-void
.end method

.method public updateDrawer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_6

    .line 254
    return-void

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->updateCategories()V

    .line 258
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 252
    :goto_18
    return-void

    .line 261
    :cond_19
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_18
.end method
