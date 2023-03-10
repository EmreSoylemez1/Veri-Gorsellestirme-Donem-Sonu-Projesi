library(ggplot2)
library(priceR)

#1. Grafik

ggplot(minwage_turkey1, aes(Date, MinWage))+
  geom_bar(stat = "identity", fill="DarkGreen")+
  geom_text(aes(label = MinWage,),
            size = 4, hjust = 1.25, color="White")+
  labs(y="Asgari ?cret",
       title = "Asgari ?cret ?ubuk Grafi?i",
       subtitle = "Asgari ?cretin Y?llara G?re T?rk Liras? Kar??l???")+
  coord_flip()+
  theme_bw()+
  theme(
    axis.title.y = element_blank()
  )


#2. Grafik

ggplot(minwage_turkey1, aes(Date, MinWageUsd))+
  geom_point(size=4, color="DarkGreen")+
  geom_text(aes(label = MinWageUsd,),
            size = 4, vjust = -0.75,)+
  labs(y="Asgari ?cret(USD)",
       title = "Asgari ?cret(USD) Nokta Grafi?i",
       subtitle = "Asgari ?cretin Y?llara G?re Amerikan Dolar? Kar??l???")+
  theme_bw()+
  coord_flip() +
  theme(
    axis.title.y = element_blank()
  )


#3. Grafik

try <- historical_exchange_rates("USD", to="TRY", start_date = "2011-01-01", end_date = "2022-01-01")

ggplot(try, aes(date, one_USD_equivalent_to_x_TRY))+
  geom_line(color="DarkGreen")+
  labs(y="Dolar-T?rk Liras?",
       title="Amerikan Dolar?-T?rk Liras? Kuru Zaman Serisi Grafi?i",
       subtitle = "Y?llara G?re Amerikan Dolar?-T?rk Liras? Kur De?i?imi")+
  scale_x_date(date_labels = "%Y", date_breaks = "1 year")+
  theme_bw()+
  theme(
    axis.title.x = element_blank()
  )