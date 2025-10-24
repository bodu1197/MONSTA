'use client'

import { Search, Bell, MessageCircle } from 'lucide-react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { ThemeToggle } from '@/components/ui/theme-toggle'

export function Header() {
  return (
    <header className="sticky top-0 z-50 w-full border-b bg-background">
      <div className="container flex h-16 items-center justify-between px-4">
        {/* 로고 */}
        <Link href="/" className="flex items-center space-x-2">
          <div className="text-2xl font-bold text-primary">
            돌파구
          </div>
        </Link>

        {/* 검색창 (데스크톱) */}
        <div className="hidden md:flex flex-1 max-w-md mx-8">
          <div className="relative w-full">
            <Search style={{ width: '20px', height: '20px' }} className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
            <Input
              type="search"
              placeholder="서비스, 크리에이터 검색..."
              className="pl-11 w-full rounded-full bg-muted/50 border-0"
            />
          </div>
        </div>

        {/* 우측 액션 버튼 */}
        <div className="flex items-center gap-1 md:gap-2">
          {/* 데스크톱: 모든 버튼 표시 */}
          <div className="hidden md:flex items-center gap-2">
            <ThemeToggle />

            <Link href="/messages">
              <Button variant="ghost" size="icon" className="relative">
                <MessageCircle style={{ width: '24px', height: '24px' }} />
                <span className="absolute top-1 right-1 h-2.5 w-2.5 rounded-full bg-destructive" />
              </Button>
            </Link>

            <Link href="/notifications">
              <Button variant="ghost" size="icon" className="relative">
                <Bell style={{ width: '24px', height: '24px' }} />
                <span className="absolute top-1 right-1 h-2.5 w-2.5 rounded-full bg-destructive" />
              </Button>
            </Link>

            <Link href="/login">
              <Button size="sm" className="ml-2 rounded-full">
                로그인
              </Button>
            </Link>
          </div>

          {/* 모바일: 알림과 프로필만 표시 */}
          <div className="flex md:hidden items-center gap-1">
            <Link href="/notifications">
              <Button variant="ghost" size="icon" className="relative">
                <Bell style={{ width: '22px', height: '22px' }} />
                <span className="absolute top-1 right-1 h-2 w-2 rounded-full bg-destructive" />
              </Button>
            </Link>

            <Link href="/profile">
              <Button variant="ghost" size="icon">
                <div className="w-7 h-7 rounded-full bg-primary/10 flex items-center justify-center text-primary text-xs font-semibold">
                  나
                </div>
              </Button>
            </Link>
          </div>
        </div>
      </div>

      {/* 모바일 검색창 */}
      <div className="md:hidden border-t px-4 py-3">
        <div className="relative">
          <Search style={{ width: '20px', height: '20px' }} className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
          <Input
            type="search"
            placeholder="검색..."
            className="pl-11 w-full rounded-full bg-muted/50 border-0"
          />
        </div>
      </div>
    </header>
  )
}
