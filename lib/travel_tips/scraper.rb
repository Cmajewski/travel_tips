module TravelTips
  class Scraper

    def get_file

      @url=Nokogiri::HTML(open("https://www.travelandleisure.com/trip-ideas/fall-vacations/affordable-destinations-for-fall-travel"))
      x=@url.css("article-content-container").collect {|x| x}
      binding.pry
    end

    def scrape_names

    end
  end
end
