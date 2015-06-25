module CreditCardsHelper
  def options_for_month_select
    {
      collection: Date::MONTHNAMES.each_with_index.to_a[1..-1].map { |month, index| [month, index.to_s.rjust(2, '0')]},
      include_blank: false,
    }
  end

  def options_for_year_select
    {
       collection: (Time.now.year)..(100.years.from_now.year),
       include_blank: false,
    }
  end
end
