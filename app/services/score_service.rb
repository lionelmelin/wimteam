class ScoreService
  def score(walk, user)
    rough_score = 0
    user_existing_skills = user.positions.first.skills.map { |skill| skill.name }
    walk.skills.each do |walk_skill|
      rough_score += 1 if user_existing_skills.include? walk_skill.name
    end
    p rough_score
    p size = [walk.skills.size, user_existing_skills.size].max
    p rough_score = rough_score * 100 / size
    return rough_score
  end
end
