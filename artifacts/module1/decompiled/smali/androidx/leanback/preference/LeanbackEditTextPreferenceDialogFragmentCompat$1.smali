.class Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "LeanbackEditTextPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;

    .line 147
    iput-object p1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;->this$0:Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 150
    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    return v1

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;->this$0:Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;

    .line 156
    invoke-virtual {v0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 157
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 158
    iget-object v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;->this$0:Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;

    invoke-virtual {v1}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    .line 159
    .local v1, "preference":Landroidx/preference/EditTextPreference;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;->this$0:Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;

    invoke-virtual {v2}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 161
    const/4 v2, 0x1

    return v2
.end method
