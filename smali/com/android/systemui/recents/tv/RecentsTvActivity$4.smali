.class Lcom/android/systemui/recents/tv/RecentsTvActivity$4;
.super Ljava/lang/Object;
.source "RecentsTvActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/RecentsTvActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$4;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 260
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "homekey"

    .line 260
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 259
    return-void
.end method
