.class final synthetic Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;


# direct methods
.method constructor <init>(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$$Lambda$0;->arg$1:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$$Lambda$0;->arg$1:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->lambda$setupAdapter$0$NerdLauncherFragment(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
