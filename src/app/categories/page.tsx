import { Search, TrendingUp } from "lucide-react"
import Link from "next/link"
import { Input } from "@/components/ui/input"
import { Card } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"

// 598개 카테고리 중 주요 22개 대분류
const mainCategories = [
  { id: "life-service", name: "생활 서비스", slug: "life-service", count: 35 },
  { id: "errands", name: "심부름", slug: "errands", count: 12 },
  { id: "ai-service", name: "AI 서비스", slug: "ai-service", count: 28 },
  { id: "design", name: "디자인", slug: "design", count: 45 },
  { id: "it-programming", name: "IT/프로그래밍", slug: "it-programming", count: 52 },
  { id: "marketing", name: "마케팅", slug: "marketing", count: 38 },
  { id: "video-photo", name: "영상/사진", slug: "video-photo", count: 31 },
  { id: "translation", name: "번역/통역", slug: "translation", count: 24 },
  { id: "writing", name: "문서/글쓰기", slug: "writing", count: 29 },
  { id: "music-audio", name: "음악/오디오", slug: "music-audio", count: 19 },
  { id: "business", name: "비즈니스", slug: "business", count: 33 },
  { id: "lifestyle", name: "라이프스타일", slug: "lifestyle", count: 27 },
  { id: "events", name: "이벤트", slug: "events", count: 22 },
  { id: "hobby-handmade", name: "취미/핸드메이드", slug: "hobby-handmade", count: 18 },
  { id: "beauty-fashion", name: "뷰티/패션", slug: "beauty-fashion", count: 25 },
  { id: "counseling-coaching", name: "상담/코칭", slug: "counseling-coaching", count: 21 },
  { id: "fortune-tarot", name: "운세/타로", slug: "fortune-tarot", count: 14 },
  { id: "ebook-template", name: "전자책/템플릿", slug: "ebook-template", count: 16 },
  { id: "tax-legal-labor", name: "세무/법무/노무", slug: "tax-legal-labor", count: 23 },
  { id: "custom-made", name: "주문제작", slug: "custom-made", count: 26 },
  { id: "career-admission", name: "취업/입시", slug: "career-admission", count: 20 },
  { id: "job-skills", name: "직무역량", slug: "job-skills", count: 30 },
]

const trendingCategories = [
  { name: "AI 이미지 생성", count: 156, growth: "+45%" },
  { name: "로고 디자인", count: 234, growth: "+32%" },
  { name: "웹 개발", count: 189, growth: "+28%" },
  { name: "영상 편집", count: 167, growth: "+25%" },
]

export default function CategoriesPage() {
  return (
    <div className="w-full max-w-6xl mx-auto px-4 py-6 sm:py-8">
      {/* Search Section */}
      <div className="mb-8 sm:mb-12">
        <div className="relative max-w-2xl mx-auto">
          <Search style={{ width: '20px', height: '20px' }} className="absolute left-4 top-1/2 -translate-y-1/2 text-muted-foreground" />
          <Input
            type="search"
            placeholder="카테고리, 서비스를 검색하세요..."
            className="pl-12 h-12 text-base rounded-full border-2 focus:border-primary"
          />
        </div>
      </div>

      {/* Trending Section */}
      <section className="mb-8 sm:mb-12">
        <div className="flex items-center gap-2 sm:gap-3 mb-4 sm:mb-6">
          <TrendingUp style={{ width: '24px', height: '24px' }} className="text-primary sm:w-7 sm:h-7" />
          <h2 className="text-xl sm:text-2xl font-bold">트렌딩</h2>
        </div>
        <div className="flex gap-3 sm:gap-4 overflow-x-auto pb-4 scrollbar-hide">
          {trendingCategories.map((category) => (
            <Link key={category.name} href={`/search?q=${category.name}`}>
              <Card className="p-4 sm:p-6 min-w-[240px] sm:min-w-[280px] hover:shadow-lg transition cursor-pointer border-2 hover:border-primary">
                <div className="flex items-start justify-between mb-2">
                  <h3 className="font-bold text-lg">{category.name}</h3>
                  <Badge variant="secondary" className="bg-primary/10 text-primary border-0">
                    {category.growth}
                  </Badge>
                </div>
                <p className="text-sm text-muted-foreground">
                  {category.count.toLocaleString()}개 서비스
                </p>
              </Card>
            </Link>
          ))}
        </div>
      </section>

      {/* All Categories Grid */}
      <section>
        <div className="mb-4 sm:mb-6">
          <h2 className="text-xl sm:text-2xl font-bold mb-2">모든 카테고리</h2>
          <p className="text-sm sm:text-base text-muted-foreground">
            598개의 세부 카테고리에서 원하는 서비스를 찾아보세요
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {mainCategories.map((category) => (
            <Link key={category.id} href={`/categories/${category.slug}`}>
              <Card className="p-6 hover:shadow-lg transition cursor-pointer border-2 hover:border-primary group">
                <div className="flex items-start justify-between">
                  <div className="flex-1">
                    <h3 className="font-bold text-lg mb-2 group-hover:text-primary transition">
                      {category.name}
                    </h3>
                    <p className="text-sm text-muted-foreground">
                      {category.count}개 하위 카테고리
                    </p>
                  </div>
                  <div className="w-12 h-12 rounded-full bg-primary/10 flex items-center justify-center text-primary font-bold">
                    {category.count}
                  </div>
                </div>
              </Card>
            </Link>
          ))}
        </div>
      </section>

      {/* Stats */}
      <section className="mt-12 sm:mt-16 text-center">
        <div className="grid grid-cols-3 gap-4 sm:gap-8 max-w-3xl mx-auto">
          <div>
            <div className="text-2xl sm:text-4xl font-bold text-primary mb-1 sm:mb-2">598</div>
            <div className="text-xs sm:text-sm text-muted-foreground">전체 카테고리</div>
          </div>
          <div>
            <div className="text-2xl sm:text-4xl font-bold text-primary mb-1 sm:mb-2">22</div>
            <div className="text-xs sm:text-sm text-muted-foreground">대분류</div>
          </div>
          <div>
            <div className="text-2xl sm:text-4xl font-bold text-primary mb-1 sm:mb-2">10K+</div>
            <div className="text-xs sm:text-sm text-muted-foreground">크리에이터</div>
          </div>
        </div>
      </section>
    </div>
  )
}
