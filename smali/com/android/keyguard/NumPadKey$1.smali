.class Lcom/android/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->-get1(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->-get2(Lcom/android/keyguard/NumPadKey;)I

    move-result v1

    if-lez v1, :cond_2d

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKey;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v2}, Lcom/android/keyguard/NumPadKey;->-get2(Lcom/android/keyguard/NumPadKey;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2d

    instance-of v1, v0, Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_2d

    .line 51
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v1, v0}, Lcom/android/keyguard/NumPadKey;->-set0(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;

    .line 54
    :cond_2d
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->-get1(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->-get1(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 55
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->-get1(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v2}, Lcom/android/keyguard/NumPadKey;->-get0(Lcom/android/keyguard/NumPadKey;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 57
    :cond_56
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKey;->userActivity()V

    .line 47
    return-void
.end method
