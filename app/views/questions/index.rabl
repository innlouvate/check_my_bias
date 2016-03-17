collection @questions
attributes :id, :content
child :answers do |answer|
  attributes :id, :content
end
