.class public final enum Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
.super Ljava/lang/Enum;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "Invalid"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "Pattern"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "Password"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "PIN"

    invoke-direct {v0, v1, v7}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "SimPin"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string/jumbo v1, "SimPuk"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method
