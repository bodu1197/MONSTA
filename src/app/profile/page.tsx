import { Settings, MapPin, Clock, MessageCircle, Star, Briefcase } from "lucide-react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"

// 임시 데이터
const userProfile = {
  username: "김디자이너",
  initials: "김",
  title: "UI/UX 디자이너 | 브랜딩 전문가",
  bio: "10년 경력의 UI/UX 디자이너입니다. 깔끔하고 직관적인 디자인을 추구하며, 사용자 경험을 최우선으로 생각합니다.",
  location: "서울, 대한민국",
  responseTime: "1시간 이내",
  languages: ["한국어", "English"],
  skills: ["UI 디자인", "UX 디자인", "Figma", "Sketch", "브랜딩", "로고 디자인"],
  followers: 1234,
  following: 89,
  posts: 45,
  rating: 4.9,
  reviews: 127,
  verified: true,
  joined: "2023년 1월",
}

const portfolioPosts = [
  {
    id: 1,
    image: "https://images.unsplash.com/photo-1626785774573-4b799315345d?w=400&h=400&fit=crop",
    title: "미니멀 로고 디자인",
    likes: 234,
    views: 1200,
  },
  {
    id: 2,
    image: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=400&h=400&fit=crop",
    title: "기업 웹사이트 UI",
    likes: 189,
    views: 980,
  },
  {
    id: 3,
    image: "https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?w=400&h=400&fit=crop",
    title: "모바일 앱 디자인",
    likes: 156,
    views: 890,
  },
  {
    id: 4,
    image: "https://images.unsplash.com/photo-1558655146-9f40138edfeb?w=400&h=400&fit=crop",
    title: "브랜드 아이덴티티",
    likes: 178,
    views: 950,
  },
  {
    id: 5,
    image: "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=400&h=400&fit=crop",
    title: "대시보드 UI/UX",
    likes: 201,
    views: 1100,
  },
  {
    id: 6,
    image: "https://images.unsplash.com/photo-1542744173-05336fcc7ad4?w=400&h=400&fit=crop",
    title: "로고 리디자인",
    likes: 145,
    views: 820,
  },
]

const reviews = [
  {
    id: 1,
    author: "박클라이언트",
    initials: "박",
    rating: 5,
    date: "2024-01-15",
    content: "정말 만족스러운 작업이었습니다. 요구사항을 완벽히 이해하고 기대 이상의 결과물을 주셨어요.",
    service: "로고 디자인",
  },
  {
    id: 2,
    author: "이사장님",
    initials: "이",
    rating: 5,
    date: "2024-01-10",
    content: "소통이 원활하고 빠른 피드백이 인상적이었습니다. 다음에도 꼭 다시 의뢰하고 싶어요.",
    service: "브랜딩 패키지",
  },
]

export default function ProfilePage() {
  return (
    <div className="container mx-auto px-4 py-8 max-w-5xl">
      {/* Profile Header */}
      <Card className="p-8 mb-6">
        <div className="flex flex-col md:flex-row gap-6">
          {/* Avatar */}
          <div className="flex flex-col items-center md:items-start">
            <Avatar className="w-32 h-32 mb-4">
              <AvatarFallback className="bg-primary/10 text-primary font-bold text-4xl">
                {userProfile.initials}
              </AvatarFallback>
            </Avatar>

            {/* Stats - Mobile */}
            <div className="flex gap-6 md:hidden mb-4">
              <div className="text-center">
                <div className="font-bold text-xl">{userProfile.posts}</div>
                <div className="text-xs text-muted-foreground">포스트</div>
              </div>
              <div className="text-center">
                <div className="font-bold text-xl">{userProfile.followers.toLocaleString()}</div>
                <div className="text-xs text-muted-foreground">팔로워</div>
              </div>
              <div className="text-center">
                <div className="font-bold text-xl">{userProfile.following}</div>
                <div className="text-xs text-muted-foreground">팔로잉</div>
              </div>
            </div>
          </div>

          {/* Profile Info */}
          <div className="flex-1">
            <div className="flex items-start justify-between mb-4">
              <div>
                <div className="flex items-center gap-2 mb-1">
                  <h1 className="text-2xl font-bold">{userProfile.username}</h1>
                  {userProfile.verified && (
                    <Badge className="bg-primary text-white">인증</Badge>
                  )}
                </div>
                <p className="text-muted-foreground">{userProfile.title}</p>
              </div>
              <Link href="/profile/edit">
                <Button variant="outline" size="icon">
                  <Settings className="h-4 w-4" />
                </Button>
              </Link>
            </div>

            {/* Stats - Desktop */}
            <div className="hidden md:flex gap-6 mb-4">
              <div>
                <span className="font-bold">{userProfile.posts}</span>{" "}
                <span className="text-muted-foreground">포스트</span>
              </div>
              <div>
                <span className="font-bold">{userProfile.followers.toLocaleString()}</span>{" "}
                <span className="text-muted-foreground">팔로워</span>
              </div>
              <div>
                <span className="font-bold">{userProfile.following}</span>{" "}
                <span className="text-muted-foreground">팔로잉</span>
              </div>
              <div className="flex items-center gap-1">
                <Star className="h-4 w-4 fill-yellow-400 text-yellow-400" />
                <span className="font-bold">{userProfile.rating}</span>{" "}
                <span className="text-muted-foreground">
                  ({userProfile.reviews})
                </span>
              </div>
            </div>

            {/* Bio */}
            <p className="mb-4">{userProfile.bio}</p>

            {/* Meta Info */}
            <div className="space-y-2 mb-4 text-sm text-muted-foreground">
              <div className="flex items-center gap-2">
                <MapPin className="h-4 w-4" />
                {userProfile.location}
              </div>
              <div className="flex items-center gap-2">
                <Clock className="h-4 w-4" />
                평균 응답 시간: {userProfile.responseTime}
              </div>
              <div className="flex items-center gap-2">
                <Briefcase className="h-4 w-4" />
                가입일: {userProfile.joined}
              </div>
            </div>

            {/* Skills */}
            <div className="flex flex-wrap gap-2 mb-4">
              {userProfile.skills.map((skill) => (
                <Badge key={skill} variant="outline">
                  {skill}
                </Badge>
              ))}
            </div>

            {/* Actions */}
            <div className="flex gap-2">
              <Button className="flex-1">팔로우</Button>
              <Button variant="outline" className="flex-1">
                <MessageCircle className="h-4 w-4 mr-2" />
                메시지
              </Button>
            </div>
          </div>
        </div>
      </Card>

      {/* Content Tabs */}
      <Tabs defaultValue="portfolio" className="w-full">
        <TabsList className="w-full grid grid-cols-3">
          <TabsTrigger value="portfolio">포트폴리오</TabsTrigger>
          <TabsTrigger value="services">서비스</TabsTrigger>
          <TabsTrigger value="reviews">리뷰</TabsTrigger>
        </TabsList>

        {/* Portfolio Tab */}
        <TabsContent value="portfolio" className="mt-6">
          <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
            {portfolioPosts.map((post) => (
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
                  <div className="p-3">
                    <h3 className="font-semibold text-sm mb-1 group-hover:text-primary transition">
                      {post.title}
                    </h3>
                    <div className="flex items-center gap-3 text-xs text-muted-foreground">
                      <span>좋아요 {post.likes}</span>
                      <span>조회 {post.views.toLocaleString()}</span>
                    </div>
                  </div>
                </Card>
              </Link>
            ))}
          </div>
        </TabsContent>

        {/* Services Tab */}
        <TabsContent value="services" className="mt-6">
          <div className="text-center py-12 text-muted-foreground">
            제공 중인 서비스 목록이 여기에 표시됩니다.
          </div>
        </TabsContent>

        {/* Reviews Tab */}
        <TabsContent value="reviews" className="mt-6">
          <div className="space-y-4">
            {reviews.map((review) => (
              <Card key={review.id} className="p-6">
                <div className="flex items-start gap-4">
                  <Avatar className="w-12 h-12">
                    <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                      {review.initials}
                    </AvatarFallback>
                  </Avatar>
                  <div className="flex-1">
                    <div className="flex items-center justify-between mb-2">
                      <div>
                        <div className="font-semibold">{review.author}</div>
                        <div className="text-sm text-muted-foreground">
                          {review.service}
                        </div>
                      </div>
                      <div className="text-sm text-muted-foreground">
                        {review.date}
                      </div>
                    </div>
                    <div className="flex items-center gap-1 mb-2">
                      {Array.from({ length: 5 }).map((_, i) => (
                        <Star
                          key={i}
                          className={`h-4 w-4 ${
                            i < review.rating
                              ? "fill-yellow-400 text-yellow-400"
                              : "text-muted-foreground"
                          }`}
                        />
                      ))}
                    </div>
                    <p className="text-sm">{review.content}</p>
                  </div>
                </div>
              </Card>
            ))}
          </div>
        </TabsContent>
      </Tabs>
    </div>
  )
}
