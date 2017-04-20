.class final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DndDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 271
    if-eqz p2, :cond_1d

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    .line 274
    .local v0, "zmp":Lcom/android/systemui/volume/ZenModePanel;
    :goto_5
    if-nez p2, :cond_1c

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 276
    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/ZenModePanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get7(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 279
    :cond_1c
    return-object v0

    .line 272
    .end local v0    # "zmp":Lcom/android/systemui/volume/ZenModePanel;
    :cond_1d
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 273
    const v2, 0x7f040108

    const/4 v3, 0x0

    .line 272
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    .restart local v0    # "zmp":Lcom/android/systemui/volume/ZenModePanel;
    goto :goto_5
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 266
    const/16 v0, 0x95

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 252
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->-get2()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0298

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get6(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 283
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 288
    return-void
.end method

.method public setToggleState(Z)V
    .registers 6
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 258
    if-nez p1, :cond_23

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get0(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    .line 256
    :cond_23
    return-void
.end method
