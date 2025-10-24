import { Search, TrendingUp, Filter, Star } from "lucide-react"
import Link from "next/link"
import { Input } from "@/components/ui/input"
import { Card } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { createClient } from "@/lib/supabase/server"
import type { Post } from "@/types/database"

export default async function ExplorePage() {
  const supabase = await createClient()

  // Get featured creators (users with most followers or highest rating)
  const { data: users } = await supabase
    .from("users")
    .select(`
      id,
      username,
      email,
      full_name,
      is_verified,
      created_at
    `)
    .order("created_at", { ascending: false })
    .limit(6)

  // Get follower counts for each user
  const featuredCreators = await Promise.all(
    (users || []).map(async (user: any) => {
      const { count: followerCount } = await supabase
        .from("follows")
        .select("*", { count: "exact", head: true })
        .eq("following_id", user.id)

      // Get average rating from reviews
      const { data: reviews } = await supabase
        .from("reviews")
        .select("rating")
        .eq("reviewee_id", user.id)
        .eq("is_public", true)

      const averageRating = reviews && reviews.length > 0
        ? reviews.reduce((sum, r) => sum + r.rating, 0) / reviews.length
        : 0

      return {
        id: user.id,
        username: user.username || user.email,
        initials: (user.username || user.email)?.charAt(0)?.toUpperCase() || "U",
        title: user.full_name || "크리에이터",
        followers: followerCount || 0,
        rating: averageRating,
        verified: user.is_verified,
      }
    })
  )

  // Get trending posts (most viewed/liked posts)
  const { data: trendingPosts } = await supabase
    .from("posts")
    .select(`
      *,
      user:user_id(username, email)
    `)
    .eq("is_portfolio", true)
    .order("view_count", { ascending: false })
    .limit(6)

  const postsWithDetails = trendingPosts?.map((post: any) => ({
    id: post.id,
    image: post.media_urls?.[0] || "",
    title: post.title || "제목 없음",
    creator: post.user?.username || post.user?.email || "알 수 없음",
    likes: post.like_count,
    views: post.view_count,
  })) || []

  // Get popular search tags
  const { data: posts } = await supabase
    .from("posts")
    .select("tags")
    .not("tags", "is", null)
    .order("created_at", { ascending: false })
    .limit(50)

  // Extract unique tags
  const tagSet = new Set<string>()
  posts?.forEach((post) => {
    post.tags?.forEach((tag: string) => tagSet.add(tag))
  })
  const popularSearches = Array.from(tagSet).slice(0, 4)

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
        {popularSearches.length > 0 && (
          <div className="flex flex-wrap gap-2 justify-center">
            {popularSearches.map((tag) => (
              <Link key={tag} href={`/search?q=${tag}`}>
                <Badge variant="outline" className="px-4 py-2 cursor-pointer hover:bg-primary hover:text-white transition">
                  {tag}
                </Badge>
              </Link>
            ))}
          </div>
        )}
      </div>

      {/* Featured Creators */}
      <section className="mb-12">
        <div className="flex items-center justify-between mb-6">
          <div>
            <h2 className="text-2xl font-bold mb-1">주목받는 크리에이터</h2>
            <p className="text-sm text-muted-foreground">인기 상승 중인 전문가</p>
          </div>
        </div>

        {featuredCreators.length > 0 ? (
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
                          {creator.followers}
                        </span>
                        {" "}팔로워
                      </div>
                      {creator.rating > 0 && (
                        <div className="flex items-center gap-1">
                          <Star className="h-4 w-4 fill-yellow-400 text-yellow-400" />
                          <span className="font-semibold text-foreground">
                            {creator.rating.toFixed(1)}
                          </span>
                        </div>
                      )}
                    </div>
                    <Button className="w-full" size="sm">
                      팔로우
                    </Button>
                  </div>
                </Card>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-12 text-muted-foreground">
            크리에이터가 없습니다.
          </div>
        )}
      </section>

      {/* Trending Works */}
      <section>
        <div className="flex items-center gap-2 mb-6">
          <TrendingUp className="h-6 w-6 text-primary" />
          <h2 className="text-2xl font-bold">트렌딩 작업물</h2>
        </div>

        {postsWithDetails.length > 0 ? (
          <>
            <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
              {postsWithDetails.map((post) => (
                <Link key={post.id} href={`/post/${post.id}`}>
                  <Card className="overflow-hidden hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
                    <div className="relative aspect-square bg-muted">
                      {post.image && (
                        <img
                          src={post.image}
                          alt={post.title}
                          className="w-full h-full object-cover group-hover:scale-105 transition"
                        />
                      )}
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
          </>
        ) : (
          <div className="text-center py-12 text-muted-foreground">
            트렌딩 작업물이 없습니다.
          </div>
        )}
      </section>
    </div>
  )
}
