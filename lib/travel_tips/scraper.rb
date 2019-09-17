module TravelTips
  class Scraper

      def get_file
        Nokogiri::HTML(open("https://www.travelandleisure.com/trip-ideas/fall-vacations/affordable-destinations-for-fall-travel"))
      end

      def scrape_name
        names=[]
      # flights=[]
      # hotel=[]
          self.get_file.css("div.article-content-container h2").each  do |content|
          reformat=content.text.split(".")
          names<<reformat[1]
        end
      end

    def scrape_description
        description=[]
        self.get_file.css("p").each do |words|
          if /^Average/ =~ words
          else
            description<<words.text
          end
        end
        new=description.drop(3)



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
          end





    def scrape_names
      names=[]

    end

  end
end
