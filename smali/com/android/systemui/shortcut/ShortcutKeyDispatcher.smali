.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field protected final ALT_MASK:J

.field protected final CTRL_MASK:J

.field protected final META_MASK:J

.field protected final SC_DOCK_LEFT:J

.field protected final SC_DOCK_RIGHT:J

.field protected final SHIFT_MASK:J

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    .line 58
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 59
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mActivityManager:Landroid/app/IActivityManager;

    .line 61
    const-wide/high16 v0, 0x1000000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->META_MASK:J

    .line 62
    const-wide v0, 0x200000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->ALT_MASK:J

    .line 63
    const-wide v0, 0x100000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->CTRL_MASK:J

    .line 64
    const-wide v0, 0x100000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SHIFT_MASK:J

    .line 66
    const-wide v0, 0x1000000000047L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_LEFT:J

    .line 67
    const-wide v0, 0x1000000000048L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_RIGHT:J

    .line 52
    return-void
.end method

.method private handleDockKey(J)V
    .registers 18
    .param p1, "shortcutCode"    # J

    .prologue
    .line 98
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    .line 99
    .local v4, "dockSide":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_25

    .line 101
    const-class v10, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v10}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/Recents;

    .line 102
    .local v7, "recents":Lcom/android/systemui/recents/Recents;
    const-wide v10, 0x1000000000047L

    cmp-long v10, p1, v10

    if-nez v10, :cond_23

    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, "dockMode":I
    :goto_1b
    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 106
    const/16 v12, 0x160

    .line 105
    invoke-virtual {v7, v10, v3, v11, v12}, Lcom/android/systemui/recents/Recents;->dockTopTask(IILandroid/graphics/Rect;I)Z

    .line 96
    .end local v3    # "dockMode":I
    .end local v4    # "dockSide":I
    .end local v7    # "recents":Lcom/android/systemui/recents/Recents;
    :goto_22
    return-void

    .line 104
    .restart local v4    # "dockSide":I
    .restart local v7    # "recents":Lcom/android/systemui/recents/Recents;
    :cond_23
    const/4 v3, 0x1

    .restart local v3    # "dockMode":I
    goto :goto_1b

    .line 109
    .end local v3    # "dockMode":I
    .end local v7    # "recents":Lcom/android/systemui/recents/Recents;
    :cond_25
    const-class v10, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v10}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v10}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    .line 110
    .local v2, "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v8

    .line 111
    .local v8, "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    .line 113
    .local v1, "dividerPosition":I
    invoke-virtual {v8, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 114
    .local v0, "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const-wide v10, 0x1000000000047L

    cmp-long v10, p1, v10

    if-nez v10, :cond_64

    const/4 v6, -0x1

    .line 115
    .local v6, "increment":I
    :goto_47
    invoke-virtual {v8, v0, v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;->cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 117
    .local v9, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 118
    iget v10, v9, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 119
    const/4 v13, 0x1

    .line 118
    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_22

    .line 121
    .end local v0    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v1    # "dividerPosition":I
    .end local v2    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .end local v4    # "dockSide":I
    .end local v6    # "increment":I
    .end local v8    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v9    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :catch_59
    move-exception v5

    .line 122
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShortcutKeyDispatcher"

    const-string/jumbo v11, "handleDockKey() failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 114
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v1    # "dividerPosition":I
    .restart local v2    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .restart local v4    # "dockSide":I
    .restart local v8    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    :cond_64
    const/4 v6, 0x1

    goto :goto_47
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .registers 8
    .param p1, "shortcutCode"    # J

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 84
    .local v0, "orientation":I
    const-wide v2, 0x1000000000047L

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1e

    const-wide v2, 0x1000000000048L

    cmp-long v1, p1, v2

    if-nez v1, :cond_24

    .line 85
    :cond_1e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    .line 82
    :cond_24
    return-void
.end method

.method public registerShortcutKey(J)V
    .registers 6
    .param p1, "shortcutCode"    # J

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v1, p1, p2, v2}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 73
    :goto_7
    return-void

    .line 76
    :catch_8
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method public start()V
    .registers 3

    .prologue
    .line 92
    const-wide v0, 0x1000000000047L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 93
    const-wide v0, 0x1000000000048L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 91
    return-void
.end method
