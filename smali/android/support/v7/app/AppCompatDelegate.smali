.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegate$NightMode;
    }
.end annotation


# static fields
.field private static sCompatVectorFromResourcesEnabled:Z

.field private static sDefaultNightMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    const/4 v0, -0x1

    sput v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    .line 89
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .registers 1

    .prologue
    .line 539
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return v0
.end method
