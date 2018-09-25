json.id answer.id
json.content answer.content
json.author do
  json.picture answer.author.display_picture
  json.name answer.author.display_name
end
json.comments do
  json.array! answer.comments, partial: 'v1/comments/comment', as: :comment
end