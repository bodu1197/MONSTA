'use client'

import { Home, Search, Compass, Play, MessageCircle, Bell, PlusSquare, User, Briefcase, Menu } from 'lucide-react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'
import { Button } from '@/components/ui/button'
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'

const navigation = [
  { name: '홈', href: '/', icon: Home },
  { name: '검색', href: '/search', icon: Search },
  { name: '탐색', href: '/explore', icon: Compass },
  { name: '릴스', href: '/reels', icon: Play },
  { name: '메시지', href: '/messages', icon: MessageCircle },
  { name: '알림', href: '/notifications', icon: Bell },
  { name: '만들기', href: '/post/create', icon: PlusSquare },
  { name: '프로필', href: '/profile', icon: User },
  { name: '카테고리', href: '/categories', icon: Briefcase },
]

const moreLinks = [
  { name: '서비스 소개', href: '/about' },
  { name: '이용약관', href: '/terms' },
  { name: '개인정보처리방침', href: '/privacy' },
  { name: '고객센터', href: '/support' },
  { name: '공지사항', href: '/announcements' },
]

export function Sidebar() {
  const pathname = usePathname()

  return (
    <aside className="hidden lg:flex fixed left-0 top-16 h-[calc(100vh-4rem)] w-64 flex-col border-r bg-background overflow-y-auto">
      <nav className="flex flex-1 flex-col gap-2 p-4">
        {navigation.map((item) => {
          const isActive = pathname === item.href
          return (
            <Link key={item.name} href={item.href}>
              <Button
                variant={isActive ? 'secondary' : 'ghost'}
                className={cn(
                  'w-full justify-start gap-3 text-base h-12',
                  isActive && 'bg-secondary font-semibold'
                )}
              >
                <item.icon style={{ width: '24px', height: '24px' }} />
                {item.name}
              </Button>
            </Link>
          )
        })}

        {/* 더보기 메뉴 */}
        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button
              variant="ghost"
              className="w-full justify-start gap-3 text-base h-12 mt-auto"
            >
              <Menu style={{ width: '24px', height: '24px' }} />
              더보기
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="start" className="w-56">
            {moreLinks.map((link) => (
              <DropdownMenuItem key={link.name} asChild>
                <Link href={link.href} className="cursor-pointer">
                  {link.name}
                </Link>
              </DropdownMenuItem>
            ))}
            <DropdownMenuSeparator />
            <DropdownMenuItem disabled>
              <span className="text-xs text-muted-foreground">
                © 2025 돌파구
              </span>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      </nav>
    </aside>
  )
}
