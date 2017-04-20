.class Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
.super Landroid/os/Handler;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$H;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 165
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_76

    .line 164
    :cond_5
    :goto_5
    return-void

    .line 167
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "how":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v4

    .line 169
    .local v4, "w":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHeight()I

    move-result v0

    .line 170
    .local v0, "h":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 171
    .local v3, "vw":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 173
    .local v2, "vh":I
    if-ne v0, v2, :cond_40

    if-eq v4, v3, :cond_5

    .line 174
    :cond_40
    const-string/jumbo v5, "StatusBar/NavBarView"

    .line 175
    const-string/jumbo v6, "*** Invalid layout in navigation bar (%s this=%dx%d cur=%dx%d)"

    .line 174
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 176
    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 174
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestLayout()V

    goto :goto_5

    .line 165
    nop

    :pswitch_data_76
    .packed-switch 0x21ee
        :pswitch_6
    .end packed-switch
.end method
