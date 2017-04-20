.class final synthetic Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

.field private synthetic val$view:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;Landroid/view/View;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;->val$view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$2(Landroid/view/View;)V

    return-void
.end method
