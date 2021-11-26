export type UlamTopicResource = Record<string, any> & {
  name: string;
  url: string;
};

export type UlamTopicableBase = Record<string, any> & {
  value: string;
};

export type UlamTopicBase = Record<string, any> & {
  id: number | string;
  title: string;
  topicable_id?: number | null;
  order?: number | null;
  preview?: boolean;
  description?: string | null;
  summary?: string | null;
  resources?: UlamTopicResource[] | null;
  json?: Record<string, unknown> | null;
  topicable_type: string;
  topicable: UlamTopicableBase;
};
export type UlamLesson = Record<string, any> & {
  id: number | string;
  title: string;
  order?: number | null;
  duration: string;
  summary?: string | null;
  topics?: UlamTopicBase[] | null;
};
export type UlamCourse = Record<string, any> & {
  id: number | string;
  description: string;
  title: string;
  base_price: number;
  image_url: string;
  lessons: UlamLesson[];
  language?: string | null;
  subtitle?: string | null;
  summary?: string | null;
  duration?: string | null;
};
