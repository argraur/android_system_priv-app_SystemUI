.class final Lcom/android/systemui/volume/VolumeDialog$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1219
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog;->-get1(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 1220
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "asi$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1221
    .local v0, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_10

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_10

    .line 1222
    const/4 v3, 0x1

    return v3

    .line 1225
    .end local v0    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_28
    return v5
.end method

.method private updateFeedbackEnabled()V
    .registers 2

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z

    .line 1212
    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get7(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get7(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get1(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1196
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    .line 1195
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1202
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->updateFeedbackEnabled()V

    .line 1181
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 1209
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
