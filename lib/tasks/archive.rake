task :archive => [:environment] do
  advertisements = Advertisement.where(state: "published")
  advertisements.each do |advertisement|
    advertisement.update(state: "draft")
  end
end
