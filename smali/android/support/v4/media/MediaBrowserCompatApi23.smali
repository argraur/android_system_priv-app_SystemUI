.class Landroid/support/v4/media/MediaBrowserCompatApi23;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;,
        Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItemCallback(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    .prologue
    .line 26
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V

    return-object v0
.end method