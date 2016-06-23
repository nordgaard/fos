json.array! @follows.each do |follow|
  json.follower_id follow.follower_id
  json.followee_id follow.followee_id
end