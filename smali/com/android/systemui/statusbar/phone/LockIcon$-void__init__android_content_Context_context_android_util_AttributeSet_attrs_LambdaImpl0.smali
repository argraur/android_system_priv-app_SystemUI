.class final synthetic Lcom/android/systemui/statusbar/phone/LockIcon$-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->-com_android_systemui_statusbar_phone_LockIcon_lambda$1()V

    return-void
.end method
