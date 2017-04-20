.class Lcom/android/systemui/volume/ZenModePanel$3;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/Interaction$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-wrap3(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 970
    return-void
.end method
