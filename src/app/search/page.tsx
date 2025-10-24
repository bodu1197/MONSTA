import { Search } from "lucide-react"
import { Input } from "@/components/ui/input"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import Link from "next/link"

const recentSearches = ["로고 디자인", "웹 개발", "영상 편집"]

const popularCreators = [
  { id: 1, name: "김디자이너", initials: "김", specialty: "UI/UX 디자인" },
  { id: 2, name: "박개발자", initials: "박", specialty: "풀스택 개발" },
  { id: 3, name: "이영상PD", initials: "이", specialty: "영상 편집" },
]

const trendingTags = ["#AI", "#로고디자인", "#웹개발", "#영상편집", "#마케팅", "#번역"]

export default function SearchPage() {
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

      {/* Recent Searches */}
      <section className="mb-8">
        <h2 className="text-lg font-bold mb-4">최근 검색</h2>
        <div className="flex flex-wrap gap-2">
          {recentSearches.map((search) => (
            <Link key={search} href={`/search?q=${search}`}>
              <div className="px-4 py-2 bg-muted rounded-full hover:bg-primary/10 cursor-pointer transition">
                {search}
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* Popular Creators */}
      <section className="mb-8">
        <h2 className="text-lg font-bold mb-4">인기 크리에이터</h2>
        <div className="space-y-3">
          {popularCreators.map((creator) => (
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
      </section>

      {/* Trending Tags */}
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
    </div>
  )
}
