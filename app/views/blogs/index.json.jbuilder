json.array!(@blogs) do |blog|
  json.extract! blog, :name, :comment, :date
  json.url blog_url(blog, format: :json)
end
