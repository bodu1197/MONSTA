import { Search } from "lucide-react"
import { Input } from "@/components/ui/input"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import Link from "next/link"
import { createClient } from "@/lib/supabase/server"

export default async function SearchPage() {
  const supabase = await createClient()

  // Fetch data in parallel for better performance
  const [
    { data: popularCreators },
    { data: posts }
  ] = await Promise.all([
    // Get popular creators (users with most followers)
    supabase
      .from("users")
      .select(`
        id,
        username,
        email,
        full_name,
        is_verified,
        created_at,
        follower_count:follows!follows_following_id_fkey(count)
      `)
      .order("created_at", { ascending: false })
      .limit(5),

    // Get trending tags from recent posts
    supabase
      .from("posts")
      .select("tags")
      .not("tags", "is", null)
      .order("created_at", { ascending: false })
      .limit(50)
  ])

  // Extract and count unique tags
  const tagCounts: { [key: string]: number } = {}
  posts?.forEach((post) => {
    post.tags?.forEach((tag: string) => {
      tagCounts[tag] = (tagCounts[tag] || 0) + 1
    })
  })

  const trendingTags = Object.entries(tagCounts)
    .sort(([, a], [, b]) => b - a)
    .slice(0, 6)
    .map(([tag]) => `#${tag}`)

  const creatorsWithDetails = popularCreators?.map((creator: any) => ({
    id: creator.id,
    name: creator.username || creator.email,
    initials: (creator.username || creator.email)?.charAt(0)?.toUpperCase() || "U",
    specialty: creator.full_name || "크리에이터",
  })) || []

  return (
    <div className="w-full mx-auto px-4 py-8 max-w-4xl">
      {/* Search Bar */}
      <div className="mb-8">
        <div className="relative">
          <Search style={{ width: '20px', height: '20px' }} className="absolute left-4 top-1/2 -translate-y-1/2 text-muted-foreground" />
          <Input
            type="search"
            placeholder="서비스, 크리에이터, 태그 검색..."
            className="pl-12 h-14 text-base border-2 rounded-full focus:border-primary"
          />
        </div>
      </div>

      {/* Popular Creators */}
      <section className="mb-8">
        <h2 className="text-lg font-bold mb-4">인기 크리에이터</h2>
        {creatorsWithDetails.length > 0 ? (
          <div className="space-y-3">
            {creatorsWithDetails.map((creator) => (
              <Link key={creator.id} href={`/profile/${creator.name}`}>
                <Card className="p-4 hover:shadow-md transition cursor-pointer border-2 hover:border-primary">
                  <div className="flex items-center gap-3">
                    <Avatar className="w-12 h-12">
                      <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                        {creator.initials}
                      </AvatarFallback>
                    </Avatar>
                    <div>
                      <h3 className="font-semibold">{creator.name}</h3>
                      <p className="text-sm text-muted-foreground">{creator.specialty}</p>
                    </div>
                  </div>
                </Card>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-8 text-muted-foreground">
            크리에이터가 없습니다.
          </div>
        )}
      </section>

      {/* Trending Tags */}
      {trendingTags.length > 0 && (
        <section>
          <h2 className="text-lg font-bold mb-4">트렌딩 태그</h2>
          <div className="flex flex-wrap gap-2">
            {trendingTags.map((tag) => (
              <Link key={tag} href={`/search?q=${tag}`}>
                <div className="px-4 py-2 bg-primary/10 text-primary rounded-full hover:bg-primary hover:text-white cursor-pointer transition font-medium">
                  {tag}
                </div>
              </Link>
            ))}
          </div>
        </section>
      )}
    </div>
  )
}
