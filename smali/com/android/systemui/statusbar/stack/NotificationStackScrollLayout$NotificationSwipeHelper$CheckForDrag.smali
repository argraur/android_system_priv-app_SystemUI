.class final Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDrag"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .prologue
    .line 4261
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 4264
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_b

    .line 4265
    return-void

    .line 4267
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v5, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    .line 4268
    .local v3, "translation":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 4269
    .local v0, "absTransX":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v5, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->-wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Landroid/view/View;)F

    move-result v1

    .line 4270
    .local v1, "bounceBackToGearWidth":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v5, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->-wrap0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Landroid/view/View;)F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float v2, v4, v5

    .line 4271
    .local v2, "notiThreshold":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    if-eqz v4, :cond_85

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 4272
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconLocationChange(F)Z

    move-result v4

    .line 4271
    if-eqz v4, :cond_85

    .line 4273
    :cond_64
    float-to-double v4, v0

    float-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_85

    .line 4274
    cmpg-float v4, v0, v2

    if-gez v4, :cond_85

    .line 4276
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v5

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_86

    const/4 v4, 0x1

    :goto_82
    invoke-virtual {v5, v4, v3, v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->fadeInSettings(ZFF)V

    .line 4263
    :cond_85
    return-void

    .line 4276
    :cond_86
    const/4 v4, 0x0

    goto :goto_82
.end method
