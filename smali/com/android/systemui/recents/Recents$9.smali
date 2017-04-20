.class Lcom/android/systemui/recents/Recents$9;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$9;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$9;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->-wrap0(Lcom/android/systemui/recents/Recents;)V

    .line 743
    return-void
.end method
