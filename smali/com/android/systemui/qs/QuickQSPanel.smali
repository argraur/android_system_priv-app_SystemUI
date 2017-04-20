.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanel$1;,
        Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
    }
.end annotation


# instance fields
.field private mFullPanel:Lcom/android/systemui/qs/QSPanel;

.field private mHeader:Landroid/view/View;

.field private mMaxTiles:I

.field private final mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    new-instance v1, Lcom/android/systemui/qs/QuickQSPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickQSPanel$1;-><init>(Lcom/android/systemui/qs/QuickQSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v1, :cond_2e

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 53
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 55
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    .line 57
    .end local v0    # "i":I
    :cond_2e
    new-instance v1, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mListening:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 59
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->addView(Landroid/view/View;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected createTileView(Lcom/android/systemui/qs/QSTile;Z)Lcom/android/systemui/qs/QSTileBaseView;
    .registers 6
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)",
            "Lcom/android/systemui/qs/QSTileBaseView;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v0, Lcom/android/systemui/qs/QSTileBaseView;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSIconView;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/qs/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    return-object v0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V
    .registers 6
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v2, 0x0

    .line 86
    instance-of v1, p2, Lcom/android/systemui/qs/QSTile$SignalState;

    if-eqz v1, :cond_19

    .line 87
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    .line 88
    .local v0, "copy":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-object v1, v0

    .line 90
    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    move-object v1, v0

    .line 91
    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 92
    move-object p2, v0

    .line 94
    .end local v0    # "copy":Lcom/android/systemui/qs/QSTile$State;
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V

    .line 85
    return-void
.end method

.method public getNumQuickTiles(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v1, "sysui_qqs_count"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onAttachedToWindow()V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sysui_qqs_count"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onDetachedFromWindow()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 69
    return-void
.end method

.method protected onTileClick(Lcom/android/systemui/qs/QSTile;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->secondaryClick()V

    .line 116
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v0, "qs_show_brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 125
    const-string/jumbo v0, "0"

    invoke-super {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_f
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .registers 4
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "customizer"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 103
    return-void
.end method

.method public setMaxTiles(I)V
    .registers 3
    .param p1, "maxTiles"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_f

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 108
    :cond_f
    return-void
.end method

.method public setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .registers 3
    .param p1, "fullPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "header"    # Landroid/view/View;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFullPanel:Lcom/android/systemui/qs/QSPanel;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHeader:Landroid/view/View;

    .line 74
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "quickTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 133
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    if-ne v3, v4, :cond_9

    .line 138
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_20
    const/4 v3, 0x1

    invoke-super {p0, v0, v3}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    .line 130
    return-void
.end method

.method protected shouldShowDetail()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mExpanded:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
