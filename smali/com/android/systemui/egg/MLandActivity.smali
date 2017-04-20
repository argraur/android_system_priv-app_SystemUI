.class public Lcom/android/systemui/egg/MLandActivity;
.super Landroid/app/Activity;
.source "MLandActivity.java"


# instance fields
.field mLand:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v2, 0x7f040082

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->setContentView(I)V

    .line 33
    const v2, 0x7f12018f

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand;

    iput-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const v2, 0x7f120196

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Lcom/android/systemui/egg/MLand;->setScoreFieldHolder(Landroid/view/ViewGroup;)V

    .line 35
    const v2, 0x7f120190

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, "welcome":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2, v1}, Lcom/android/systemui/egg/MLand;->setSplash(Landroid/view/View;)V

    .line 37
    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand;->getGameControllers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    .local v0, "numControllers":I
    if-lez v0, :cond_3f

    .line 39
    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2, v0}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    .line 30
    :cond_3f
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 62
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    .line 68
    return-void
.end method

.method public playerMinus(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->removePlayer()V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 76
    return-void
.end method

.method public playerPlus(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->addPlayer()V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 81
    return-void
.end method

.method public startButtonPressed(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 87
    const v0, 0x7f120195

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v0, 0x7f120197

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 86
    return-void
.end method

.method public updateSplashPlayers()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 44
    iget-object v3, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    .line 45
    .local v0, "N":I
    const v3, 0x7f120195

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "minus":Landroid/view/View;
    const v3, 0x7f120197

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "plus":Landroid/view/View;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_23

    .line 48
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 43
    :goto_22
    return-void

    .line 51
    :cond_23
    const/4 v3, 0x6

    if-ne v0, v3, :cond_30

    .line 52
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    .line 56
    :cond_30
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22
.end method
