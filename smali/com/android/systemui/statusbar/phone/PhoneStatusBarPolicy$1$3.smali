.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$3;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->onForegroundProfileSwitch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

.field final synthetic val$newProfileId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;
    .param p2, "val$newProfileId"    # I

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$3;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$3;->val$newProfileId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$3;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$3;->val$newProfileId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    .line 445
    return-void
.end method
