class MainView < ApplicationView
  use_builder

  # Add your stuff here.
  today = Time.now
  nerds_day = Time.mktime ( today.year , 5 , 25 ).yday
  childrens_day = Time.mktime( today.year , 10 , 12 ).yday
  christmas = Time.mktime ( today.year , 12 , 25 ).yday
  on :run, 'clicked' do |widget|
    self.today_label.text = "Hoje é #{today.day}/#{today.month}/#{today.year}"
    self.nerds_day_label.text = "faltam #{nerds_day - today.yday} dias para o dia do orgulho nerd"
    self.childrens_day_label.text = "faltam #{childrens_day - today.yday} dias para o dia das crianças"
    self.programmers_day_label.text = "faltam #{256 - today.yday } dias para o dia do programador" 
    self.christmas_label.text = "faltam #{christmas - today.yday} dias para o natal"
  end
end
