.class public final synthetic Landroidx/preference/PreferenceHeaderFragmentCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/preference/PreferenceHeaderFragmentCompat;"
    method = "onViewCreated$lambda-10"
    proto = "(Landroidx/preference/PreferenceHeaderFragmentCompat;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/preference/PreferenceHeaderFragmentCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/PreferenceHeaderFragmentCompat;

    return-void
.end method


# virtual methods
.method public synthetic onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener$-CC;->$default$onBackStackChangeCommitted(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public synthetic onBackStackChangeStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener$-CC;->$default$onBackStackChangeStarted(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public final onBackStackChanged()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/PreferenceHeaderFragmentCompat;

    invoke-static {v0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->$r8$lambda$UBzSjdTT_FWTCre_igcL-des9zg(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    return-void
.end method
