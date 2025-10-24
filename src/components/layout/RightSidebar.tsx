'use client'

import Link from 'next/link'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { Button } from '@/components/ui/button'

/**
 * 개인화 추천 알고리즘
 *
 * 추천 기준:
 * 1. 사용자가 관심있는 카테고리의 판매자
 *    - 사용자가 최근 본 카테고리
 *    - 사용자가 저장한 게시물의 카테고리
 *
 * 2. 사용자가 팔로우한 사람들이 팔로우하는 판매자
 *    - 친구의 친구 추천 방식
 *    - 공통 팔로워가 많을수록 높은 점수
 *
 * 3. 사용자의 검색 기록 기반
 *    - 최근 검색한 키워드와 관련된 판매자
 *    - 자주 검색하는 서비스 카테고리
 *
 * 점수 계산:
 * - 카테고리 매칭: 30점
 * - 공통 팔로워 수: 각 1점 (최대 40점)
 * - 검색 키워드 매칭: 20점
 * - 최근 활동 (7일 이내): 10점
 *
 * TODO: 실제 사용자 데이터와 연동하여 개인화 추천 구현
 */

// 임시 데이터 - 실제로는 개인화 추천 API에서 가져옴
// TODO: 실제 데이터로 교체
const recommendedSellers: any[] = []

export function RightSidebar() {
  return (
    <aside className="hidden xl:flex fixed right-0 top-16 h-[calc(100vh-4rem)] w-80 flex-col px-6 py-8 overflow-y-auto">
      {/* 추천 판매자 섹션 */}
      <div className="mb-8">
        <div className="flex items-center justify-between mb-4">
          <h2 className="font-semibold text-sm text-muted-foreground">회원님을 위한 추천</h2>
          <Link href="/discover" className="text-xs font-semibold hover:text-muted-foreground">
            모두 보기
          </Link>
        </div>

        <div className="space-y-3">
          {recommendedSellers.map((seller) => (
            <div key={seller.id} className="flex items-center justify-between">
              <Link href={`/profile/${seller.name}`} className="flex items-center gap-3 flex-1 min-w-0">
                <Avatar className="w-10 h-10">
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold text-sm">
                    {seller.initials}
                  </AvatarFallback>
                </Avatar>
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-1">
                    <p className="font-semibold text-sm truncate">{seller.name}</p>
                    {seller.isVerified && (
                      <svg className="w-3.5 h-3.5 text-primary flex-shrink-0" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41L9 16.17z"/>
                      </svg>
                    )}
                  </div>
                  <p className="text-xs text-muted-foreground truncate">{seller.specialty}</p>
                  <p className="text-xs text-muted-foreground">팔로워 {seller.followers}</p>
                </div>
              </Link>
              <Button variant="ghost" size="sm" className="text-xs font-semibold text-primary hover:text-primary/80 h-auto py-1 px-2">
                팔로우
              </Button>
            </div>
          ))}
        </div>
      </div>

      {/* 회사 정보 섹션 */}
      <div className="space-y-4 pt-4 border-t">
        <div className="flex flex-wrap gap-x-3 gap-y-1 text-xs text-muted-foreground">
          <Link key="about" href="/about" className="hover:underline">소개</Link>
          <Link key="help" href="/help" className="hover:underline">도움말</Link>
          <Link key="press" href="/press" className="hover:underline">홍보 센터</Link>
          <Link key="api" href="/api" className="hover:underline">API</Link>
          <Link key="jobs" href="/jobs" className="hover:underline">채용 정보</Link>
          <Link key="privacy" href="/privacy" className="hover:underline">개인정보처리방침</Link>
          <Link key="terms" href="/terms" className="hover:underline">약관</Link>
          <Link key="locations" href="/locations" className="hover:underline">위치</Link>
          <Link key="language" href="/language" className="hover:underline">언어</Link>
        </div>

        <p className="text-xs text-muted-foreground">
          © 2025 돌파구 from MONSTA
        </p>
      </div>
    </aside>
  )
}
