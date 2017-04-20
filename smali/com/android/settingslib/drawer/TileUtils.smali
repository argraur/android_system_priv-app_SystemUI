.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/TileUtils$1;,
        Lcom/android/settingslib/drawer/TileUtils$2;
    }
.end annotation


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 311
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    .line 310
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    .line 319
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$2;-><init>()V

    .line 318
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 161
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 162
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 164
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 165
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1d

    .line 166
    const/4 v5, 0x0

    return-object v5

    .line 168
    :cond_1d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolved$iterator":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 169
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_21

    .line 173
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 174
    const-string/jumbo v5, "com.android.settings"

    .line 175
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 174
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 175
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 174
    :goto_4a
    iput v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    goto :goto_21

    :cond_4d
    move v5, v6

    .line 175
    goto :goto_4a

    .line 179
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_4f
    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 119
    .local v14, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_71

    const/4 v13, 0x1

    .line 121
    .local v13, "setup":Z
    :goto_13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v7, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    .line 123
    .local v19, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "user$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 125
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_62

    .line 127
    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 128
    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    .line 129
    const-string/jumbo v6, "com.android.settings.category.wireless"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 128
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 130
    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    .line 131
    const-string/jumbo v6, "com.android.settings.category.device"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 130
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 133
    :cond_62
    if-eqz v13, :cond_24

    .line 134
    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    goto :goto_24

    .line 119
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v13    # "setup":Z
    .end local v18    # "user$iterator":Ljava/util/Iterator;
    .end local v19    # "userManager":Landroid/os/UserManager;
    :cond_71
    const/4 v13, 0x0

    .restart local v13    # "setup":Z
    goto :goto_13

    .line 137
    .restart local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .restart local v18    # "user$iterator":Ljava/util/Iterator;
    .restart local v19    # "userManager":Landroid/os/UserManager;
    :cond_73
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v12, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "tile$iterator":Ljava/util/Iterator;
    :goto_7c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settingslib/drawer/Tile;

    .line 139
    .local v16, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 140
    .local v10, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v10, :cond_c4

    .line 141
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v10

    .line 142
    if-nez v10, :cond_bf

    .line 143
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 146
    :cond_bf
    iget-object v2, v10, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v12, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_c4
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_7c

    .line 150
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v16    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_ca
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v9, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "category$iterator":Ljava/util/Iterator;
    :goto_d7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 152
    .restart local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, v10, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_d7

    .line 154
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    :cond_eb
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    return-object v9
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_d

    .line 187
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :cond_d
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 189
    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 184
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 198
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const/16 v11, 0x80

    .line 197
    invoke-virtual {v5, p2, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 199
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "resolved$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v6, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v10, v6, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v10, :cond_12

    .line 204
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 205
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 206
    .local v4, "metaData":Landroid/os/Bundle;
    move-object/from16 v2, p4

    .line 207
    .local v2, "categoryKey":Ljava/lang/String;
    if-eqz p7, :cond_35

    if-eqz v4, :cond_95

    const-string/jumbo v10, "com.android.settings.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 214
    :cond_35
    const-string/jumbo v10, "com.android.settings.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    new-instance v3, Landroid/util/Pair;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 217
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 216
    invoke-direct {v3, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 219
    .local v9, "tile":Lcom/android/settingslib/drawer/Tile;
    if-nez v9, :cond_79

    .line 220
    new-instance v9, Lcom/android/settingslib/drawer/Tile;

    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {v9}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 221
    .restart local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 222
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 221
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 223
    iput-object v2, v9, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 224
    if-eqz p6, :cond_d6

    iget v10, v6, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_69
    iput v10, v9, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 225
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 226
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v9, v1, v10, v5}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    .line 230
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_79
    iget-object v10, v9, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_86

    .line 233
    iget-object v10, v9, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_86
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 236
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 208
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_95
    if-nez p4, :cond_35

    .line 209
    const-string/jumbo v11, "TileUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " for intent "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 210
    const-string/jumbo v12, " missing metadata "

    .line 209
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 211
    if-nez v4, :cond_d2

    const-string/jumbo v10, ""

    .line 209
    :goto_c5
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 211
    :cond_d2
    const-string/jumbo v10, "com.android.settings.category"

    goto :goto_c5

    .line 224
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_d6
    const/4 v10, 0x0

    goto :goto_69

    .line 195
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "categoryKey":Ljava/lang/String;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v6    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_d8
    return-void
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v7, 0x0

    .line 253
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "icon":I
    const/4 v5, 0x0

    .line 256
    .local v5, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 261
    .local v4, "summary":Ljava/lang/String;
    :try_start_a
    iget-object v6, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 260
    invoke-virtual {p4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 262
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 264
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v3, :cond_64

    if-eqz v2, :cond_64

    .line 265
    const-string/jumbo v6, "com.android.settings.icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 266
    const-string/jumbo v6, "com.android.settings.icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    :cond_26
    const-string/jumbo v6, "com.android.settings.title"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 269
    const-string/jumbo v6, "com.android.settings.title"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_93

    .line 270
    const-string/jumbo v6, "com.android.settings.title"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_45
    :goto_45
    const-string/jumbo v6, "com.android.settings.summary"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 276
    const-string/jumbo v6, "com.android.settings.summary"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_9b

    .line 277
    const-string/jumbo v6, "com.android.settings.summary"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_63} :catch_a4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_63} :catch_a4

    move-result-object v4

    .line 289
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "summary":Ljava/lang/String;
    :cond_64
    :goto_64
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 290
    invoke-virtual {p2, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    :cond_72
    if-nez v1, :cond_76

    .line 293
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 297
    :cond_76
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 298
    iput-object v5, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 299
    iput-object v4, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 301
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 302
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 301
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 304
    const/4 v6, 0x1

    return v6

    .line 272
    .restart local v2    # "metaData":Landroid/os/Bundle;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "summary":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_93
    :try_start_93
    const-string/jumbo v6, "com.android.settings.title"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "title":Ljava/lang/CharSequence;
    goto :goto_45

    .line 279
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_9b
    const-string/jumbo v6, "com.android.settings.summary"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_a1} :catch_a4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_93 .. :try_end_a1} :catch_a4

    move-result-object v4

    .local v4, "summary":Ljava/lang/String;
    goto :goto_64

    .line 307
    .end local v1    # "icon":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "summary":Ljava/lang/String;
    :cond_a3
    return v7

    .line 283
    .restart local v1    # "icon":I
    .local v4, "summary":Ljava/lang/String;
    :catch_a4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_64
.end method
