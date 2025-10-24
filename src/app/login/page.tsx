import { redirect } from "next/navigation"
import { createClient } from "@/lib/supabase/server"
import { LoginOverlay } from "@/components/auth/LoginOverlay"

export default async function LoginPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (user) {
    redirect('/')
  }

  return <LoginOverlay />
}
