.class Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;
.super Landroid/os/AsyncTask;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field final synthetic val$currentUser:I

.field final synthetic val$selectedUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;ILandroid/os/UserHandle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
    .param p2, "val$currentUser"    # I
    .param p3, "val$selectedUser"    # Landroid/os/UserHandle;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$currentUser:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$currentUser:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;)V
    .registers 6
    .param p1, "result"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 182
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    return-void

    .line 186
    :cond_c
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    if-eqz v0, :cond_33

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-set1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-set0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-get1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_39

    move v0, v1

    :goto_27
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(ZZ)V

    .line 193
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-set2(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 181
    return-void

    .line 189
    :cond_39
    const/4 v0, 0x0

    goto :goto_27
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->onPostExecute(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;)V

    return-void
.end method
