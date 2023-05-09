.class Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NerdLauncherFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHolder"
.end annotation


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;


# direct methods
.method public constructor <init>(Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    .line 77
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    const v0, 0x7f070023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mBtn:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public bindActivity(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 84
    iput-object p1, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 85
    iget-object v3, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    invoke-virtual {v3}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "appName":Ljava/lang/String;
    iget-object v3, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 95
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment$ActivityHolder;->this$0:Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;

    invoke-virtual {v2, v1}, Lcom/bignerdranch/android/nerdlauncher/NerdLauncherFragment;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
