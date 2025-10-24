"use client"

import Link from "next/link";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Checkbox } from "@/components/ui/checkbox";
import { createClient } from "@/lib/supabase/client";
import { useState } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

export function SignupOverlay() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [shopId, setShopId] = useState("");
  const [shopName, setShopName] = useState("");
  const [termsAgreed, setTermsAgreed] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [shopIdError, setShopIdError] = useState("");
  const router = useRouter();
  const supabase = createClient();

  const validateShopId = (id: string) => {
    // 영문, 숫자, 언더스코어만 허용
    const regex = /^[a-zA-Z0-9_]+$/;
    if (!regex.test(id)) {
      return "상점 ID는 영문, 숫자, 언더스코어(_)만 사용 가능합니다";
    }
    if (id.length < 3) {
      return "상점 ID는 최소 3자 이상이어야 합니다";
    }
    if (id.length > 20) {
      return "상점 ID는 최대 20자까지 가능합니다";
    }
    return "";
  };

  const validateShopName = (name: string) => {
    // 이모지 제외 (한글, 영문, 숫자, 공백, 일반 특수문자만 허용)
    const emojiRegex = /[\u{1F300}-\u{1F9FF}]|[\u{2600}-\u{26FF}]|[\u{2700}-\u{27BF}]/gu;
    if (emojiRegex.test(name)) {
      return "상점명에는 이모지를 사용할 수 없습니다";
    }
    if (name.length < 2) {
      return "상점명은 최소 2자 이상이어야 합니다";
    }
    if (name.length > 5) {
      return "상점명은 최대 5자까지 가능합니다";
    }
    return "";
  };

  const handleShopIdChange = (value: string) => {
    setShopId(value);
    const error = validateShopId(value);
    setShopIdError(error);
  };

  const checkShopIdAvailability = async (id: string) => {
    if (!id || shopIdError) return false;

    // Supabase에서 상점 ID 중복 체크
    const { data, error } = await supabase
      .from('users')
      .select('shop_id')
      .eq('shop_id', id)
      .single();

    if (data) {
      setShopIdError("이미 사용 중인 상점 ID입니다");
      return false;
    }

    return true;
  };

  const handleSignup = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!termsAgreed) {
      toast.error("이용약관에 동의해주세요");
      return;
    }

    if (password.length < 8) {
      toast.error("비밀번호는 8자 이상이어야 합니다");
      return;
    }

    const shopIdValidation = validateShopId(shopId);
    if (shopIdValidation) {
      toast.error(shopIdValidation);
      return;
    }

    const shopNameValidation = validateShopName(shopName);
    if (shopNameValidation) {
      toast.error(shopNameValidation);
      return;
    }

    setIsLoading(true);

    // 상점 ID 중복 체크
    const isAvailable = await checkShopIdAvailability(shopId);
    if (!isAvailable) {
      toast.error("사용할 수 없는 상점 ID입니다");
      setIsLoading(false);
      return;
    }

    // 개발 환경에서는 자동 확인, 프로덕션에서는 이메일 확인
    const isDevelopment = process.env.NODE_ENV === 'development';

    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        emailRedirectTo: `${location.origin}/auth/callback`,
        data: {
          shop_id: shopId,
          shop_name: shopName,
          user_type: 'buyer',
        },
        // 개발 환경에서만 자동 확인
        ...(isDevelopment && {
          emailRedirectTo: `${location.origin}/auth/callback?auto_confirm=true`
        }),
      },
    });

    if (error) {
      console.error("회원가입 에러:", error);
      toast.error(`회원가입 실패: ${error.message}`);
      setIsLoading(false);
      return;
    }

    console.log("회원가입 성공:", data);

    if (data.user) {
      toast.success("회원가입 완료! 로그인 페이지로 이동합니다.");
      setTimeout(() => {
        router.push('/login');
      }, 1000);
    } else {
      toast.success("회원가입이 완료되었습니다! 이메일을 확인해주세요.");
      setTimeout(() => {
        router.push('/login');
      }, 1000);
    }
    setIsLoading(false);
  };

  const handleGoogleSignup = async () => {
    setIsLoading(true);
    const { error } = await supabase.auth.signInWithOAuth({
      provider: "google",
      options: {
        redirectTo: `${location.origin}/auth/callback`,
        queryParams: {
          access_type: 'offline',
          prompt: 'consent',
        },
      },
    });

    if (error) {
      toast.error(error.message);
    }
    setIsLoading(false);
  };

  const handleKakaoSignup = async () => {
    setIsLoading(true);
    const { error } = await supabase.auth.signInWithOAuth({
      provider: "kakao",
      options: {
        redirectTo: `${location.origin}/auth/callback`,
      },
    });

    if (error) {
      toast.error(error.message);
    }
    setIsLoading(false);
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm p-4 overflow-y-auto">
      <Card className="mx-auto max-w-md w-full bg-background/95 shadow-lg border-primary/20 my-8">
        <CardHeader className="space-y-1">
          <CardTitle className="text-2xl text-center font-bold text-primary">돌파구</CardTitle>
          <CardDescription className="text-center text-muted-foreground">
            무료로 시작하세요
          </CardDescription>
        </CardHeader>
        <CardContent>
          <form onSubmit={handleSignup} className="grid gap-4">
            {/* Social Signup */}
            <div className="space-y-2">
              <Button
                variant="outline"
                className="w-full border-primary/30 text-primary hover:bg-primary/10"
                onClick={handleGoogleSignup}
                disabled={isLoading}
                type="button"
              >
                Google로 가입하기
              </Button>
              <Button
                variant="outline"
                className="w-full border-primary/30 text-primary hover:bg-primary/10"
                onClick={handleKakaoSignup}
                disabled={isLoading}
                type="button"
              >
                Kakao로 가입하기
              </Button>
            </div>

            {/* Divider */}
            <div className="relative">
              <div className="absolute inset-0 flex items-center">
                <div className="w-full border-t"></div>
              </div>
              <div className="relative flex justify-center text-xs uppercase">
                <span className="bg-background px-2 text-muted-foreground">
                  또는 이메일로 가입
                </span>
              </div>
            </div>

            <div className="grid gap-2">
              <Label htmlFor="shopId">상점 ID</Label>
              <Input
                id="shopId"
                type="text"
                placeholder="my_shop (영문, 숫자, _만 가능)"
                required
                value={shopId}
                onChange={(e) => handleShopIdChange(e.target.value)}
                className={`bg-input/50 border-primary/30 focus-visible:ring-primary ${
                  shopIdError ? "border-red-500" : ""
                }`}
              />
              {shopIdError && (
                <p className="text-xs text-red-500">{shopIdError}</p>
              )}
              <p className="text-xs text-muted-foreground">
                상점 주소: dolpa.com/{shopId || "your_shop"}
              </p>
            </div>

            <div className="grid gap-2">
              <Label htmlFor="shopName">상점명</Label>
              <Input
                id="shopName"
                type="text"
                placeholder="김작가"
                required
                value={shopName}
                onChange={(e) => setShopName(e.target.value)}
                className="bg-input/50 border-primary/30 focus-visible:ring-primary"
              />
              <p className="text-xs text-muted-foreground">
                최대 5자. 한글 사용 가능
              </p>
            </div>

            <div className="grid gap-2">
              <Label htmlFor="email">이메일</Label>
              <Input
                id="email"
                type="email"
                placeholder="example@email.com"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="bg-input/50 border-primary/30 focus-visible:ring-primary"
              />
            </div>

            <div className="grid gap-2">
              <Label htmlFor="password">비밀번호</Label>
              <Input
                id="password"
                type="password"
                placeholder="8자 이상 입력하세요"
                required
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="bg-input/50 border-primary/30 focus-visible:ring-primary"
              />
              <p className="text-xs text-muted-foreground">
                영문, 숫자, 특수문자 조합 8자 이상
              </p>
            </div>

            <div className="space-y-2">
              <div className="flex items-start space-x-2">
                <Checkbox
                  id="terms"
                  checked={termsAgreed}
                  onCheckedChange={(checked) => setTermsAgreed(checked === true)}
                />
                <label
                  htmlFor="terms"
                  className="text-sm cursor-pointer leading-relaxed"
                >
                  <Link href="/terms" className="text-primary hover:underline">
                    이용약관
                  </Link>
                  {" "}및{" "}
                  <Link href="/privacy" className="text-primary hover:underline">
                    개인정보처리방침
                  </Link>
                  에 동의합니다 (필수)
                </label>
              </div>
            </div>

            <Button
              type="submit"
              className="w-full bg-primary hover:bg-primary/90 text-primary-foreground"
              disabled={isLoading}
            >
              {isLoading ? "가입 중..." : "가입하기"}
            </Button>
          </form>
          <div className="mt-4 text-center text-sm text-muted-foreground">
            이미 계정이 있으신가요?{" "}
            <Link href="/login" className="underline text-primary/80 hover:text-primary">
              로그인
            </Link>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
