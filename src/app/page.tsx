import { redirect } from "next/navigation"
import { createClient } from "@/lib/supabase/server"
import { FeedContent } from "@/components/feed/FeedContent"

export default async function Home() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) {
    redirect('/login')
  }

  return <FeedContent />
}
