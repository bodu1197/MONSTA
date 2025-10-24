import type { Metadata } from "next";
import { Noto_Sans_KR } from "next/font/google";
import "./globals.css";
import { Header } from "@/components/layout/Header";
import { Sidebar } from "@/components/layout/Sidebar";
import { MobileNav } from "@/components/layout/MobileNav";
import { RightSidebar } from "@/components/layout/RightSidebar";

const notoSansKr = Noto_Sans_KR({
  subsets: ["latin"],
  weight: ["400", "500", "600", "700"],
  variable: "--font-noto-sans-kr",
});

export const metadata: Metadata = {
  title: "돌파구 - 재능과 기회의 연결고리",
  description: "SNS 방식의 새로운 재능 마켓플레이스. 포트폴리오를 공유하고, 크리에이터를 팔로우하며, 기회를 찾아보세요.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ko">
      <body
        className={`${notoSansKr.variable} antialiased`}
      >
        <div className="flex min-h-screen flex-col">
          <Header />
          <div className="flex flex-1">
            <Sidebar />
            <main className="flex-1 pb-16 lg:pb-0 lg:ml-64 xl:mr-80">
              {children}
            </main>
            <RightSidebar />
          </div>
          <MobileNav />
        </div>
      </body>
    </html>
  );
}
