.class Landroid/support/v4/os/TraceJellybeanMR2;
.super Ljava/lang/Object;
.source "TraceJellybeanMR2.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1
    .param p0, "section"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static endSection()V
    .registers 0

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    return-void
.end method
