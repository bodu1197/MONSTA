import { TrendingUp, Clock, Eye, Heart } from "lucide-react"
import Link from "next/link"
import { Card } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"

// 임시 데이터
const trendingPosts = [
  {
    id: 1,
    username: "김디자이너",
    initials: "김",
    image: "https://images.unsplash.com/photo-1626785774573-4b799315345d?w=600&h=600&fit=crop",
    title: "미니멀 로고 디자인",
    category: "디자인",
    likes: 2345,
    views: 12400,
    growth: "+145%",
    timeAgo: "2시간 전",
  },
  {
    id: 2,
    username: "박개발자",
    initials: "박",
    image: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=600&h=600&fit=crop",
    title: "React 대시보드 UI",
    category: "IT/프로그래밍",
    likes: 1892,
    views: 9800,
    growth: "+120%",
    timeAgo: "4시간 전",
  },
  {
    id: 3,
    username: "이영상PD",
    initials: "이",
    image: "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?w=600&h=600&fit=crop",
    title: "기업 홍보 영상",
    category: "영상/사진",
    likes: 1567,
    views: 8900,
    growth: "+98%",
    timeAgo: "6시간 전",
  },
  {
    id: 4,
    username: "최마케터",
    initials: "최",
    image: "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=600&h=600&fit=crop",
    title: "SNS 마케팅 전략",
    category: "마케팅",
    likes: 1423,
    views: 7800,
    growth: "+85%",
    timeAgo: "8시간 전",
  },
  {
    id: 5,
    username: "정브랜딩",
    initials: "정",
    image: "https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?w=600&h=600&fit=crop",
    title: "브랜드 아이덴티티",
    category: "디자인",
    likes: 1289,
    views: 6500,
    growth: "+72%",
    timeAgo: "10시간 전",
  },
  {
    id: 6,
    username: "강UI디자이너",
    initials: "강",
    image: "https://images.unsplash.com/photo-1558655146-9f40138edfeb?w=600&h=600&fit=crop",
    title: "모바일 앱 UI",
    category: "디자인",
    likes: 1156,
    views: 5900,
    growth: "+65%",
    timeAgo: "12시간 전",
  },
]

const trendingCreators = [
  {
    id: 1,
    username: "김디자이너",
    initials: "김",
    title: "UI/UX 디자이너",
    followers: 12400,
    growthRate: "+340",
    verified: true,
  },
  {
    id: 2,
    username: "박개발자",
    initials: "박",
    title: "풀스택 개발자",
    followers: 9800,
    growthRate: "+285",
    verified: true,
  },
  {
    id: 3,
    username: "이영상PD",
    initials: "이",
    title: "영상 크리에이터",
    followers: 7650,
    growthRate: "+220",
    verified: false,
  },
  {
    id: 4,
    username: "최마케터",
    initials: "최",
    title: "디지털 마케터",
    followers: 6420,
    growthRate: "+198",
    verified: true,
  },
  {
    id: 5,
    username: "정브랜딩",
    initials: "정",
    title: "브랜드 디자이너",
    followers: 5890,
    growthRate: "+175",
    verified: false,
  },
]

const trendingCategories = [
  { name: "AI 이미지 생성", posts: 1234, growth: "+156%" },
  { name: "로고 디자인", posts: 2345, growth: "+142%" },
  { name: "웹 개발", posts: 1892, growth: "+128%" },
  { name: "영상 편집", posts: 1567, growth: "+115%" },
  { name: "SNS 마케팅", posts: 1423, growth: "+98%" },
  { name: "모바일 앱 UI", posts: 1289, growth: "+87%" },
]

export default function TrendingPage() {
  return (
    <div className="w-full mx-auto px-4 py-8 max-w-6xl">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <TrendingUp className="h-8 w-8 text-primary" />
          <h1 className="text-3xl font-bold">트렌딩</h1>
        </div>
        <p className="text-muted-foreground">
          지금 가장 인기있는 작업물과 크리에이터를 만나보세요
        </p>
      </div>

      {/* Tabs */}
      <Tabs defaultValue="posts" className="w-full">
        <TabsList className="w-full grid grid-cols-3 mb-8">
          <TabsTrigger value="posts">작업물</TabsTrigger>
          <TabsTrigger value="creators">크리에이터</TabsTrigger>
          <TabsTrigger value="categories">카테고리</TabsTrigger>
        </TabsList>

        {/* Trending Posts */}
        <TabsContent value="posts">
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            {trendingPosts.map((post, index) => (
              <Link key={post.id} href={`/post/${post.id}`}>
                <Card className="overflow-hidden hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group relative">
                  {/* Ranking Badge */}
                  <div className="absolute top-4 left-4 z-10">
                    <Badge className="bg-primary text-white font-bold text-lg px-3 py-1">
                      #{index + 1}
                    </Badge>
                  </div>

                  {/* Growth Badge */}
                  <div className="absolute top-4 right-4 z-10">
                    <Badge variant="secondary" className="bg-green-500 text-white border-0">
                      <TrendingUp className="h-3 w-3 mr-1" />
                      {post.growth}
                    </Badge>
                  </div>

                  <div className="relative aspect-square bg-muted">
                    <img
                      src={post.image}
                      alt={post.title}
                      className="w-full h-full object-cover group-hover:scale-105 transition"
                    />
                    <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition" />
                  </div>

                  <div className="p-4">
                    <div className="flex items-center gap-2 mb-3">
                      <Avatar className="w-8 h-8">
                        <AvatarFallback className="bg-primary/10 text-primary font-semibold text-xs">
                          {post.initials}
                        </AvatarFallback>
                      </Avatar>
                      <div className="flex-1 min-w-0">
                        <p className="font-semibold text-sm truncate">
                          {post.username}
                        </p>
                        <p className="text-xs text-muted-foreground">
                          {post.timeAgo}
                        </p>
                      </div>
                    </div>

                    <h3 className="font-bold mb-2 group-hover:text-primary transition">
                      {post.title}
                    </h3>

                    <Badge variant="outline" className="mb-3">
                      {post.category}
                    </Badge>

                    <div className="flex items-center gap-4 text-sm text-muted-foreground">
                      <div className="flex items-center gap-1">
                        <Heart className="h-4 w-4" />
                        {post.likes.toLocaleString()}
                      </div>
                      <div className="flex items-center gap-1">
                        <Eye className="h-4 w-4" />
                        {post.views.toLocaleString()}
                      </div>
                    </div>
                  </div>
                </Card>
              </Link>
            ))}
          </div>
        </TabsContent>

        {/* Trending Creators */}
        <TabsContent value="creators">
          <div className="space-y-4">
            {trendingCreators.map((creator, index) => (
              <Link key={creator.id} href={`/profile/${creator.username}`}>
                <Card className="p-6 hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
                  <div className="flex items-center gap-4">
                    {/* Ranking */}
                    <div className="flex items-center justify-center w-12 h-12 rounded-full bg-primary/10 text-primary font-bold text-xl">
                      {index + 1}
                    </div>

                    {/* Avatar */}
                    <Avatar className="w-16 h-16">
                      <AvatarFallback className="bg-primary/10 text-primary font-bold text-lg">
                        {creator.initials}
                      </AvatarFallback>
                    </Avatar>

                    {/* Info */}
                    <div className="flex-1">
                      <div className="flex items-center gap-2 mb-1">
                        <h3 className="font-bold text-lg group-hover:text-primary transition">
                          {creator.username}
                        </h3>
                        {creator.verified && (
                          <Badge className="bg-primary text-white text-xs">인증</Badge>
                        )}
                      </div>
                      <p className="text-sm text-muted-foreground mb-2">
                        {creator.title}
                      </p>
                      <div className="flex items-center gap-4 text-sm">
                        <span>
                          팔로워{" "}
                          <span className="font-semibold">
                            {creator.followers.toLocaleString()}
                          </span>
                        </span>
                        <Badge variant="secondary" className="bg-green-500 text-white border-0">
                          <TrendingUp className="h-3 w-3 mr-1" />
                          {creator.growthRate}
                        </Badge>
                      </div>
                    </div>

                    {/* Time Badge */}
                    <div className="flex items-center gap-2 text-sm text-muted-foreground">
                      <Clock className="h-4 w-4" />
                      <span>이번 주</span>
                    </div>
                  </div>
                </Card>
              </Link>
            ))}
          </div>
        </TabsContent>

        {/* Trending Categories */}
        <TabsContent value="categories">
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
            {trendingCategories.map((category, index) => (
              <Link key={category.name} href={`/search?q=${category.name}`}>
                <Card className="p-6 hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
                  <div className="flex items-start justify-between mb-4">
                    <div className="flex items-center gap-3">
                      <div className="flex items-center justify-center w-10 h-10 rounded-full bg-primary/10 text-primary font-bold">
                        {index + 1}
                      </div>
                      <h3 className="font-bold text-lg group-hover:text-primary transition">
                        {category.name}
                      </h3>
                    </div>
                  </div>

                  <div className="flex items-center justify-between">
                    <div className="text-sm text-muted-foreground">
                      {category.posts.toLocaleString()}개 작업물
                    </div>
                    <Badge variant="secondary" className="bg-green-500 text-white border-0">
                      {category.growth}
                    </Badge>
                  </div>
                </Card>
              </Link>
            ))}
          </div>
        </TabsContent>
      </Tabs>

      {/* Info Section */}
      <Card className="mt-12 p-6 bg-muted/30">
        <div className="flex items-start gap-4">
          <div className="p-3 rounded-full bg-primary/10">
            <TrendingUp className="h-6 w-6 text-primary" />
          </div>
          <div>
            <h3 className="font-bold mb-2">트렌딩 순위는 어떻게 결정되나요?</h3>
            <p className="text-sm text-muted-foreground leading-relaxed">
              실시간 조회수, 좋아요, 댓글, 공유 등 다양한 지표를 종합하여 산정됩니다.
              최근 24시간 동안의 활동을 기준으로 매시간 업데이트됩니다.
            </p>
          </div>
        </div>
      </Card>
    </div>
  )
}
