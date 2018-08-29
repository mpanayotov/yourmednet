json.array! @medcases do |medcase|
  json.author_name medcase.author.name
  json.author_picture medcase.author.profile.picture
  json.title medcase.title
  json.description medcase.description
  json.documents medcase.documents
end
