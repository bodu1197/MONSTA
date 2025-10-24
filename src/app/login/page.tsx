"use client"

import { useState } from "react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Card } from "@/components/ui/card"
import { Checkbox } from "@/components/ui/checkbox"

export default function LoginPage() {
  const [showPassword, setShowPassword] = useState(false)

  return (
    <div className="min-h-screen flex items-center justify-center px-4 py-12 bg-muted/30">
      <Card className="w-full max-w-md p-8 shadow-lg">
        {/* Logo */}
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-primary mb-2">돌파구</h1>
          <p className="text-muted-foreground">
            재능과 기회를 연결하는 플랫폼
          </p>
        </div>

        {/* Social Login */}
        <div className="space-y-3 mb-6">
          <Button
            variant="outline"
            className="w-full h-12 text-base"
            type="button"
          >
            <svg className="w-5 h-5 mr-2" viewBox="0 0 24 24">
              <path
                fill="currentColor"
                d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
              />
              <path
                fill="currentColor"
                d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
              />
              <path
                fill="currentColor"
                d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
              />
              <path
                fill="currentColor"
                d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
              />
            </svg>
            Google로 계속하기
          </Button>

          <Button
            variant="outline"
            className="w-full h-12 text-base bg-[#FEE500] hover:bg-[#FEE500]/90 border-0"
            type="button"
          >
            <svg className="w-5 h-5 mr-2" viewBox="0 0 24 24">
              <path
                fill="currentColor"
                d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1.41 16.09h-2.82v-6.92h2.82v6.92zm-1.41-7.83c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1zm5.51 7.83h-2.82v-3.36c0-.63-.02-1.44-.88-1.44-.88 0-1.01.69-1.01 1.39v3.41h-2.82v-6.92h2.71v.95h.04c.38-.71 1.3-1.46 2.68-1.46 2.87 0 3.4 1.89 3.4 4.35v3.08h-.3z"
              />
            </svg>
            카카오로 계속하기
          </Button>
        </div>

        {/* Divider */}
        <div className="relative mb-6">
          <div className="absolute inset-0 flex items-center">
            <div className="w-full border-t"></div>
          </div>
          <div className="relative flex justify-center text-xs uppercase">
            <span className="bg-background px-2 text-muted-foreground">
              또는 이메일로 로그인
            </span>
          </div>
        </div>

        {/* Email Login Form */}
        <form className="space-y-4">
          <div className="space-y-2">
            <Label htmlFor="email">이메일</Label>
            <Input
              id="email"
              type="email"
              placeholder="example@email.com"
              className="h-12"
            />
          </div>

          <div className="space-y-2">
            <div className="flex items-center justify-between">
              <Label htmlFor="password">비밀번호</Label>
              <button
                type="button"
                className="text-sm text-primary hover:underline"
                onClick={() => setShowPassword(!showPassword)}
              >
                {showPassword ? "숨기기" : "보기"}
              </button>
            </div>
            <Input
              id="password"
              type={showPassword ? "text" : "password"}
              placeholder="비밀번호를 입력하세요"
              className="h-12"
            />
          </div>

          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-2">
              <Checkbox id="remember" />
              <label
                htmlFor="remember"
                className="text-sm cursor-pointer"
              >
                로그인 상태 유지
              </label>
            </div>
            <Link
              href="/forgot-password"
              className="text-sm text-primary hover:underline"
            >
              비밀번호 찾기
            </Link>
          </div>

          <Button type="submit" className="w-full h-12 text-base">
            로그인
          </Button>
        </form>

        {/* Sign Up Link */}
        <div className="mt-6 text-center text-sm">
          <span className="text-muted-foreground">계정이 없으신가요? </span>
          <Link href="/signup" className="text-primary font-semibold hover:underline">
            회원가입
          </Link>
        </div>

        {/* Footer */}
        <div className="mt-8 pt-6 border-t text-center">
          <p className="text-xs text-muted-foreground mb-2">
            로그인 시{" "}
            <Link href="/terms" className="underline">
              이용약관
            </Link>
            {" "}및{" "}
            <Link href="/privacy" className="underline">
              개인정보처리방침
            </Link>
            에 동의하게 됩니다.
          </p>
          <p className="text-xs text-muted-foreground">
            10,000명 이상의 크리에이터가 활동 중
          </p>
        </div>
      </Card>
    </div>
  )
}
