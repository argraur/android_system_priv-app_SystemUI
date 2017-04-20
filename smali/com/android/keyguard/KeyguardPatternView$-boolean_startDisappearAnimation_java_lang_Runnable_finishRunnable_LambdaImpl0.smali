.class final synthetic Lcom/android/keyguard/KeyguardPatternView$-boolean_startDisappearAnimation_java_lang_Runnable_finishRunnable_LambdaImpl0;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_startDisappearAnimation_java_lang_Runnable_finishRunnable_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$finishRunnable:Ljava/lang/Runnable;

.field private synthetic val$this:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$-boolean_startDisappearAnimation_java_lang_Runnable_finishRunnable_LambdaImpl0;->val$this:Lcom/android/keyguard/KeyguardPatternView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPatternView$-boolean_startDisappearAnimation_java_lang_Runnable_finishRunnable_LambdaImpl0;->val$finishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$-boolean_startDisappearAnimation_java_lang_Runnable_finishRunnable_LambdaImpl0;->val$this:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$-boolean_startDisappearAnimation_java_lang_Runnable_finishRunnable_LambdaImpl0;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-com_android_keyguard_KeyguardPatternView_lambda$1(Ljava/lang/Runnable;)V

    return-void
.end method
