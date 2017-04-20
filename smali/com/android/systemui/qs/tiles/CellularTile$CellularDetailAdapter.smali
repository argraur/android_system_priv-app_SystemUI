.class final Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 279
    if-eqz p2, :cond_13

    move-object v1, p2

    :goto_4
    check-cast v1, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    .line 282
    .local v1, "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 283
    .local v0, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    if-nez v0, :cond_25

    return-object v1

    .line 281
    .end local v0    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .end local v1    # "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    :cond_13
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040024

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    .line 284
    .restart local v0    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .restart local v1    # "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    :cond_25
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 285
    const v3, 0x7f1200be

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile;->-get3(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->-get0(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    if-eqz v4, :cond_41

    :goto_3d
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    return-object v1

    .line 286
    :cond_41
    const/4 v2, 0x4

    goto :goto_3d
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 274
    const/16 v0, 0x75

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 263
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f02c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 256
    :goto_1a
    return-object v0

    .line 258
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setMobileDataEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->fireToggleStateChanged(Z)V

    .line 290
    return-void
.end method

.method public setToggleState(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 267
    return-void
.end method
