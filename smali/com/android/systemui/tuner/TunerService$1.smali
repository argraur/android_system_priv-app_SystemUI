.class Lcom/android/systemui/tuner/TunerService$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/tuner/TunerService;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/TunerService;->-set0(Lcom/android/systemui/tuner/TunerService;I)I

    .line 88
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->-wrap0(Lcom/android/systemui/tuner/TunerService;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->this$0:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerService;->reregisterAll()V

    .line 86
    return-void
.end method
