.class Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NerdLauncherFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;


# direct methods
.method public constructor <init>(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->mActivities:Ljava/util/List;

    .line 106
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->onBindViewHolder(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;
    .param p2, "position"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1, v0}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->bindActivity(Landroid/content/pm/ResolveInfo;)V

    .line 120
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 110
    iget-object v2, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    invoke-virtual {v2}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f09001b

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;

    iget-object v3, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityAdapter;->this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    invoke-direct {v2, v3, v1}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;-><init>(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;Landroid/view/View;)V

    return-object v2
.end method
