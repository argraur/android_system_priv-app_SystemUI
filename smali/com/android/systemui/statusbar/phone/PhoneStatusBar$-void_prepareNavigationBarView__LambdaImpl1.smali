.class final synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_prepareNavigationBarView__LambdaImpl1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_prepareNavigationBarView__LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_prepareNavigationBarView__LambdaImpl1;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_prepareNavigationBarView__LambdaImpl1;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-com_android_systemui_statusbar_phone_PhoneStatusBar-mthref-1(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
