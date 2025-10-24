import { Heart, MessageCircle, Send, Bookmark, Plus } from "lucide-react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"

// 임시 데이터
const stories = [
  { id: 1, username: "디자이너김", initials: "김", hasNew: true },
  { id: 2, username: "개발자박", initials: "박", hasNew: true },
  { id: 3, username: "영상PD", initials: "PD", hasNew: false },
  { id: 4, username: "마케터최", initials: "최", hasNew: true },
  { id: 5, username: "번역가이", initials: "이", hasNew: false },
  { id: 6, username: "작가정", initials: "정", hasNew: true },
]

const posts = [
  {
    id: 1,
    username: "디자이너김",
    initials: "김",
    image: "https://images.unsplash.com/photo-1626785774573-4b799315345d?w=600&h=600&fit=crop",
    likes: 1234,
    caption: "새로운 로고 디자인 프로젝트 완성! 클라이언트가 너무 만족해주셨어요",
    tags: ["로고디자인", "브랜딩", "미니멀"],
    timeAgo: "2시간 전"
  },
  {
    id: 2,
    username: "개발자박",
    initials: "박",
    image: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=600&h=600&fit=crop",
    likes: 891,
    caption: "React + Next.js로 만든 대시보드 UI. 반응형으로 완벽 구현",
    tags: ["웹개발", "리액트", "넥스트"],
    timeAgo: "5시간 전"
  },
  {
    id: 3,
    username: "영상PD",
    initials: "PD",
    image: "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?w=600&h=600&fit=crop",
    likes: 567,
    caption: "기업 홍보 영상 촬영 현장! 드론 촬영으로 멋진 앵글 확보",
    tags: ["영상제작", "드론촬영", "기업홍보"],
    timeAgo: "8시간 전"
  },
]

export default function Home() {
  return (
    <div className="w-full max-w-2xl mx-auto px-0">
      {/* Stories Section */}
      <div className="border-b bg-background sticky top-16 z-40 pb-4 pt-4">
        <div className="flex gap-4 overflow-x-auto px-4 scrollbar-hide">
          {/* Your Story */}
          <div className="flex flex-col items-center gap-2 min-w-[80px]">
            <div className="relative">
              <div className="w-16 h-16 rounded-full bg-muted flex items-center justify-center border-2 border-dashed border-muted-foreground/30 cursor-pointer hover:bg-muted/80 transition">
                <Plus style={{ width: '24px', height: '24px' }} className="text-muted-foreground" />
              </div>
            </div>
            <span className="text-xs text-center font-medium">내 스토리</span>
          </div>

          {/* Other Stories */}
          {stories.map((story) => (
            <div key={story.id} className="flex flex-col items-center gap-2 min-w-[80px]">
              <div className="relative">
                <Avatar
                  className={`w-16 h-16 cursor-pointer transition border-2 ${
                    story.hasNew
                      ? "border-primary"
                      : "border-muted"
                  }`}
                >
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                    {story.initials}
                  </AvatarFallback>
                </Avatar>
              </div>
              <span className="text-xs text-center font-medium truncate w-full">
                {story.username}
              </span>
            </div>
          ))}
        </div>
      </div>

      {/* Feed Posts */}
      <div className="pb-4 px-0">
        {posts.map((post) => (
          <Card key={post.id} className="mb-6 overflow-hidden border-0 rounded-none sm:border sm:rounded-xl shadow-sm">
            {/* Post Header */}
            <div className="flex items-center justify-between p-4">
              <div className="flex items-center gap-3">
                <Avatar className="w-10 h-10">
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold text-sm">
                    {post.initials}
                  </AvatarFallback>
                </Avatar>
                <div>
                  <p className="font-semibold text-sm">{post.username}</p>
                  <p className="text-xs text-muted-foreground">{post.timeAgo}</p>
                </div>
              </div>
              <Button variant="ghost" size="sm" className="text-primary hover:text-primary/80">
                팔로우
              </Button>
            </div>

            {/* Post Image */}
            <div className="relative w-full aspect-square bg-muted">
              <img
                src={post.image}
                alt="Post"
                className="w-full h-full object-cover"
              />
            </div>

            {/* Post Actions */}
            <div className="p-4">
              <div className="flex items-center justify-between mb-3">
                <div className="flex items-center gap-5">
                  <button className="hover:text-primary transition active:scale-95">
                    <Heart style={{ width: '28px', height: '28px' }} />
                  </button>
                  <button className="hover:text-primary transition active:scale-95">
                    <MessageCircle style={{ width: '28px', height: '28px' }} />
                  </button>
                  <button className="hover:text-primary transition active:scale-95">
                    <Send style={{ width: '28px', height: '28px' }} />
                  </button>
                </div>
                <button className="hover:text-primary transition active:scale-95">
                  <Bookmark style={{ width: '28px', height: '28px' }} />
                </button>
              </div>

              {/* Likes */}
              <p className="font-semibold text-sm mb-2">
                좋아요 {post.likes.toLocaleString()}개
              </p>

              {/* Caption */}
              <div className="text-sm mb-2">
                <span className="font-semibold mr-2">{post.username}</span>
                <span>{post.caption}</span>
              </div>

              {/* Tags */}
              <div className="flex flex-wrap gap-2 mb-2">
                {post.tags.map((tag) => (
                  <Link
                    key={tag}
                    href={`/tags/${tag}`}
                    className="text-sm text-primary hover:underline"
                  >
                    #{tag}
                  </Link>
                ))}
              </div>

              {/* View Comments */}
              <button className="text-sm text-muted-foreground hover:text-foreground">
                댓글 45개 모두 보기
              </button>
            </div>
          </Card>
        ))}

        {/* Load More */}
        <div className="text-center py-8">
          <Button variant="outline" size="lg" className="rounded-full">
            더 보기
          </Button>
        </div>
      </div>
    </div>
  )
}
