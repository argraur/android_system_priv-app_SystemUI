.class Lcom/android/systemui/volume/MediaSessions$1;
.super Ljava/lang/Object;
.source "MediaSessions.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/MediaSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/MediaSessions;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/MediaSessions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/MediaSessions;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions$1;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$1;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    .line 328
    return-void
.end method
