.class final synthetic Lcom/android/systemui/doze/DozeService$-void_onDreamingStarted__LambdaImpl0;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onDreamingStarted__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/doze/DozeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$-void_onDreamingStarted__LambdaImpl0;->val$this:Lcom/android/systemui/doze/DozeService;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$-void_onDreamingStarted__LambdaImpl0;->val$this:Lcom/android/systemui/doze/DozeService;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeService;->-com_android_systemui_doze_DozeService_lambda$1()V

    return-void
.end method
