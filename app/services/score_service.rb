class ScoreService
  def score(walk, user)
    rough_score = 0
    p "purpose factor:"
    p purpose_factor = walk.purpose == user.purpose ? 1 : 0.3
    user_existing_skills = user.positions.first.skills.map { |skill| skill.name }
    walk.skills.each do |walk_skill|
      rough_score += 1 if user_existing_skills.include? walk_skill.name
    end
    size = [walk.skills.size, user_existing_skills.size].max
    p rough_score = [2 * (rough_score * purpose_factor * 100 / size).round, 100].min
    return rough_score
  end

  def order_score(walks, user)
    walks.sort_by {|walk| score(walk, user) * -1}
  end
end
