.class final Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetupObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 259
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 260
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 258
    return-void
.end method


# virtual methods
.method public isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public isUserSetup()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 284
    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 285
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 284
    if-eqz v0, :cond_25

    .line 286
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenAvailable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V

    .line 283
    :cond_25
    return-void
.end method

.method public register()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mRegistered:Z

    if-eqz v0, :cond_a

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 276
    const-string/jumbo v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 278
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I

    move-result v2

    .line 277
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenAvailable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V

    .line 271
    return-void
.end method
