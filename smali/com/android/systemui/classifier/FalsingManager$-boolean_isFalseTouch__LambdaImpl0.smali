.class final synthetic Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_isFalseTouch__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$enabled:I

.field private synthetic val$here:Ljava/lang/Throwable;

.field private synthetic val$screenOn:I

.field private synthetic val$state:Ljava/lang/String;

.field private synthetic val$this:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$this:Lcom/android/systemui/classifier/FalsingManager;

    iput p2, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$enabled:I

    iput p3, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$screenOn:I

    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$state:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$here:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$this:Lcom/android/systemui/classifier/FalsingManager;

    iget v1, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$enabled:I

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$screenOn:I

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$state:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;->val$here:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/classifier/FalsingManager;->-com_android_systemui_classifier_FalsingManager_lambda$1(IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
