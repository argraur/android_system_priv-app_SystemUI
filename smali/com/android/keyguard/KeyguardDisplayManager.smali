.class public Lcom/android/keyguard/KeyguardDisplayManager;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDisplayManager$1;,
        Lcom/android/keyguard/KeyguardDisplayManager$2;,
        Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mPresentation:Landroid/app/Presentation;

.field private mShowing:Z


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardDisplayManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    .line 63
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 84
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$2;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 40
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 39
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    if-eqz v0, :cond_1c

    .line 56
    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "KeyguardDisplayManager"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    .line 60
    :cond_1c
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 54
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 45
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    if-nez v0, :cond_1f

    .line 46
    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "KeyguardDisplayManager"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 47
    const/4 v2, 0x4

    .line 48
    const/16 v3, 0x8

    .line 47
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    .line 51
    :cond_1f
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 44
    return-void
.end method

.method protected updateDisplays(Z)V
    .registers 10
    .param p1, "showing"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 93
    if-eqz p1, :cond_a0

    .line 94
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 95
    const/4 v6, 0x4

    .line 94
    invoke-virtual {v5, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 96
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_8f

    .line 97
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v5

    if-ne v5, v3, :cond_8d

    .line 98
    .local v3, "useDisplay":Z
    :goto_14
    if-eqz v3, :cond_91

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 100
    :goto_1a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eq v4, v1, :cond_51

    .line 101
    sget-boolean v4, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v4, :cond_4a

    const-string/jumbo v4, "KeyguardDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Display gone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v6}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->dismiss()V

    .line 103
    iput-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 106
    :cond_51
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-nez v4, :cond_8c

    if-eqz v1, :cond_8c

    .line 107
    sget-boolean v4, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v4, :cond_75

    const-string/jumbo v4, "KeyguardDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Keyguard enabled on display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_75
    new-instance v4, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    .line 109
    sget v6, Lcom/android/keyguard/R$style;->keyguard_presentation_theme:I

    .line 108
    invoke-direct {v4, v5, v1, v6}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 110
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    :try_start_87
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->show()V
    :try_end_8c
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_87 .. :try_end_8c} :catch_93

    .line 92
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v3    # "useDisplay":Z
    :cond_8c
    :goto_8c
    return-void

    .restart local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_8d
    move v3, v4

    .line 97
    goto :goto_14

    :cond_8f
    move v3, v4

    .line 96
    goto :goto_14

    .line 98
    .restart local v3    # "useDisplay":Z
    :cond_91
    const/4 v1, 0x0

    .local v1, "presentationDisplay":Landroid/view/Display;
    goto :goto_1a

    .line 113
    .end local v1    # "presentationDisplay":Landroid/view/Display;
    :catch_93
    move-exception v0

    .line 114
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    const-string/jumbo v4, "KeyguardDisplayManager"

    const-string/jumbo v5, "Invalid display:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iput-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    goto :goto_8c

    .line 119
    .end local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v3    # "useDisplay":Z
    :cond_a0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v4, :cond_8c

    .line 120
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->dismiss()V

    .line 121
    iput-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    goto :goto_8c
.end method
