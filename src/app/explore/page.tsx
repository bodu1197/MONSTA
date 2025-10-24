import { Search, TrendingUp, Filter } from "lucide-react"
import Link from "next/link"
import { Input } from "@/components/ui/input"
import { Card } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"

// 임시 데이터
const featuredCreators = [
  {
    id: 1,
    username: "김디자이너",
    initials: "김",
    title: "UI/UX 디자이너",
    followers: 1234,
    rating: 4.9,
    verified: true,
  },
  {
    id: 2,
    username: "박개발자",
    initials: "박",
    title: "풀스택 개발자",
    followers: 891,
    rating: 4.8,
    verified: true,
  },
  {
    id: 3,
    username: "이마케터",
    initials: "이",
    title: "디지털 마케팅",
    followers: 567,
    rating: 4.7,
    verified: false,
  },
]

const trendingPosts = [
  {
    id: 1,
    image: "https://images.unsplash.com/photo-1626785774573-4b799315345d?w=400&h=400&fit=crop",
    title: "미니멀 로고 디자인",
    creator: "김디자이너",
    likes: 234,
    views: 1200,
  },
  {
    id: 2,
    image: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=400&h=400&fit=crop",
    title: "반응형 웹 대시보드",
    creator: "박개발자",
    likes: 189,
    views: 980,
  },
  {
    id: 3,
    image: "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?w=400&h=400&fit=crop",
    title: "기업 홍보 영상",
    creator: "영상PD",
    likes: 156,
    views: 890,
  },
  {
    id: 4,
    image: "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=400&h=400&fit=crop",
    title: "SNS 마케팅 전략",
    creator: "이마케터",
    likes: 145,
    views: 780,
  },
  {
    id: 5,
    image: "https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?w=400&h=400&fit=crop",
    title: "브랜드 아이덴티티",
    creator: "최브랜딩",
    likes: 178,
    views: 950,
  },
  {
    id: 6,
    image: "https://images.unsplash.com/photo-1558655146-9f40138edfeb?w=400&h=400&fit=crop",
    title: "모바일 앱 UI 디자인",
    creator: "정UI디자이너",
    likes: 201,
    views: 1100,
  },
]

export default function ExplorePage() {
  return (
    <div className="w-full mx-auto px-4 py-8 max-w-6xl">
      {/* Search Section */}
      <div className="mb-12">
        <div className="relative max-w-2xl mx-auto mb-4">
          <Search className="absolute left-4 top-1/2 h-5 w-5 -translate-y-1/2 text-muted-foreground" />
          <Input
            type="search"
            placeholder="크리에이터, 서비스, 태그 검색..."
            className="pl-12 pr-12 h-14 text-lg rounded-full border-2 focus:border-primary"
          />
          <Button
            variant="ghost"
            size="icon"
            className="absolute right-2 top-1/2 -translate-y-1/2"
          >
            <Filter className="h-5 w-5" />
          </Button>
        </div>

        {/* Popular Searches */}
        <div className="flex flex-wrap gap-2 justify-center">
          {["로고 디자인", "웹 개발", "영상 편집", "AI 이미지"].map((tag) => (
            <Link key={tag} href={`/search?q=${tag}`}>
              <Badge variant="outline" className="px-4 py-2 cursor-pointer hover:bg-primary hover:text-white transition">
                {tag}
              </Badge>
            </Link>
          ))}
        </div>
      </div>

      {/* Featured Creators */}
      <section className="mb-12">
        <div className="flex items-center justify-between mb-6">
          <div>
            <h2 className="text-2xl font-bold mb-1">주목받는 크리에이터</h2>
            <p className="text-sm text-muted-foreground">인기 상승 중인 전문가</p>
          </div>
          <Link href="/creators">
            <Button variant="ghost">
              더보기
            </Button>
          </Link>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {featuredCreators.map((creator) => (
            <Link key={creator.id} href={`/profile/${creator.username}`}>
              <Card className="p-6 hover:shadow-lg transition cursor-pointer border-2 hover:border-primary">
                <div className="flex flex-col items-center text-center">
                  <Avatar className="w-20 h-20 mb-4">
                    <AvatarFallback className="bg-primary/10 text-primary font-bold text-xl">
                      {creator.initials}
                    </AvatarFallback>
                  </Avatar>
                  <div className="flex items-center gap-2 mb-1">
                    <h3 className="font-bold text-lg">{creator.username}</h3>
                    {creator.verified && (
                      <Badge variant="secondary" className="bg-primary text-white text-xs px-2">
                        인증
                      </Badge>
                    )}
                  </div>
                  <p className="text-sm text-muted-foreground mb-3">
                    {creator.title}
                  </p>
                  <div className="flex items-center gap-4 text-sm text-muted-foreground mb-4">
                    <div>
                      <span className="font-semibold text-foreground">
                        {creator.followers.toLocaleString()}
                      </span>
                      {" "}팔로워
                    </div>
                    <div>
                      평점{" "}
                      <span className="font-semibold text-foreground">
                        {creator.rating}
                      </span>
                    </div>
                  </div>
                  <Button className="w-full" size="sm">
                    팔로우
                  </Button>
                </div>
              </Card>
            </Link>
          ))}
        </div>
      </section>

      {/* Trending Works */}
      <section>
        <div className="flex items-center gap-2 mb-6">
          <TrendingUp className="h-6 w-6 text-primary" />
          <h2 className="text-2xl font-bold">트렌딩 작업물</h2>
        </div>

        <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
          {trendingPosts.map((post) => (
            <Link key={post.id} href={`/post/${post.id}`}>
              <Card className="overflow-hidden hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
                <div className="relative aspect-square bg-muted">
                  <img
                    src={post.image}
                    alt={post.title}
                    className="w-full h-full object-cover group-hover:scale-105 transition"
                  />
                  <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition" />
                </div>
                <div className="p-4">
                  <h3 className="font-semibold mb-1 group-hover:text-primary transition">
                    {post.title}
                  </h3>
                  <p className="text-sm text-muted-foreground mb-2">
                    {post.creator}
                  </p>
                  <div className="flex items-center gap-3 text-xs text-muted-foreground">
                    <span>좋아요 {post.likes}</span>
                    <span>조회 {post.views.toLocaleString()}</span>
                  </div>
                </div>
              </Card>
            </Link>
          ))}
        </div>

        <div className="text-center mt-8">
          <Button variant="outline" size="lg" className="rounded-full">
            더 많은 작업물 보기
          </Button>
        </div>
      </section>
    </div>
  )
}
