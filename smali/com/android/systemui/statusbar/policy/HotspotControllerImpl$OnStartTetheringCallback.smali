.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnStartTetheringCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method public onTetheringStarted()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method
