"use client";

import { Moon, Sun } from "lucide-react";
import { useTheme } from "next-themes";

export function ThemeToggle() {
  const { theme, setTheme } = useTheme();

  const toggleTheme = () => {
    setTheme(theme === "light" ? "dark" : "light");
  };

  return (
    <button
      onClick={toggleTheme}
      className="relative inline-flex items-center justify-center rounded-full w-10 h-10 hover:bg-accent transition-colors"
      aria-label="테마 전환"
    >
      {theme === "light" ? (
        <Moon style={{ width: "20px", height: "20px" }} className="text-foreground" />
      ) : (
        <Sun style={{ width: "20px", height: "20px" }} className="text-foreground" />
      )}
    </button>
  );
}
