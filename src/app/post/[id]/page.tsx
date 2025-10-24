import { Heart, MessageCircle, Send, Bookmark, Share2, ArrowLeft, Star } from "lucide-react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { Badge } from "@/components/ui/badge"
import { Input } from "@/components/ui/input"

// 임시 데이터
const post = {
  id: 1,
  username: "김디자이너",
  initials: "김",
  userTitle: "UI/UX 디자이너",
  verified: true,
  image: "https://images.unsplash.com/photo-1626785774573-4b799315345d?w=1200&h=1200&fit=crop",
  title: "미니멀 로고 디자인 프로젝트",
  description:
    "클라이언트의 요구사항을 반영하여 깔끔하고 모던한 로고를 디자인했습니다. 심플하면서도 강렬한 인상을 주는 디자인을 목표로 했으며, 다양한 플랫폼에서 활용 가능하도록 제작했습니다.",
  tags: ["로고디자인", "브랜딩", "미니멀"],
  likes: 1234,
  saves: 456,
  views: 5678,
  timeAgo: "2시간 전",
  deliveryTime: "3일",
  price: "150,000원부터",
  tools: ["Figma", "Adobe Illustrator"],
}

const comments = [
  {
    id: 1,
    author: "박클라이언트",
    initials: "박",
    content: "정말 깔끔하네요! 저희 회사 로고도 부탁드릴 수 있을까요?",
    timeAgo: "1시간 전",
    likes: 5,
  },
  {
    id: 2,
    author: "이디자이너",
    initials: "이",
    content: "색상 조합이 정말 마음에 들어요. 어떤 컨셉으로 작업하신 건가요?",
    timeAgo: "45분 전",
    likes: 3,
  },
]

const relatedPosts = [
  {
    id: 2,
    image: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=400&h=400&fit=crop",
    title: "기업 웹사이트 UI",
    likes: 189,
  },
  {
    id: 3,
    image: "https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?w=400&h=400&fit=crop",
    title: "모바일 앱 디자인",
    likes: 156,
  },
  {
    id: 4,
    image: "https://images.unsplash.com/photo-1558655146-9f40138edfeb?w=400&h=400&fit=crop",
    title: "브랜드 아이덴티티",
    likes: 178,
  },
]

export default async function PostDetailPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params

  return (
    <div className="w-full max-w-6xl mx-auto px-2 sm:px-4 py-4 sm:py-8">
      {/* Back Button */}
      <Link href="/">
        <Button variant="ghost" className="mb-4 sm:mb-6">
          <ArrowLeft className="h-4 w-4 mr-2" />
          돌아가기
        </Button>
      </Link>

      <div className="grid lg:grid-cols-3 gap-4 sm:gap-8">
        {/* Main Content */}
        <div className="lg:col-span-2 space-y-4 sm:space-y-6 pb-32 lg:pb-0">
          {/* Post Image */}
          <Card className="overflow-hidden">
            <div className="relative aspect-square bg-muted">
              <img
                src={post.image}
                alt={post.title}
                className="w-full h-full object-cover"
              />
            </div>
          </Card>

          {/* Actions Bar */}
          <Card className="p-4">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-4">
                <button className="flex items-center gap-2 hover:text-primary transition">
                  <Heart className="w-6 h-6" />
                  <span className="font-semibold">{post.likes.toLocaleString()}</span>
                </button>
                <button className="flex items-center gap-2 hover:text-primary transition">
                  <MessageCircle className="w-6 h-6" />
                  <span className="font-semibold">{comments.length}</span>
                </button>
                <button className="flex items-center gap-2 hover:text-primary transition">
                  <Share2 className="w-6 h-6" />
                </button>
              </div>
              <button className="flex items-center gap-2 hover:text-primary transition">
                <Bookmark className="w-6 h-6" />
                <span className="font-semibold">{post.saves}</span>
              </button>
            </div>
          </Card>

          {/* Post Details */}
          <Card className="p-6">
            <h1 className="text-3xl font-bold mb-4">{post.title}</h1>

            <div className="flex items-center gap-3 mb-6 pb-6 border-b">
              <Link href={`/profile/${post.username}`}>
                <Avatar className="w-12 h-12 cursor-pointer">
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                    {post.initials}
                  </AvatarFallback>
                </Avatar>
              </Link>
              <div className="flex-1">
                <div className="flex items-center gap-2">
                  <Link
                    href={`/profile/${post.username}`}
                    className="font-semibold hover:text-primary transition"
                  >
                    {post.username}
                  </Link>
                  {post.verified && (
                    <Badge className="bg-primary text-white text-xs">인증</Badge>
                  )}
                </div>
                <p className="text-sm text-muted-foreground">{post.userTitle}</p>
              </div>
              <Button>팔로우</Button>
            </div>

            <div className="space-y-4 mb-6">
              <div>
                <h3 className="font-semibold mb-2">프로젝트 설명</h3>
                <p className="text-muted-foreground leading-relaxed">
                  {post.description}
                </p>
              </div>

              <div>
                <h3 className="font-semibold mb-2">작업 도구</h3>
                <div className="flex flex-wrap gap-2">
                  {post.tools.map((tool) => (
                    <Badge key={tool} variant="outline">
                      {tool}
                    </Badge>
                  ))}
                </div>
              </div>

              <div>
                <h3 className="font-semibold mb-2">태그</h3>
                <div className="flex flex-wrap gap-2">
                  {post.tags.map((tag) => (
                    <Link key={tag} href={`/tags/${tag}`}>
                      <Badge variant="outline" className="cursor-pointer hover:bg-primary hover:text-white transition">
                        #{tag}
                      </Badge>
                    </Link>
                  ))}
                </div>
              </div>
            </div>

            <div className="flex items-center gap-4 text-sm text-muted-foreground pt-4 border-t">
              <span>조회수 {post.views.toLocaleString()}</span>
              <span>업로드 {post.timeAgo}</span>
            </div>
          </Card>

          {/* Comments */}
          <Card className="p-6">
            <h3 className="font-semibold text-lg mb-4">
              댓글 ({comments.length})
            </h3>

            <div className="space-y-4 mb-6">
              {comments.map((comment) => (
                <div key={comment.id} className="flex gap-3">
                  <Avatar className="w-10 h-10">
                    <AvatarFallback className="bg-primary/10 text-primary font-semibold text-sm">
                      {comment.initials}
                    </AvatarFallback>
                  </Avatar>
                  <div className="flex-1">
                    <div className="flex items-center gap-2 mb-1">
                      <span className="font-semibold text-sm">{comment.author}</span>
                      <span className="text-xs text-muted-foreground">
                        {comment.timeAgo}
                      </span>
                    </div>
                    <p className="text-sm mb-2">{comment.content}</p>
                    <div className="flex items-center gap-3 text-xs">
                      <button className="text-muted-foreground hover:text-primary transition">
                        좋아요 {comment.likes}
                      </button>
                      <button className="text-muted-foreground hover:text-primary transition">
                        답글
                      </button>
                    </div>
                  </div>
                </div>
              ))}
            </div>

            <div className="flex gap-3">
              <Avatar className="w-10 h-10">
                <AvatarFallback className="bg-primary/10 text-primary font-semibold text-sm">
                  나
                </AvatarFallback>
              </Avatar>
              <Input placeholder="댓글을 입력하세요..." className="flex-1" />
              <Button>
                <Send className="h-4 w-4" />
              </Button>
            </div>
          </Card>

          {/* Related Posts */}
          <div>
            <h3 className="font-semibold text-base sm:text-lg mb-3 sm:mb-4">
              {post.username}님의 다른 작업물
            </h3>
            <div className="grid grid-cols-2 sm:grid-cols-3 gap-3 sm:gap-4">
              {relatedPosts.map((relatedPost) => (
                <Link key={relatedPost.id} href={`/post/${relatedPost.id}`}>
                  <Card className="overflow-hidden hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
                    <div className="relative aspect-square bg-muted">
                      <img
                        src={relatedPost.image}
                        alt={relatedPost.title}
                        className="w-full h-full object-cover group-hover:scale-105 transition"
                      />
                    </div>
                    <div className="p-3">
                      <h4 className="font-semibold text-sm mb-1 group-hover:text-primary transition">
                        {relatedPost.title}
                      </h4>
                      <p className="text-xs text-muted-foreground">
                        좋아요 {relatedPost.likes}
                      </p>
                    </div>
                  </Card>
                </Link>
              ))}
            </div>
          </div>
        </div>

        {/* Sidebar - Desktop */}
        <div className="hidden lg:block lg:col-span-1">
          <Card className="p-6 sticky top-24">
            <h3 className="font-bold text-xl mb-4">작업 의뢰하기</h3>

            <div className="space-y-4 mb-6">
              <div className="flex items-center justify-between">
                <span className="text-muted-foreground">작업 기간</span>
                <span className="font-semibold">{post.deliveryTime}</span>
              </div>
              <div className="flex items-center justify-between">
                <span className="text-muted-foreground">가격</span>
                <span className="font-semibold text-primary text-lg">
                  {post.price}
                </span>
              </div>
              <div className="flex items-center gap-1">
                <Star className="h-4 w-4 fill-yellow-400 text-yellow-400" />
                <span className="font-semibold">4.9</span>
                <span className="text-sm text-muted-foreground">(127개 리뷰)</span>
              </div>
            </div>

            <div className="space-y-3">
              <Button className="w-full h-12 text-base">
                작업 요청하기
              </Button>
              <Button variant="outline" className="w-full h-12 text-base">
                <MessageCircle className="h-4 w-4 mr-2" />
                문의하기
              </Button>
            </div>

            <div className="mt-6 p-4 bg-muted/50 rounded-lg">
              <h4 className="font-semibold mb-2 text-sm">안전거래</h4>
              <p className="text-xs text-muted-foreground">
                에스크로 시스템으로 작업 완료 시까지 안전하게 대금을 보관합니다.
              </p>
            </div>
          </Card>
        </div>
      </div>

      {/* Mobile Bottom Action Bar */}
      <div className="lg:hidden fixed bottom-0 left-0 right-0 z-50 border-t bg-background p-4 space-y-2">
        <div className="flex items-center justify-between text-sm mb-2">
          <div>
            <span className="text-muted-foreground">가격: </span>
            <span className="font-bold text-primary text-lg">{post.price}</span>
          </div>
          <div className="flex items-center gap-1">
            <Star className="h-4 w-4 fill-yellow-400 text-yellow-400" />
            <span className="font-semibold">4.9</span>
            <span className="text-xs text-muted-foreground">(127)</span>
          </div>
        </div>
        <div className="flex gap-2">
          <Button variant="outline" className="flex-1">
            <MessageCircle className="h-4 w-4 mr-2" />
            문의
          </Button>
          <Button className="flex-1">
            작업 요청
          </Button>
        </div>
      </div>
    </div>
  )
}
