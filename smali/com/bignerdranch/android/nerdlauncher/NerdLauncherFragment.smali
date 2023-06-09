.class public Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;
.super Landroid/support/v4/app/Fragment;
.source "NerdLauncherFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;,
        Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NerdLauncherFragment"


# instance fields
.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    invoke-direct {v0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;-><init>()V

    return-object v0
.end method

.method private setupAdapter()V
    .locals 9

    .prologue
    .line 49
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v5, "startupIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 52
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$$Lambda$0;

    invoke-direct {v6, p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$$Lambda$0;-><init>(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;)V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "userApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 61
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 62
    .local v7, "flags":I
    and-int/lit16 v8, v7, 0x81

    if-nez v8, :cond_0

    .line 63
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v6, "NerdLauncherFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v6, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;

    invoke-direct {v7, p0, v2}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;-><init>(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    return-void
.end method


# virtual methods
.method final synthetic lambda$setupAdapter$0$NerdLauncherFragment(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    .local v0, "pm1":Landroid/content/pm/PackageManager;
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    const v2, 0x7f09001c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iget-object v2, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 42
    invoke-direct {p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->setupAdapter()V

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bignerdranch/android/nerdlauncher/NotificationService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "newintent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    return-object v1
.end method
