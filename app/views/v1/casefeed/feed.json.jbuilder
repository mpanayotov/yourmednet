json.array! @medcases do |medcase|
  json.id medcase.id
  json.author do
    json.name medcase.author.name
    json.picture medcase.author.profile.picture
    json.id medcase.author.id
  end
  json.title medcase.title
  json.description medcase.description
  json.documents medcase.documents
  json.comments do
    json.array! medcase.comments, partial: 'v1/comments/comment', as: :comment
  end
  json.answers do
    json.array! medcase.answers, partial: 'v1/answers/answer', as: :answer
  end
end
