json.extract! comment, :id, :postid, :userid, :commentbody, :created_at, :updated_at
json.url comment_url(comment, format: :json)
