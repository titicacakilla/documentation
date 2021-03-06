api_key=9775a026f1ca7d1c6c5af9d94d9595a4
app_key=87ce4a24b5553d2e482ea8a8500e71b8ad4554ff
# comment_id=1382559936236196216

# Create a comment to delete. Use jq (http://stedolan.github.io/jq/download/) to get the comment id.
comment_id=$(curl -X POST -H "Content-type: application/json" \
			-d '{"message" : "This comment was submitted and will be deleted by the api."}' \
			"https://app.datadoghq.com/api/v1/comments?api_key=${api_key}&application_key=${app_key}" | jq -r '.comment.resource|ltrimstr("/api/v1/comments/")')
sleep 1
curl -X DELETE "https://app.datadoghq.com/api/v1/comments/${comment_id}?api_key=${api_key}&application_key=${app_key}"