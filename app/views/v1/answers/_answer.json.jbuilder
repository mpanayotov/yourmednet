json.id answer.id
json.content answer.content
json.author do
  json.picture answer.author.profile.picture
  json.name answer.author.name
end
json.comments do
  json.array! answer.comments, partial: 'v1/comments/comment', as: :comment
end