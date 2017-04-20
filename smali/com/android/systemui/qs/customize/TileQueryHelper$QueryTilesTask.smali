.class Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;
.super Landroid/os/AsyncTask;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/systemui/qs/QSTile",
        "<*>;>;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;)V

    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$State;
    .registers 7
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile$State;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 184
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    .line 186
    .local v0, "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    .line 187
    return-object v0

    .line 190
    .end local v0    # "state":Lcom/android/systemui/qs/QSTile$State;
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_26
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, [Ljava/util/Collection;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->doInBackground([Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Collection;)Ljava/util/Collection;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "params":[Ljava/util/Collection;, "[Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v16, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 146
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v6, 0x0

    .line 145
    invoke-virtual {v12, v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v13

    .line 147
    .local v13, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0f019f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 148
    .local v15, "stockTiles":Ljava/lang/String;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "info$iterator":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 149
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 150
    .local v11, "packageName":Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 157
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 158
    .local v5, "appLabel":Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "spec":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v14

    .line 160
    .local v14, "state":Lcom/android/systemui/qs/QSTile$State;
    if-eqz v14, :cond_78

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    const/4 v4, 0x0

    invoke-static {v1, v2, v5, v14, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    goto :goto_35

    .line 164
    :cond_78
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v1, :cond_86

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_35

    .line 167
    :cond_86
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 168
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 171
    if-eqz v3, :cond_35

    .line 174
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x106000b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 176
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 177
    .local v10, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    if-eqz v10, :cond_cd

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_c0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto/16 :goto_35

    :cond_cd
    const-string/jumbo v4, "null"

    goto :goto_c0

    .line 179
    .end local v2    # "spec":Ljava/lang/String;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "appLabel":Ljava/lang/CharSequence;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "label":Ljava/lang/CharSequence;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "state":Lcom/android/systemui/qs/QSTile$State;
    :cond_d1
    return-object v16
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->onPostExecute(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    .line 194
    return-void
.end method
