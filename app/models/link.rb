class Link < ActiveRecord::Base
  has_many :visits
  has_many :comments
  has_many :tags

  def self.shorten(long_link)
    link = Link.new
    link.url_long = long_link
    link.url_short = "#{long_link}.shortened"
    link.save
    link
  end

  def visit(user)
    Visit.visit_link(self, user)
  end

  def display_visits
    puts self.visits.count#.user_id #<< doesn't work. << how do?
  end

  def uniq_visits
    visits_arr = self.visits
    visit_count = 0
    visitors = []
    visits_arr.each do |visit|
      visit_count += 1 unless visitors.include?(visit.user_id)
      visitors << visit.user_id
    end
    visit_count
  end

  def last_10_min_visits
    t = Time.new
    visits_arr = self.visits
    visits_arr.each do |visit|
      time = visit.created_at
      puts visit.id if t - time <= 600
    end
    nil
  end

end
