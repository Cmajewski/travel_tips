module TravelTips
  class Scraper

    def get_file
      Nokogiri::HTML(open("https://www.travelandleisure.com/trip-ideas/fall-vacations/affordable-destinations-for-fall-travel"))
    end

    def scrape_name
      names=[]
      self.get_file.css("div.article-content-container h2").each  do |content|
        reformat=content.text.split(".")
        names<<reformat[1]
      end
    end

    def scrape_description
      all_descriptions=[]
      self.get_file.css("p").each do |words|
        if /^Average/ =~ words
        else
          all_descriptions<<words.text
        end
      end
      description=all_descriptions.drop(3)
    end
        binding.pry

        #do |paragraph|
        #   description<<paragraph
        #
        # end
        #


        #  flights<<content.css('p:contains("Average round-trip ticket:")').text.strip
        #  hotel<<content.css('p:contains("Average nightly hotel rate:")').text.strip

      #x=@url.css("div.article-content-container p").each  do |flight|

        #flights<<flight.text
          #names<<content.css("h2").text
          #@x=content.css("p")






    def scrape_names
      names=[]

    end

  end
end
