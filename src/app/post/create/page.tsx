"use client"

import { useState, useEffect } from "react"
import { ArrowLeft, Upload, X } from "lucide-react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Card } from "@/components/ui/card"
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select"
import { Badge } from "@/components/ui/badge"
import { Checkbox } from "@/components/ui/checkbox"
import { createClient } from "@/lib/supabase/client"

interface Category {
  id: string
  name: string
  parent_id: string | null
  slug: string
}

export default function CreatePostPage() {
  const [tags, setTags] = useState<string[]>([])
  const [tagInput, setTagInput] = useState("")
  const [uploadedImages, setUploadedImages] = useState<string[]>([])
  const [mainCategory, setMainCategory] = useState<string>("")
  const [subCategory, setSubCategory] = useState<string>("")
  const [tertiaryCategory, setTertiaryCategory] = useState<string>("")

  // DB에서 가져온 카테고리
  const [mainCategories, setMainCategories] = useState<Category[]>([])
  const [subCategories, setSubCategories] = useState<Category[]>([])
  const [tertiaryCategories, setTertiaryCategories] = useState<Category[]>([])
  const [loading, setLoading] = useState(true)

  const supabase = createClient()

  // 1차 카테고리(대분류) 불러오기
  useEffect(() => {
    async function fetchMainCategories() {
      setLoading(true)
      const { data, error } = await supabase
        .from('categories')
        .select('id, name, parent_id, slug')
        .is('parent_id', null)
        .order('display_order', { ascending: true })

      if (error) {
        console.error('카테고리 로딩 오류:', error)
      } else {
        setMainCategories(data || [])
      }
      setLoading(false)
    }

    fetchMainCategories()
  }, [])

  // 1차 카테고리 선택 시 2차 카테고리 불러오기
  useEffect(() => {
    async function fetchSubCategories() {
      if (!mainCategory) {
        setSubCategories([])
        return
      }

      const { data, error } = await supabase
        .from('categories')
        .select('id, name, parent_id, slug')
        .eq('parent_id', mainCategory)
        .order('display_order', { ascending: true })

      if (error) {
        console.error('하위 카테고리 로딩 오류:', error)
      } else {
        setSubCategories(data || [])
      }
    }

    fetchSubCategories()
  }, [mainCategory])

  // 2차 카테고리 선택 시 3차 카테고리 불러오기
  useEffect(() => {
    async function fetchTertiaryCategories() {
      if (!subCategory) {
        setTertiaryCategories([])
        return
      }

      const { data, error } = await supabase
        .from('categories')
        .select('id, name, parent_id, slug')
        .eq('parent_id', subCategory)
        .order('display_order', { ascending: true })

      if (error) {
        console.error('3차 카테고리 로딩 오류:', error)
      } else {
        setTertiaryCategories(data || [])
      }
    }

    fetchTertiaryCategories()
  }, [subCategory])

  const handleAddTag = () => {
    if (tagInput.trim() && !tags.includes(tagInput.trim())) {
      setTags([...tags, tagInput.trim()])
      setTagInput("")
    }
  }

  const handleRemoveTag = (tagToRemove: string) => {
    setTags(tags.filter((tag) => tag !== tagToRemove))
  }

  const handleImageUpload = (e: React.ChangeEvent<HTMLInputElement>) => {
    const files = e.target.files
    if (files) {
      const newImages = Array.from(files).map((_, index) =>
        `https://images.unsplash.com/photo-${1626785774573 + index}?w=400&h=400&fit=crop`
      )
      setUploadedImages([...uploadedImages, ...newImages])
    }
  }

  const handleRemoveImage = (index: number) => {
    setUploadedImages(uploadedImages.filter((_, i) => i !== index))
  }

  return (
    <div className="w-full mx-auto px-4 py-8 max-w-4xl">
      {/* Header */}
      <div className="flex items-center justify-between mb-8">
        <Link href="/">
          <Button variant="ghost">
            <ArrowLeft className="h-4 w-4 mr-2" />
            돌아가기
          </Button>
        </Link>
        <h1 className="text-2xl font-bold">포스트 작성</h1>
        <div className="w-24"></div>
      </div>

      <form className="space-y-8">
        {/* Image Upload */}
        <Card className="p-8 border-2 shadow-sm hover:shadow-md transition-shadow">
          <Label className="text-lg font-bold mb-6 block text-foreground">
            이미지 / 영상 업로드
          </Label>

          <div className="space-y-6">
            <label className="flex flex-col items-center justify-center w-full h-72 border-2 border-dashed border-border rounded-xl cursor-pointer hover:border-primary hover:bg-primary/5 transition-all duration-200">
              <div className="flex flex-col items-center justify-center pt-5 pb-6">
                <div className="w-16 h-16 rounded-full bg-primary/10 flex items-center justify-center mb-4">
                  <Upload className="w-8 h-8 text-primary" />
                </div>
                <p className="mb-2 text-base text-foreground font-medium">
                  <span className="font-bold text-primary">클릭하여 업로드</span> 또는 드래그 앤 드롭
                </p>
                <p className="text-sm text-muted-foreground">
                  PNG, JPG, GIF (최대 10MB)
                </p>
              </div>
              <input
                type="file"
                className="hidden"
                multiple
                accept="image/*,video/*"
                onChange={handleImageUpload}
              />
            </label>

            {uploadedImages.length > 0 && (
              <div className="grid grid-cols-4 gap-4">
                {uploadedImages.map((image, index) => (
                  <div key={index} className="relative aspect-square group rounded-xl overflow-hidden border-2 border-border">
                    <img
                      src={image}
                      alt={`Upload ${index + 1}`}
                      className="w-full h-full object-cover"
                    />
                    <button
                      type="button"
                      onClick={() => handleRemoveImage(index)}
                      className="absolute top-2 right-2 p-2 bg-destructive text-white rounded-full opacity-0 group-hover:opacity-100 transition-opacity shadow-lg"
                    >
                      <X className="h-4 w-4" />
                    </button>
                  </div>
                ))}
              </div>
            )}
          </div>
        </Card>

        {/* Post Details */}
        <Card className="p-8 border-2 shadow-sm hover:shadow-md transition-shadow">
          <h2 className="text-lg font-bold mb-6 text-foreground">작업물 정보</h2>
          <div className="space-y-6">
            <div className="space-y-3">
              <Label htmlFor="title" className="text-base font-semibold">제목</Label>
              <Input
                id="title"
                placeholder="포스트 제목을 입력하세요"
                className="h-14 text-base border-2 border-border hover:border-primary focus:border-primary transition-colors"
              />
            </div>

            <div className="space-y-3">
              <Label htmlFor="description" className="text-base font-semibold">설명</Label>
              <Textarea
                id="description"
                placeholder="작업물에 대한 자세한 설명을 작성하세요..."
                className="min-h-[200px] resize-none text-base border-2 border-border hover:border-primary focus:border-primary transition-colors"
              />
              <p className="text-sm text-muted-foreground pl-1">
                프로젝트 컨셉, 사용한 도구, 작업 과정 등을 포함하면 좋습니다.
              </p>
            </div>

            {/* 카테고리 선택 */}
            <div className="pt-6 border-t-2">
              <h3 className="text-base font-bold mb-4 text-foreground">카테고리 선택</h3>

              {/* 1차 카테고리 */}
              <div className="space-y-3 mb-5">
                <Label htmlFor="mainCategory" className="text-base font-semibold">1차 카테고리 (대분류)</Label>
                {loading ? (
                  <div className="h-14 flex items-center px-4 border-2 rounded-xl bg-muted/30">
                    <span className="text-muted-foreground">카테고리 로딩 중...</span>
                  </div>
                ) : (
                  <Select value={mainCategory} onValueChange={(value) => {
                    setMainCategory(value)
                    setSubCategory("")
                    setTertiaryCategory("")
                  }}>
                    <SelectTrigger className="h-14 text-base border-2 border-border hover:border-primary focus:border-primary transition-colors">
                      <SelectValue placeholder="대분류를 선택하세요" />
                    </SelectTrigger>
                    <SelectContent>
                      {mainCategories.map((cat) => (
                        <SelectItem key={cat.id} value={cat.id} className="text-base">
                          {cat.name}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                )}
                <p className="text-sm text-muted-foreground pl-1">
                  총 {mainCategories.length}개의 대분류 카테고리
                </p>
              </div>

              {/* 2차 카테고리 */}
              {mainCategory && (
                <div className="space-y-3 mb-5 p-4 bg-muted/30 rounded-xl border-2 border-border">
                  <Label htmlFor="subCategory" className="text-base font-semibold">2차 카테고리 (중분류)</Label>
                  {subCategories.length > 0 ? (
                    <>
                      <Select value={subCategory} onValueChange={(value) => {
                        setSubCategory(value)
                        setTertiaryCategory("")
                      }}>
                        <SelectTrigger className="h-14 text-base border-2 border-border bg-background hover:border-primary focus:border-primary transition-colors">
                          <SelectValue placeholder="중분류를 선택하세요" />
                        </SelectTrigger>
                        <SelectContent>
                          {subCategories.map((cat) => (
                            <SelectItem key={cat.id} value={cat.id} className="text-base">
                              {cat.name}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                      <p className="text-sm text-muted-foreground pl-1">
                        {subCategories.length}개의 중분류 카테고리
                      </p>
                    </>
                  ) : (
                    <div className="text-sm text-muted-foreground p-4 bg-background rounded-lg border-2 border-dashed">
                      이 카테고리는 중분류가 없습니다.
                    </div>
                  )}
                </div>
              )}

              {/* 3차 카테고리 */}
              {subCategory && (
                <div className="space-y-3 mb-5 p-4 bg-primary/5 rounded-xl border-2 border-primary/20">
                  <Label htmlFor="tertiaryCategory" className="text-base font-semibold">3차 카테고리 (소분류)</Label>
                  {tertiaryCategories.length > 0 ? (
                    <>
                      <Select value={tertiaryCategory} onValueChange={setTertiaryCategory}>
                        <SelectTrigger className="h-14 text-base border-2 border-border bg-background hover:border-primary focus:border-primary transition-colors">
                          <SelectValue placeholder="소분류를 선택하세요" />
                        </SelectTrigger>
                        <SelectContent>
                          {tertiaryCategories.map((cat) => (
                            <SelectItem key={cat.id} value={cat.id} className="text-base">
                              {cat.name}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                      <p className="text-sm text-muted-foreground pl-1">
                        {tertiaryCategories.length}개의 소분류 카테고리
                      </p>
                    </>
                  ) : (
                    <div className="text-sm text-muted-foreground p-4 bg-background rounded-lg border-2 border-dashed">
                      이 카테고리는 소분류가 없습니다.
                    </div>
                  )}
                </div>
              )}
            </div>

            {/* 태그 */}
            <div className="space-y-3 pt-6 border-t-2">
              <Label htmlFor="tags" className="text-base font-semibold">태그</Label>
              <div className="flex gap-3">
                <Input
                  id="tags"
                  placeholder="태그를 입력하고 추가 버튼을 클릭하세요"
                  value={tagInput}
                  onChange={(e) => setTagInput(e.target.value)}
                  onKeyPress={(e) => e.key === "Enter" && (e.preventDefault(), handleAddTag())}
                  className="h-14 text-base border-2 border-border hover:border-primary focus:border-primary transition-colors"
                />
                <Button type="button" onClick={handleAddTag} className="h-14 px-8 text-base">
                  추가
                </Button>
              </div>
              {tags.length > 0 && (
                <div className="flex flex-wrap gap-2 mt-4 p-4 bg-muted/30 rounded-xl border-2 border-border">
                  {tags.map((tag) => (
                    <Badge
                      key={tag}
                      variant="outline"
                      className="cursor-pointer hover:bg-destructive hover:text-white transition-colors text-sm px-3 py-1.5 border-2"
                      onClick={() => handleRemoveTag(tag)}
                    >
                      #{tag}
                      <X className="h-3 w-3 ml-1.5" />
                    </Badge>
                  ))}
                </div>
              )}
            </div>
          </div>
        </Card>

        {/* Service Options */}
        <Card className="p-8 border-2 shadow-sm hover:shadow-md transition-shadow">
          <div className="flex items-center space-x-3 mb-6">
            <Checkbox id="offer-service" className="w-5 h-5" />
            <label
              htmlFor="offer-service"
              className="text-lg font-bold cursor-pointer"
            >
              이 작업물로 서비스 제공하기
            </label>
          </div>

          <div className="space-y-6 ml-8 p-6 bg-muted/30 rounded-xl border-2 border-border">
            <div className="grid grid-cols-2 gap-6">
              <div className="space-y-3">
                <Label htmlFor="price" className="text-base font-semibold">기본 가격</Label>
                <Input
                  id="price"
                  type="number"
                  placeholder="150,000"
                  className="h-14 text-base border-2 border-border hover:border-primary focus:border-primary transition-colors"
                />
              </div>
              <div className="space-y-3">
                <Label htmlFor="delivery" className="text-base font-semibold">작업 기간</Label>
                <Select>
                  <SelectTrigger className="h-14 text-base border-2 border-border hover:border-primary focus:border-primary transition-colors">
                    <SelectValue placeholder="선택" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="1" className="text-base">1일</SelectItem>
                    <SelectItem value="3" className="text-base">3일</SelectItem>
                    <SelectItem value="7" className="text-base">7일</SelectItem>
                    <SelectItem value="14" className="text-base">14일</SelectItem>
                  </SelectContent>
                </Select>
              </div>
            </div>
          </div>
        </Card>

        {/* Submit Buttons */}
        <div className="flex gap-6 pt-4">
          <Button
            type="button"
            variant="outline"
            className="flex-1 h-16 text-base font-semibold border-2 hover:border-primary hover:bg-primary/5"
            asChild
          >
            <Link href="/">취소</Link>
          </Button>
          <Button type="submit" className="flex-1 h-16 text-base font-semibold shadow-lg hover:shadow-xl transition-shadow">
            게시하기
          </Button>
        </div>
      </form>
    </div>
  )
}
