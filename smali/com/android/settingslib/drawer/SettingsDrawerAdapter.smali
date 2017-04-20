.class public Lcom/android/settingslib/drawer/SettingsDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTile(I)Lcom/android/settingslib/drawer/Tile;
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;

    iget-object v0, v0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->tile:Lcom/android/settingslib/drawer/Tile;

    :cond_13
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;

    .line 94
    .local v1, "item":Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    if-nez v1, :cond_22

    .line 95
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/android/settingslib/R$id;->spacer:I

    if-eq v2, v4, :cond_21

    .line 96
    :cond_15
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/android/settingslib/R$layout;->drawer_spacer:I

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    :cond_21
    return-object p2

    .line 101
    :cond_22
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/android/settingslib/R$id;->spacer:I

    if-ne v2, v4, :cond_2d

    .line 102
    const/4 p2, 0x0

    .line 104
    .end local p2    # "convertView":Landroid/view/View;
    :cond_2d
    iget-object v2, v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_6c

    const/4 v0, 0x1

    .line 105
    .local v0, "isTile":Z
    :goto_32
    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/android/settingslib/R$id;->tile_item:I

    if-ne v2, v4, :cond_6e

    const/4 v2, 0x1

    :goto_3d
    if-eq v0, v2, :cond_4d

    .line 106
    :cond_3f
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz v0, :cond_70

    sget v2, Lcom/android/settingslib/R$layout;->drawer_item:I

    :goto_49
    invoke-virtual {v4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 110
    :cond_4d
    if-eqz v0, :cond_5d

    .line 111
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 113
    :cond_5d
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-object p2

    .line 104
    .end local v0    # "isTile":Z
    :cond_6c
    const/4 v0, 0x0

    .restart local v0    # "isTile":Z
    goto :goto_32

    :cond_6e
    move v2, v3

    .line 105
    goto :goto_3d

    .line 107
    :cond_70
    sget v2, Lcom/android/settingslib/R$layout;->drawer_category:I

    goto :goto_49
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;

    iget-object v0, v0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method updateCategories()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 41
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v7}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v6, v9}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;)V

    .line 46
    .local v6, "tile":Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    sget v8, Lcom/android/settingslib/R$string;->home:I

    invoke-virtual {v7, v8}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 47
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    sget v8, Lcom/android/settingslib/R$drawable;->home:I

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    .line 48
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_77

    .line 50
    new-instance v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v1, v9}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;)V

    .line 51
    .local v1, "category":Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    iput-object v9, v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    .line 52
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 53
    .local v2, "dashboardCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v7, v2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iput-object v7, v1, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 54
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4d
    iget-object v7, v2, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_74

    .line 56
    new-instance v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;

    .end local v6    # "tile":Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    invoke-direct {v6, v9}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;)V

    .line 57
    .restart local v6    # "tile":Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    iget-object v7, v2, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 58
    .local v3, "dashboardTile":Lcom/android/settingslib/drawer/Tile;
    iget-object v7, v3, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iput-object v7, v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 59
    iget-object v7, v3, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iput-object v7, v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    .line 60
    iput-object v3, v6, Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;->tile:Lcom/android/settingslib/drawer/Tile;

    .line 61
    iget-object v7, p0, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 49
    .end local v3    # "dashboardTile":Lcom/android/settingslib/drawer/Tile;
    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 64
    .end local v1    # "category":Lcom/android/settingslib/drawer/SettingsDrawerAdapter$Item;
    .end local v2    # "dashboardCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v5    # "j":I
    :cond_77
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method
