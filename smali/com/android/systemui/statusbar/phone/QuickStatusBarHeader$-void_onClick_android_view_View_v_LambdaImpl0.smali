.class final synthetic Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onClick_android_view_View_v_LambdaImpl0;
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
    name = "-void_onClick_android_view_View_v_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onClick_android_view_View_v_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onClick_android_view_View_v_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$4()V

    return-void
.end method
