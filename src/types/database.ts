// Supabase 데이터베이스 타입 정의

export interface User {
  id: string
  email: string
  username: string
  full_name: string | null
  profile_photo_url: string | null
  bio: string | null
  user_type: 'buyer' | 'seller' | 'both'
  is_verified: boolean
  created_at: string
  updated_at: string
}

export interface Post {
  id: string
  user_id: string
  title: string | null
  description: string | null
  media_urls: string[]
  media_type: 'image' | 'video' | 'carousel'
  category_id: string | null
  tags: string[]
  view_count: number
  like_count: number
  comment_count: number
  save_count: number
  is_portfolio: boolean
  is_available_for_order: boolean
  base_price: number | null
  delivery_days: number | null
  created_at: string
  updated_at: string
  // Relations
  user?: User
  likes?: Like[]
  comments?: Comment[]
}

export interface Follow {
  id: string
  follower_id: string
  following_id: string
  created_at: string
  // Relations
  follower?: User
  following?: User
}

export interface Like {
  id: string
  user_id: string
  post_id: string
  created_at: string
  // Relations
  user?: User
  post?: Post
}

export interface Comment {
  id: string
  user_id: string
  post_id: string
  parent_comment_id: string | null
  content: string
  like_count: number
  created_at: string
  updated_at: string
  // Relations
  user?: User
  post?: Post
  replies?: Comment[]
}

export interface Story {
  id: string
  user_id: string
  media_url: string
  media_type: 'image' | 'video'
  link_url: string | null
  view_count: number
  created_at: string
  expires_at: string
  // Relations
  user?: User
}

export interface Order {
  id: string
  buyer_id: string
  seller_id: string
  post_id: string | null
  title: string
  description: string | null
  requirements: string | null
  amount: number
  pg_fee: number
  platform_fee: number
  seller_receives: number
  delivery_days: number
  deadline: string | null
  status: 'pending' | 'accepted' | 'in_progress' | 'revision_requested' | 'delivered' | 'completed' | 'cancelled' | 'refunded' | 'disputed'
  payment_method: string | null
  payment_id: string | null
  paid_at: string | null
  escrow_released_at: string | null
  deliverable_urls: string[]
  review_id: string | null
  created_at: string
  updated_at: string
  // Relations
  buyer?: User
  seller?: User
  post?: Post
  review?: Review
}

export interface Review {
  id: string
  order_id: string
  reviewer_id: string
  reviewee_id: string
  rating: number
  content: string | null
  is_public: boolean
  seller_reply: string | null
  created_at: string
  updated_at: string
  // Relations
  reviewer?: User
  reviewee?: User
  order?: Order
}

export interface Conversation {
  id: string
  participant_1_id: string
  participant_2_id: string
  last_message_at: string
  created_at: string
  // Relations
  participant_1?: User
  participant_2?: User
  messages?: Message[]
}

export interface Message {
  id: string
  conversation_id: string
  sender_id: string
  content: string
  attachment_urls: string[]
  is_read: boolean
  created_at: string
  // Relations
  sender?: User
  conversation?: Conversation
}

export interface Notification {
  id: string
  user_id: string
  type: 'like' | 'comment' | 'follow' | 'order' | 'message' | 'review' | 'system'
  title: string | null
  content: string | null
  link_url: string | null
  is_read: boolean
  created_at: string
  // Relations
  user?: User
}

export interface Category {
  id: string
  parent_id: string | null
  name: string
  slug: string
  description: string | null
  icon_emoji: string | null
  service_count: number
  is_popular: boolean
  display_order: number
  created_at: string
  // Relations
  parent?: Category
  children?: Category[]
}

// Database 타입 (Supabase에서 생성된 전체 타입)
export interface Database {
  public: {
    Tables: {
      users: {
        Row: User
        Insert: Omit<User, 'id' | 'created_at' | 'updated_at'>
        Update: Partial<Omit<User, 'id'>>
      }
      posts: {
        Row: Post
        Insert: Omit<Post, 'id' | 'created_at' | 'updated_at' | 'view_count' | 'like_count' | 'comment_count' | 'save_count'>
        Update: Partial<Omit<Post, 'id'>>
      }
      follows: {
        Row: Follow
        Insert: Omit<Follow, 'id' | 'created_at'>
        Update: Partial<Omit<Follow, 'id'>>
      }
      likes: {
        Row: Like
        Insert: Omit<Like, 'id' | 'created_at'>
        Update: Partial<Omit<Like, 'id'>>
      }
      comments: {
        Row: Comment
        Insert: Omit<Comment, 'id' | 'created_at' | 'updated_at' | 'like_count'>
        Update: Partial<Omit<Comment, 'id'>>
      }
      stories: {
        Row: Story
        Insert: Omit<Story, 'id' | 'created_at' | 'expires_at' | 'view_count'>
        Update: Partial<Omit<Story, 'id'>>
      }
      orders: {
        Row: Order
        Insert: Omit<Order, 'id' | 'created_at' | 'updated_at'>
        Update: Partial<Omit<Order, 'id'>>
      }
      reviews: {
        Row: Review
        Insert: Omit<Review, 'id' | 'created_at' | 'updated_at'>
        Update: Partial<Omit<Review, 'id'>>
      }
      conversations: {
        Row: Conversation
        Insert: Omit<Conversation, 'id' | 'created_at' | 'last_message_at'>
        Update: Partial<Omit<Conversation, 'id'>>
      }
      messages: {
        Row: Message
        Insert: Omit<Message, 'id' | 'created_at'>
        Update: Partial<Omit<Message, 'id'>>
      }
      notifications: {
        Row: Notification
        Insert: Omit<Notification, 'id' | 'created_at'>
        Update: Partial<Omit<Notification, 'id'>>
      }
      categories: {
        Row: Category
        Insert: Omit<Category, 'id' | 'created_at' | 'service_count'>
        Update: Partial<Omit<Category, 'id'>>
      }
    }
  }
}
