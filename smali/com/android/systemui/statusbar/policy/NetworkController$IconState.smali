.class public Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconState"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/String;

.field public final icon:I

.field public final visible:Z


# direct methods
.method public constructor <init>(ZIILandroid/content/Context;)V
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "icon"    # I
    .param p3, "contentDescription"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "icon"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    .line 71
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 72
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    .line 69
    return-void
.end method
