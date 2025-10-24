import { Send, Search } from "lucide-react"
import { redirect } from "next/navigation"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import { createClient } from "@/lib/supabase/server"
import type { Conversation, Message } from "@/types/database"

function formatTimeAgo(date: string) {
  const now = new Date()
  const past = new Date(date)
  const diffMs = now.getTime() - past.getTime()
  const diffMins = Math.floor(diffMs / 60000)
  const diffHours = Math.floor(diffMs / 3600000)
  const diffDays = Math.floor(diffMs / 86400000)

  if (diffMins < 1) return "방금 전"
  if (diffMins < 60) return `${diffMins}분 전`
  if (diffHours < 24) return `${diffHours}시간 전`
  if (diffDays === 1) return "어제"
  if (diffDays < 7) return `${diffDays}일 전`
  return past.toLocaleDateString("ko-KR")
}

export default async function MessagesPage() {
  const supabase = await createClient()

  // Get current user
  const {
    data: { user: authUser },
  } = await supabase.auth.getUser()

  if (!authUser) {
    redirect("/login")
  }

  // Get conversations where user is a participant
  const { data: conversations } = await supabase
    .from("conversations")
    .select(`
      *,
      participant_1:participant_1_id(id, username, email),
      participant_2:participant_2_id(id, username, email),
      messages(content, created_at, sender_id, is_read)
    `)
    .or(`participant_1_id.eq.${authUser.id},participant_2_id.eq.${authUser.id}`)
    .order("last_message_at", { ascending: false })

  // Transform conversations to include the other participant and last message
  const conversationsWithDetails = conversations?.map((conv: any) => {
    const otherParticipant =
      conv.participant_1.id === authUser.id ? conv.participant_2 : conv.participant_1

    // Get the most recent message
    const lastMessage = conv.messages?.[0]
    const unreadCount = conv.messages?.filter(
      (msg: any) => !msg.is_read && msg.sender_id !== authUser.id
    ).length || 0

    return {
      id: conv.id,
      name: otherParticipant.username || otherParticipant.email,
      initials: (otherParticipant.username || otherParticipant.email)?.charAt(0)?.toUpperCase() || "U",
      lastMessage: lastMessage?.content || "메시지 없음",
      time: lastMessage ? formatTimeAgo(lastMessage.created_at) : "",
      unread: unreadCount,
    }
  }) || []

  return (
    <div className="w-full mx-auto px-4 py-8 max-w-6xl">
      <h1 className="text-3xl font-bold mb-8">메시지</h1>

      <div className="grid lg:grid-cols-3 gap-6">
        {/* Conversations List */}
        <div className="lg:col-span-1">
          <div className="mb-4">
            <div className="relative">
              <Search style={{ width: '18px', height: '18px' }} className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
              <Input
                type="search"
                placeholder="대화 검색..."
                className="pl-10 rounded-full"
              />
            </div>
          </div>

          {conversationsWithDetails.length > 0 ? (
            <div className="space-y-2">
              {conversationsWithDetails.map((conv) => (
                <Card
                  key={conv.id}
                  className="p-4 hover:shadow-md transition cursor-pointer border-2 hover:border-primary"
                >
                  <div className="flex items-center gap-3">
                    <div className="relative">
                      <Avatar className="w-12 h-12">
                        <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                          {conv.initials}
                        </AvatarFallback>
                      </Avatar>
                      {conv.unread > 0 && (
                        <span className="absolute -top-1 -right-1 w-5 h-5 bg-destructive text-white text-xs rounded-full flex items-center justify-center">
                          {conv.unread}
                        </span>
                      )}
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center justify-between mb-1">
                        <h3 className="font-semibold">{conv.name}</h3>
                        <span className="text-xs text-muted-foreground">{conv.time}</span>
                      </div>
                      <p className="text-sm text-muted-foreground truncate">{conv.lastMessage}</p>
                    </div>
                  </div>
                </Card>
              ))}
            </div>
          ) : (
            <div className="text-center py-12 text-muted-foreground">
              <p>아직 대화가 없습니다.</p>
              <p className="text-sm mt-2">새로운 대화를 시작해보세요!</p>
            </div>
          )}
        </div>

        {/* Chat Area */}
        <div className="lg:col-span-2">
          <Card className="h-[600px] flex flex-col">
            <div className="p-4 border-b">
              <div className="flex items-center gap-3">
                {conversationsWithDetails.length > 0 ? (
                  <>
                    <Avatar className="w-10 h-10">
                      <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                        {conversationsWithDetails[0].initials}
                      </AvatarFallback>
                    </Avatar>
                    <div>
                      <h3 className="font-semibold">{conversationsWithDetails[0].name}</h3>
                      <p className="text-xs text-muted-foreground">대화 상대</p>
                    </div>
                  </>
                ) : (
                  <div className="text-muted-foreground">대화를 선택하세요</div>
                )}
              </div>
            </div>

            <div className="flex-1 p-4 overflow-y-auto">
              <div className="text-center text-muted-foreground text-sm mb-4">
                대화를 선택하여 메시지를 확인하세요
              </div>
            </div>

            <div className="p-4 border-t">
              <div className="flex gap-2">
                <Input placeholder="메시지 입력..." className="flex-1" />
                <Button>
                  <Send style={{ width: '20px', height: '20px' }} />
                </Button>
              </div>
            </div>
          </Card>
        </div>
      </div>
    </div>
  )
}
