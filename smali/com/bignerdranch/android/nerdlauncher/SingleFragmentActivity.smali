.class public abstract Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SingleFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createFragment()Landroid/support/v4/app/Fragment;
.end method

.method protected getLayoutResId()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 17
    const v0, 0x7f09001a

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f070034

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;->getLayoutResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 26
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 28
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/SingleFragmentActivity;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 34
    :cond_0
    return-void
.end method
