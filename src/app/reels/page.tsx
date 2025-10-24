import { Play, Heart, MessageCircle, Send, Bookmark } from "lucide-react"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"

const reels = [
  {
    id: 1,
    username: "디자이너김",
    initials: "김",
    title: "로고 디자인 작업 과정",
    thumbnail: "https://images.unsplash.com/photo-1626785774573-4b799315345d?w=400&h=700&fit=crop",
    views: "12.5K",
    likes: 1234,
  },
  {
    id: 2,
    username: "개발자박",
    initials: "박",
    title: "코딩 타임랩스 - React",
    thumbnail: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=400&h=700&fit=crop",
    views: "8.9K",
    likes: 891,
  },
  {
    id: 3,
    username: "영상PD",
    initials: "PD",
    title: "드론 촬영 비하인드",
    thumbnail: "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?w=400&h=700&fit=crop",
    views: "15.2K",
    likes: 1567,
  },
]

export default function ReelsPage() {
  return (
    <div className="w-full mx-auto px-4 py-8 max-w-6xl">
      <h1 className="text-3xl font-bold mb-8">릴스</h1>

      <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
        {reels.map((reel) => (
          <Card key={reel.id} className="overflow-hidden hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
            <div className="relative aspect-[9/16] bg-muted">
              <img
                src={reel.thumbnail}
                alt={reel.title}
                className="w-full h-full object-cover"
              />
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
    </div>
  )
}
