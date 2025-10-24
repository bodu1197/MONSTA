"use client"

import { Heart, MessageCircle, Send, Bookmark, Plus } from "lucide-react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"

// TODO: 실제 데이터로 교체
const stories: any[] = []
const posts: any[] = []

export function FeedContent() {
  return (
    <div className="w-full max-w-2xl mx-auto px-0">
      {/* Stories Section */}
      <div className="border-b bg-background sticky top-16 md:top-16 z-40 pb-3 pt-3 md:pb-4 md:pt-4">
        <div className="flex gap-3 md:gap-4 overflow-x-auto px-3 md:px-4 scrollbar-hide">
          {/* Your Story */}
          <div className="flex flex-col items-center gap-1.5 md:gap-2 min-w-[70px] md:min-w-[80px]">
            <div className="relative">
              <div className="w-14 h-14 md:w-16 md:h-16 rounded-full bg-muted flex items-center justify-center border-2 border-dashed border-muted-foreground/30 cursor-pointer hover:bg-muted/80 transition active:scale-95">
                <Plus style={{ width: '20px', height: '20px' }} className="text-muted-foreground md:w-6 md:h-6" />
              </div>
            </div>
            <span className="text-[10px] md:text-xs text-center font-medium">내 스토리</span>
          </div>

          {/* Other Stories */}
          {stories.map((story) => (
            <div key={story.id} className="flex flex-col items-center gap-1.5 md:gap-2 min-w-[70px] md:min-w-[80px]">
              <div className="relative">
                <Avatar
                  className={`w-14 h-14 md:w-16 md:h-16 cursor-pointer transition active:scale-95 border-2 ${
                    story.hasNew
                      ? "border-primary"
                      : "border-muted"
                  }`}
                >
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold text-sm md:text-base">
                    {story.initials}
                  </AvatarFallback>
                </Avatar>
              </div>
              <span className="text-[10px] md:text-xs text-center font-medium truncate w-full px-1">
                {story.username}
              </span>
            </div>
          ))}
        </div>
      </div>

      {/* Feed Posts */}
      <div className="pb-4 md:pb-8 px-0">
        {posts.map((post) => (
          <Card key={post.id} className="mb-4 md:mb-6 overflow-hidden border-0 rounded-none sm:border sm:rounded-xl shadow-sm">
            {/* Post Header */}
            <div className="flex items-center justify-between p-3 md:p-4">
              <div className="flex items-center gap-2.5 md:gap-3">
                <Avatar className="w-8 h-8 md:w-10 md:h-10">
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold text-xs md:text-sm">
                    {post.initials}
                  </AvatarFallback>
                </Avatar>
                <div>
                  <p className="font-semibold text-sm md:text-base">{post.username}</p>
                  <p className="text-[10px] md:text-xs text-muted-foreground">{post.timeAgo}</p>
                </div>
              </div>
              <Button variant="ghost" size="sm" className="text-primary hover:text-primary/80 text-xs md:text-sm px-2 md:px-3 h-7 md:h-8">
                팔로우
              </Button>
            </div>

            {/* Post Image */}
            <div className="relative w-full aspect-square bg-muted">
              <img
                src={post.image}
                alt="Post"
                className="w-full h-full object-cover"
              />
            </div>

            {/* Post Actions */}
            <div className="p-3 md:p-4">
              <div className="flex items-center justify-between mb-2 md:mb-3">
                <div className="flex items-center gap-4 md:gap-5">
                  <button className="hover:text-primary transition active:scale-95 touch-manipulation">
                    <Heart className="w-6 h-6 md:w-7 md:h-7" />
                  </button>
                  <button className="hover:text-primary transition active:scale-95 touch-manipulation">
                    <MessageCircle className="w-6 h-6 md:w-7 md:h-7" />
                  </button>
                  <button className="hover:text-primary transition active:scale-95 touch-manipulation">
                    <Send className="w-6 h-6 md:w-7 md:h-7" />
                  </button>
                </div>
                <button className="hover:text-primary transition active:scale-95 touch-manipulation">
                  <Bookmark className="w-6 h-6 md:w-7 md:h-7" />
                </button>
              </div>

              {/* Likes */}
              <p className="font-semibold text-xs md:text-sm mb-1.5 md:mb-2">
                좋아요 {post.likes.toLocaleString()}개
              </p>

              {/* Caption */}
              <div className="text-xs md:text-sm mb-1.5 md:mb-2">
                <span className="font-semibold mr-1.5 md:mr-2">{post.username}</span>
                <span className="leading-relaxed">{post.caption}</span>
              </div>

              {/* Tags */}
              <div className="flex flex-wrap gap-1.5 md:gap-2 mb-1.5 md:mb-2">
                {post.tags.map((tag) => (
                  <Link
                    key={tag}
                    href={`/tags/${tag}`}
                    className="text-xs md:text-sm text-primary hover:underline active:underline"
                  >
                    #{tag}
                  </Link>
                ))}
              </div>

              {/* View Comments */}
              <button className="text-xs md:text-sm text-muted-foreground hover:text-foreground active:text-foreground">
                댓글 45개 모두 보기
              </button>
            </div>
          </Card>
        ))}

        {/* Load More */}
        <div className="text-center py-6 md:py-8">
          <Button variant="outline" size="default" className="rounded-full text-sm md:text-base px-6 md:px-8">
            더 보기
          </Button>
        </div>
      </div>
    </div>
  )
}
