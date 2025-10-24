"use client"

import { useState } from "react";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { ShoppingCart, Store } from "lucide-react";
import { createClient } from "@/lib/supabase/client";
import { toast } from "sonner";

interface UserTypeToggleProps {
  currentType?: string;
  onTypeChange?: (newType: string) => void;
}

export function UserTypeToggle({ currentType = "buyer", onTypeChange }: UserTypeToggleProps) {
  const [userType, setUserType] = useState(currentType);
  const [isLoading, setIsLoading] = useState(false);
  const supabase = createClient();

  const handleTypeChange = async (newType: string) => {
    if (newType === userType) return;

    setIsLoading(true);

    const { data: { user }, error: userError } = await supabase.auth.getUser();

    if (userError || !user) {
      toast.error("사용자 정보를 가져올 수 없습니다.");
      setIsLoading(false);
      return;
    }

    const { error } = await supabase.auth.updateUser({
      data: { user_type: newType }
    });

    if (error) {
      toast.error("역할 변경에 실패했습니다.");
    } else {
      setUserType(newType);
      toast.success(
        newType === "buyer"
          ? "구매자 모드로 전환되었습니다."
          : "판매자 모드로 전환되었습니다."
      );
      onTypeChange?.(newType);
    }

    setIsLoading(false);
  };

  return (
    <Card className="border-primary/20">
      <CardHeader>
        <CardTitle className="text-lg">활동 모드</CardTitle>
        <CardDescription>
          구매자와 판매자 모드를 자유롭게 전환할 수 있습니다.
        </CardDescription>
      </CardHeader>
      <CardContent>
        <div className="grid grid-cols-2 gap-4">
          <Button
            variant={userType === "buyer" ? "default" : "outline"}
            className={`h-auto flex-col gap-2 p-4 ${
              userType === "buyer"
                ? "bg-primary hover:bg-primary/90"
                : "border-primary/30 hover:bg-primary/10"
            }`}
            onClick={() => handleTypeChange("buyer")}
            disabled={isLoading}
          >
            <ShoppingCart className="h-6 w-6" />
            <div className="text-center">
              <div className="font-semibold">구매자</div>
              <div className="text-xs opacity-80">서비스 구매</div>
            </div>
          </Button>

          <Button
            variant={userType === "seller" ? "default" : "outline"}
            className={`h-auto flex-col gap-2 p-4 ${
              userType === "seller"
                ? "bg-primary hover:bg-primary/90"
                : "border-primary/30 hover:bg-primary/10"
            }`}
            onClick={() => handleTypeChange("seller")}
            disabled={isLoading}
          >
            <Store className="h-6 w-6" />
            <div className="text-center">
              <div className="font-semibold">판매자</div>
              <div className="text-xs opacity-80">서비스 판매</div>
            </div>
          </Button>
        </div>
      </CardContent>
    </Card>
  );
}
