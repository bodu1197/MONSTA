import { Play, Heart } from "lucide-react"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { createClient } from "@/lib/supabase/server"

function formatViews(views: number): string {
  if (views >= 1000000) {
    return `${(views / 1000000).toFixed(1)}M`
  } else if (views >= 1000) {
    return `${(views / 1000).toFixed(1)}K`
  }
  return views.toString()
}

export default async function ReelsPage() {
  const supabase = await createClient()

  // Get video posts (reels) ordered by views
  const { data: posts } = await supabase
    .from("posts")
    .select(`
      *,
      user:user_id(username, email)
    `)
    .eq("media_type", "video")
    .order("view_count", { ascending: false })
    .limit(12)

  const reels = posts?.map((post: any) => ({
    id: post.id,
    username: post.user?.username || post.user?.email || "알 수 없음",
    initials: (post.user?.username || post.user?.email)?.charAt(0)?.toUpperCase() || "U",
    title: post.title || "제목 없음",
    thumbnail: post.media_urls?.[0] || "",
    views: formatViews(post.view_count),
    likes: post.like_count,
  })) || []

  return (
    <div className="w-full mx-auto px-4 py-8 max-w-6xl">
      <h1 className="text-3xl font-bold mb-8">릴스</h1>

      {reels.length > 0 ? (
        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
          {reels.map((reel) => (
            <Card key={reel.id} className="overflow-hidden hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
              <div className="relative aspect-[9/16] bg-muted">
                {reel.thumbnail && (
                  <img
                    src={reel.thumbnail}
                    alt={reel.title}
                    className="w-full h-full object-cover"
                  />
                )}
                <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition flex items-center justify-center">
                  <div className="w-16 h-16 rounded-full bg-primary/80 flex items-center justify-center opacity-0 group-hover:opacity-100 transition">
                    <Play style={{ width: '32px', height: '32px' }} className="text-white fill-white" />
                  </div>
                </div>

                {/* Views */}
                <div className="absolute top-4 right-4 bg-black/60 px-3 py-1 rounded-full text-white text-sm flex items-center gap-1">
                  <Play style={{ width: '14px', height: '14px' }} />
                  {reel.views}
                </div>

                {/* Info */}
                <div className="absolute bottom-0 left-0 right-0 p-4 bg-black/80">
                  <div className="flex items-center gap-2 mb-2">
                    <Avatar className="w-8 h-8">
                      <AvatarFallback className="bg-primary text-white text-xs font-semibold">
                        {reel.initials}
                      </AvatarFallback>
                    </Avatar>
                    <span className="text-white font-semibold text-sm">{reel.username}</span>
                  </div>
                  <p className="text-white text-sm font-medium">{reel.title}</p>
                  <div className="flex items-center gap-1 text-white mt-2">
                    <Heart style={{ width: '16px', height: '16px' }} />
                    <span className="text-xs">{reel.likes.toLocaleString()}</span>
                  </div>
                </div>
              </div>
            </Card>
          ))}
        </div>
      ) : (
        <div className="text-center py-12 text-muted-foreground">
          릴스가 없습니다.
        </div>
      )}
    </div>
  )
}
