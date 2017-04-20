.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    .prologue
    .line 4170
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4172
    return-void
.end method
