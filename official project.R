
# IMPORTING DATA 
library(covid19.analytics)

# DATA

ag <- covid19.data(case = 'aggregated')

# FOR TIME SERIES CONFIRMED DATA

tsc <- covid19.data(case = 'ts-confirmed') 

tsa <- covid19.data(case = 'ts-ALL')

# SUMMARY OF TOP 3 COUNTRIES
report.summary(Nentries = 10,graphical.output = F)
report.summary(Nentries = 3,graphical.output = T)

# TOTALS PER LOCATION 
tots.per.location(tsc,geo.loc = 'Canada')

totals.plt(tsa)

# GORWTH RATE
growth.rate(tsc,geo.loc = 'US')
tsa <- covid19.data(case = 'ts-confirmed') 
totals.plt(tsa)
totals.plt(tsa,c('US'))

# WORLD MAP
live.map(tsc)

# SIR MODEL 
# s - supscepility
# I - infectted
# R - recovered

# SIR modle of US
generate.SIR.model(tsc,'US',tot.population = 1380000000)



