'use client'

import { Moon, Sun } from 'lucide-react'
import { useEffect, useState } from 'react'

export function ThemeToggle() {
  const [theme, setTheme] = useState<'light' | 'dark'>('light')

  useEffect(() => {
    // 초기 테마 설정 (localStorage에서 가져오기)
    const savedTheme = localStorage.getItem('theme') as 'light' | 'dark' | null
    const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches
    const initialTheme = savedTheme || (prefersDark ? 'dark' : 'light')

    setTheme(initialTheme)
    document.documentElement.classList.toggle('dark', initialTheme === 'dark')
  }, [])

  const toggleTheme = () => {
    const newTheme = theme === 'light' ? 'dark' : 'light'
    setTheme(newTheme)
    localStorage.setItem('theme', newTheme)
    document.documentElement.classList.toggle('dark', newTheme === 'dark')
  }

  return (
    <button
      onClick={toggleTheme}
      className="relative inline-flex items-center justify-center rounded-full w-10 h-10 hover:bg-accent transition-colors"
      aria-label="테마 전환"
    >
      {theme === 'light' ? (
        <Moon style={{ width: '20px', height: '20px' }} className="text-foreground" />
      ) : (
        <Sun style={{ width: '20px', height: '20px' }} className="text-foreground" />
      )}
    </button>
  )
}
