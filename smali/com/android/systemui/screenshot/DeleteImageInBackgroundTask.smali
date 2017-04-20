.class Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 381
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 386
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 387
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    return-object v4

    .line 389
    :cond_6
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 390
    .local v1, "screenshotUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    return-object v4
.end method
