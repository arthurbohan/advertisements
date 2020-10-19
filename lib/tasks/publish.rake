task :publish => [:environment] do
  advertisements = Advertisement.where(state: "approved")
  advertisements.each do |advertisement|
    advertisement.update(state: "published")
  end
end
