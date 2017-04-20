.class Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;

.field private showSoftInputUnchecked:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2022
    :try_start_3
    const-class v1, Landroid/widget/AutoCompleteTextView;

    .line 2023
    const-string/jumbo v2, "doBeforeTextChanged"

    .line 2022
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2024
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_17} :catch_69

    .line 2029
    :goto_17
    :try_start_17
    const-class v1, Landroid/widget/AutoCompleteTextView;

    .line 2030
    const-string/jumbo v2, "doAfterTextChanged"

    .line 2029
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2031
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_2b} :catch_67

    .line 2036
    :goto_2b
    :try_start_2b
    const-class v1, Landroid/widget/AutoCompleteTextView;

    .line 2037
    const-string/jumbo v2, "ensureImeVisible"

    .line 2036
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 2037
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2036
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 2038
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_44} :catch_65

    .line 2043
    :goto_44
    :try_start_44
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2044
    const-string/jumbo v2, "showSoftInputUnchecked"

    .line 2043
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 2044
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/ResultReceiver;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2043
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    .line 2045
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_62} :catch_63

    .line 2020
    :goto_62
    return-void

    .line 2046
    :catch_63
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_62

    .line 2039
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_65
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_44

    .line 2032
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_67
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2b

    .line 2025
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_69
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_17
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 2061
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_c

    .line 2063
    :try_start_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 2060
    :cond_c
    :goto_c
    return-void

    .line 2064
    :catch_d
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_c
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 2052
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_c

    .line 2054
    :try_start_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 2051
    :cond_c
    :goto_c
    return-void

    .line 2055
    :catch_d
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_c
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .registers 8
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "visible"    # Z

    .prologue
    .line 2070
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    .line 2072
    :try_start_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    .line 2069
    :cond_13
    :goto_13
    return-void

    .line 2073
    :catch_14
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_13
.end method

.method showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V
    .registers 9
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    .line 2079
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_19

    .line 2081
    :try_start_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 2082
    return-void

    .line 2083
    :catch_18
    move-exception v0

    .line 2088
    :cond_19
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2078
    return-void
.end method
