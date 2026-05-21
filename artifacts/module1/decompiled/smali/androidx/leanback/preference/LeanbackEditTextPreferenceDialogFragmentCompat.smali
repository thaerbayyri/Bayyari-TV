.class public Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;
.super Landroidx/leanback/preference/LeanbackPreferenceDialogFragmentCompat;
.source "LeanbackEditTextPreferenceDialogFragmentCompat.java"


# static fields
.field private static final DEFAULT_IME_OPTIONS:I = 0x2

.field private static final DEFAULT_INPUT_TYPE:I = 0x1

.field public static final EXTRA_IME_OPTIONS:Ljava/lang/String; = "ime_option"

.field public static final EXTRA_INPUT_TYPE:Ljava/lang/String; = "input_type"

.field private static final SAVE_STATE_IME_OPTIONS:Ljava/lang/String; = "LeanbackEditPreferenceDialog.imeOptions"

.field private static final SAVE_STATE_INPUT_TYPE:Ljava/lang/String; = "LeanbackEditPreferenceDialog.inputType"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "LeanbackEditPreferenceDialog.message"

.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "LeanbackEditPreferenceDialog.text"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "LeanbackEditPreferenceDialog.title"


# instance fields
.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mImeOptions:I

.field private mInputType:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 73
    .local v1, "fragment":Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;
    invoke-virtual {v1, v0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v2

    .line 84
    .local v2, "preference":Landroidx/preference/DialogPreference;
    invoke-virtual {v2}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {v2}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 86
    instance-of v3, v2, Landroidx/preference/EditTextPreference;

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v2}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v2}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 89
    move-object v3, v2

    check-cast v3, Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v2}, Landroidx/preference/DialogPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "input_type"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mInputType:I

    .line 91
    invoke-virtual {v2}, Landroidx/preference/DialogPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ime_option"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mImeOptions:I

    .line 95
    .end local v2    # "preference":Landroidx/preference/DialogPreference;
    goto :goto_0

    .line 93
    .restart local v2    # "preference":Landroidx/preference/DialogPreference;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preference must be a EditTextPreference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    .end local v2    # "preference":Landroidx/preference/DialogPreference;
    :cond_1
    const-string v2, "LeanbackEditPreferenceDialog.title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 97
    const-string v2, "LeanbackEditPreferenceDialog.message"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 98
    const-string v2, "LeanbackEditPreferenceDialog.text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 99
    const-string v2, "LeanbackEditPreferenceDialog.inputType"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mInputType:I

    .line 100
    const-string v1, "LeanbackEditPreferenceDialog.imeOptions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mImeOptions:I

    .line 102
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 120
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 121
    .local v1, "theme":I
    if-nez v1, :cond_0

    .line 123
    sget v1, Landroidx/leanback/preference/R$style;->PreferenceThemeOverlayLeanback:I

    .line 125
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 126
    .local v2, "styledContext":Landroid/content/Context;
    invoke-virtual {p1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 127
    .local v3, "styledInflater":Landroid/view/LayoutInflater;
    sget v4, Landroidx/leanback/preference/R$layout;->leanback_edit_preference_fragment:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 130
    .local v4, "view":Landroid/view/View;
    iget-object v6, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 131
    sget v6, Landroidx/leanback/preference/R$id;->decor_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 132
    .local v6, "titleView":Landroid/widget/TextView;
    iget-object v7, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 136
    const v6, 0x102000b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 137
    .local v6, "messageView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v5, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v6    # "messageView":Landroid/widget/TextView;
    :cond_2
    const v5, 0x1020003

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 142
    .local v5, "editText":Landroid/widget/EditText;
    iget v6, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mInputType:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 143
    iget v6, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mImeOptions:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 144
    iget-object v6, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 145
    iget-object v6, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_3
    new-instance v6, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;

    invoke-direct {v6, p0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat$1;-><init>(Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    return-object v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 106
    invoke-super {p0, p1}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "LeanbackEditPreferenceDialog.title"

    iget-object v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 108
    const-string v0, "LeanbackEditPreferenceDialog.message"

    iget-object v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 109
    const-string v0, "LeanbackEditPreferenceDialog.text"

    iget-object v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 110
    const-string v0, "LeanbackEditPreferenceDialog.inputType"

    iget v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mInputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v0, "LeanbackEditPreferenceDialog.imeOptions"

    iget v1, p0, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->mImeOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 172
    invoke-super {p0}, Landroidx/leanback/preference/LeanbackPreferenceDialogFragmentCompat;->onStart()V

    .line 173
    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 174
    .local v0, "editText":Landroid/widget/EditText;
    nop

    .line 175
    invoke-virtual {p0}, Landroidx/leanback/preference/LeanbackEditTextPreferenceDialogFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 176
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 177
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 178
    return-void
.end method
