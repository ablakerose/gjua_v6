#
# html = open("https://www.womenslinkworldwide.org/en/awards/cases")
# doc = Nokogiri::HTML(html)
#
# class Scraper
#
#
#
#  # BASE_URL = 'https://www.womenslinkworldwide.org/en/awards/cases'
#  #
#  #  def get_page
#  #      doc = Nokogiri::HTML(open("https://www.womenslinkworldwide.org/en/awards/cases"))
#  #        binding.pry
#  #  end
#  #
#  #  def case_title
#  #    case_title = doc.css(".toggleArt").text.split(" , ")
#
#     # ["\"Boys will be boys\"Delivered on concreteDecriminalization of AbortionAccess to Assisted ReproductionToo Old for SexRespect women’s rightsLiving without abuserCase of Ángela González - State ResponsibilityFight Against Sexual HarassmentPension with a Gender PerspectiveEviction from the Family HomeNo more revictimizationMurder of trans activist Diana SacayánRestrictive abortion law violates human rightsTwo-finger test\"La Manada\" caseCriminalizing Pregnant WomenRaped, pregnant, and jailedJuana is in my houseCommunity Service for Sexual AbuseTrans people denied equal rightsProhibited to mention abortionDeath Sentence for rape victimDeliberately deceptive informationAssaulted in a hotelConviction for unfaithful women\"At least she won't get pregnant\"Guilty of ending a \"harmonious marriage\"Stolen Babies“Feelings were running high”"]
#
#
#   end
#
# end
#
# Scraper.new.get_page


# # cases = doc.css("#instructors .team-holder .person-box")

# # # instructors.each do |instructor|
# # #   puts "Flatiron School <3 " + instructor.css("h2").text
# # # # end

# def self.scrape_cases
#   pg = open(BASE_URL)
#   parsed_html = Nokogiri.HTML(pg)
#   case_names = parsed_html.css()
