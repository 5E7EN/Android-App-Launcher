.class public Lcom/bignerdranch/android/nerdlauncher/NerdLauncherActivity;
.super Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;
.source "NerdLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->newInstance()Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    move-result-object v0

    return-object v0
.end method
