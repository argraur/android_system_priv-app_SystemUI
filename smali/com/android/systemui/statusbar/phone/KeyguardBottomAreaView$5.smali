.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 457
    const/16 v16, -0x6

    .line 467
    .local v16, "result":I
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v15

    .line 469
    .local v15, "o":Landroid/app/ActivityOptions;
    const/4 v1, 0x3

    .line 468
    invoke-virtual {v15, v1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 471
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$intent:Landroid/content/Intent;

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 475
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 476
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 472
    const/4 v2, 0x0

    .line 475
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    .line 471
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_46} :catch_65

    move-result v16

    .line 480
    :goto_47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->preventNextAnimation()V

    .line 481
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap0(I)Z

    move-result v14

    .line 482
    .local v14, "launched":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void

    .line 477
    .end local v14    # "launched":Z
    :catch_65
    move-exception v13

    .line 478
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "Unable to start camera activity"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method
