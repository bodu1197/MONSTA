import { Send, Search } from "lucide-react"
import { Card } from "@/components/ui/card"
import { Avatar, AvatarFallback } from "@/components/ui/avatar"
import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"

const conversations = [
  {
    id: 1,
    name: "김디자이너",
    initials: "김",
    lastMessage: "작업 의뢰 관련해서 문의드립니다",
    time: "5분 전",
    unread: 2,
  },
  {
    id: 2,
    name: "박개발자",
    initials: "박",
    lastMessage: "견적서 보내드렸습니다",
    time: "1시간 전",
    unread: 0,
  },
  {
    id: 3,
    name: "이영상PD",
    initials: "이",
    lastMessage: "감사합니다!",
    time: "어제",
    unread: 0,
  },
]

export default function MessagesPage() {
  return (
    <div className="container mx-auto px-4 py-8 max-w-6xl">
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

          <div className="space-y-2">
            {conversations.map((conv) => (
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
        </div>

        {/* Chat Area */}
        <div className="lg:col-span-2">
          <Card className="h-[600px] flex flex-col">
            <div className="p-4 border-b">
              <div className="flex items-center gap-3">
                <Avatar className="w-10 h-10">
                  <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                    김
                  </AvatarFallback>
                </Avatar>
                <div>
                  <h3 className="font-semibold">김디자이너</h3>
                  <p className="text-xs text-muted-foreground">활동 중</p>
                </div>
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
