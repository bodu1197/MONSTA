import { Search, TrendingUp } from "lucide-react"
import Link from "next/link"
import { Input } from "@/components/ui/input"
import { Card } from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"
import { createClient } from "@/lib/supabase/server"

export default async function CategoriesPage() {
  const supabase = await createClient()

  // Get all categories in one query (both parent and children)
  const { data: allCategories } = await supabase
    .from("categories")
    .select(`
      id,
      name,
      slug,
      service_count,
      is_popular,
      parent_id,
      display_order
    `)
    .order("display_order", { ascending: true })

  // Separate parent categories and count their children
  const parentCategories = allCategories?.filter((cat: any) => cat.parent_id === null) || []
  const childCategories = allCategories?.filter((cat: any) => cat.parent_id !== null) || []

  // Count children for each parent category
  const childCountMap = childCategories.reduce((acc: any, child: any) => {
    acc[child.parent_id] = (acc[child.parent_id] || 0) + 1
    return acc
  }, {})

  const mainCategories = parentCategories.map((category: any) => ({
    id: category.id,
    name: category.name,
    slug: category.slug,
    count: childCountMap[category.id] || 0,
  }))

  // Get trending categories (popular categories with most posts)
  const trendingCategories = allCategories
    ?.filter((cat: any) => cat.is_popular && cat.parent_id === null)
    .sort((a: any, b: any) => (b.service_count || 0) - (a.service_count || 0))
    .slice(0, 4)
    .map((cat: any) => ({
      name: cat.name,
      count: cat.service_count || 0,
      growth: "+0%", // Growth calculation would need historical data
    })) || []

  // Calculate stats from existing data
  const totalCategories = allCategories?.length || 0
  const totalParentCategories = parentCategories.length

  // Get user count in separate query
  const { count: totalUsers } = await supabase
    .from("users")
    .select("*", { count: "exact", head: true })

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
      {trendingCategories.length > 0 && (
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
      )}

      {/* All Categories Grid */}
      <section>
        <div className="mb-4 sm:mb-6">
          <h2 className="text-xl sm:text-2xl font-bold mb-2">모든 카테고리</h2>
          {totalCategories && totalCategories > 0 && (
            <p className="text-sm sm:text-base text-muted-foreground">
              {totalCategories}개의 세부 카테고리에서 원하는 서비스를 찾아보세요
            </p>
          )}
        </div>

        {mainCategories.length > 0 ? (
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
        ) : (
          <div className="text-center py-12 text-muted-foreground">
            카테고리가 없습니다.
          </div>
        )}
      </section>

      {/* Stats */}
      <section className="mt-12 sm:mt-16 text-center">
        <div className="grid grid-cols-3 gap-4 sm:gap-8 max-w-3xl mx-auto">
          <div>
            <div className="text-2xl sm:text-4xl font-bold text-primary mb-1 sm:mb-2">
              {totalCategories || 0}
            </div>
            <div className="text-xs sm:text-sm text-muted-foreground">전체 카테고리</div>
          </div>
          <div>
            <div className="text-2xl sm:text-4xl font-bold text-primary mb-1 sm:mb-2">
              {totalParentCategories || 0}
            </div>
            <div className="text-xs sm:text-sm text-muted-foreground">대분류</div>
          </div>
          <div>
            <div className="text-2xl sm:text-4xl font-bold text-primary mb-1 sm:mb-2">
              {totalUsers ? `${(totalUsers / 1000).toFixed(1)}K+` : "0"}
            </div>
            <div className="text-xs sm:text-sm text-muted-foreground">크리에이터</div>
          </div>
        </div>
      </section>
    </div>
  )
}
