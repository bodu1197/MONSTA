import { redirect } from "next/navigation"
import { createClient } from "@/lib/supabase/server"
import { SignupOverlay } from "@/components/auth/SignupOverlay"

export default async function SignupPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (user) {
    redirect('/')
  }

  return <SignupOverlay />
}
