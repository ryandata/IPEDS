setwd("/home/ryan/R/IPEDS")
ipeds<-read.csv("ipeds.csv")
names(ipeds)
attach(ipeds)

#all calculated variables are expressed as proportion of women
#from 0-1

# note: did not use the "EF2015A" variables, which express "grand total" rather than total for men and women
# did not check the definition of how that is different



# "Control of Institution and Institutional Control both code Public as '1'"
# there is no discrepancy between the two columns for public instituttions

Public_data<-ipeds[Control.of.institution..HD2014.==1,]
BTAA_data<-ipeds[BTAA==1,]
AAU_data<-ipeds[AAU==1,]


# compute Science totals by adding Engineering, Biological Sciences, Physical Sciences, and Mathematics Variables

Women_in_Science_UG_2014<-Total.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Total.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Total.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Total.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Total_in_Science_UG_2014<-Grand.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Grand.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Grand.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Grand.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# American Indian or Alaska Native
Native_Women_in_Science_UG_2014<-American.Indian.or.Alaska.Native.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+American.Indian.or.Alaska.Native.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+American.Indian.or.Alaska.Native.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+American.Indian.or.Alaska.Native.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Native_Total_in_Science_UG_2014<-American.Indian.or.Alaska.Native.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+American.Indian.or.Alaska.Native.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+American.Indian.or.Alaska.Native.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+American.Indian.or.Alaska.Native.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Asian
Asian_Women_in_Science_UG_2014<-Asian.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Asian.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Asian.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Asian.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Asian_Total_in_Science_UG_2014<-Asian.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Asian.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Asian.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Asian.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Black
Black_Women_in_Science_UG_2014<-Black.or.African.American.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Black.or.African.American.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Black.or.African.American.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Black.or.African.American.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Black_Total_in_Science_UG_2014<-Black.or.African.American.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Black.or.African.American.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Black.or.African.American.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Black.or.African.American.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Hispanic
Hispanic_Women_in_Science_UG_2014<-Hispanic.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Hispanic.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Hispanic.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Hispanic.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Hispanic_Total_in_Science_UG_2014<-Hispanic.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Hispanic.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Hispanic.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Hispanic.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Native Hawaiian
Hawaiian_Women_in_Science_UG_2014<-Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Hawaiian_Total_in_Science_UG_2014<-Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# White
White_Women_in_Science_UG_2014<-White.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+White.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+White.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+White.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
White_Total_in_Science_UG_2014<-White.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+White.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+White.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+White.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Two or more Races
Two_races_Women_in_Science_UG_2014<-Two.or.more.races.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Two.or.more.races.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Two.or.more.races.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Two.or.more.races.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Two_races_Total_in_Science_UG_2014<-Two.or.more.races.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Two.or.more.races.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Two.or.more.races.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Two.or.more.races.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Race/Ethnicity Unknown
Race_unknown_Women_in_Science_UG_2014<-Race.ethnicity.unknown.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Race.ethnicity.unknown.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Race.ethnicity.unknown.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Race.ethnicity.unknown.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Race_unknown_Total_in_Science_UG_2014<-Race.ethnicity.unknown.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Race.ethnicity.unknown.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Race.ethnicity.unknown.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Race.ethnicity.unknown.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Nonresident Alien
Nonresident_Women_in_Science_UG_2014<-Nonresident.alien.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Nonresident.alien.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Nonresident.alien.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Nonresident.alien.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
Nonresident_Total_in_Science_UG_2014<-Nonresident.alien.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Nonresident.alien.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Nonresident.alien.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Nonresident.alien.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# compute totals for all, public, AAU, and BTAA groups
total_all<-data.frame(t(c(1,"Total",as.numeric(colSums(ipeds[,3:213],na.rm=TRUE)))))
names(total_all)<-names(ipeds)
# ipeds_plus<-rbind(ipeds,total_all)

# "Control of Institution and Institutional Control both code Public as '1'"
# there is no discrepancy between the two columns for public instituttions

Public_data<-ipeds[Control.of.institution..HD2014.==1,]
BTAA_data<-ipeds[BTAA==1,]
AAU_data<-ipeds[AAU==1,]

total_public<-data.frame(t(c(1,"Total Public",as.numeric(colSums(Public_data[,3:213],na.rm=TRUE)))))
names(total_public)<-names(ipeds)
# ipeds_plus<-rbind(ipeds_plus,total_public)

total_BTAA<-data.frame(t(c(1,"Total BTAA",as.numeric(colSums(BTAA_data[,3:213],na.rm=TRUE)))))
names(total_BTAA)<-names(ipeds)
# ipeds_plus<-rbind(ipeds_plus,total_BTAA)

total_AAU<-data.frame(t(c(1,"Total AAU",as.numeric(colSums(AAU_data[,3:213],na.rm=TRUE)))))
names(total_AAU)<-names(ipeds)
ipeds_plus<-rbind(ipeds,total_all,total_public,total_AAU, total_BTAA)

#now compute percentages

# Overall (non-science) totals for 2015, 2014
total_undergrad_2015<-Total.women..EF2015..All.students..Undergraduate.total./Grand.total..EF2015..All.students..Undergraduate.total.
part_time_undergrad_2015<-Part.time.women..EF2015..All.students..Undergraduate.total./Part.time.total..EF2015..All.students..Undergraduate.total.
full_time_undergrad_2015<-Full.time.women..EF2015..All.students..Undergraduate.total./Full.time.total..EF2015..All.students..Undergraduate.total.

total_undergrad_2014<-Total.women..EF2014..All.students..Undergraduate.total./Grand.total..EF2014..All.students..Undergraduate.total.
part_time_undergrad_2014<-Part.time.women..EF2014..All.students..Undergraduate.total./Part.time.total..EF2014..All.students..Undergraduate.total.
full_time_undergrad_2014<-Full.time.women..EF2014..All.students..Undergraduate.total./Full.time.total..EF2014..All.students..Undergraduate.total.

# compute Science totals by adding Engineering, Biological Sciences, Physical Sciences, and Mathematics Variables
science_undergrad_2014<-Women_in_Science_UG_2014/Total_in_Science_UG_2014

# American Indian or Alaska Native
native_undergrad_2014<-Native_Women_in_Science_UG_2014/Native_Total_in_Science_UG_2014

# Asian
asian_undergrad_2014<-Asian_Women_in_Science_UG_2014/Asian_Total_in_Science_UG_2014

# Black
black_undergrad_2014<-Black_Women_in_Science_UG_2014/Black_Total_in_Science_UG_2014

# Hispanic
hispanic_undergrad_2014<-Hispanic_Women_in_Science_UG_2014/Hispanic_Total_in_Science_UG_2014

# Native Hawaiian
hawaiian_undergrad_2014<-Hawaiian_Women_in_Science_UG_2014/Hawaiian_Total_in_Science_UG_2014

# White
white_undergrad_2014<-White_Women_in_Science_UG_2014/White_Total_in_Science_UG_2014

# Two or more Races
two_races_undergrad_2014<-Two_races_Women_in_Science_UG_2014/Two_races_Total_in_Science_UG_2014

# Race/Ethnicity Unknown
race_unknown_undergrad_2014<-Race_unknown_Women_in_Science_UG_2014/Race_unknown_Total_in_Science_UG_2014

# Nonresident Alien
nonresident_undergrad_2014<-Nonresident_Women_in_Science_UG_2014/Nonresident_Total_in_Science_UG_2014

save(ipeds_plus, file="ipeds_plus.RData")
write.csv(ipeds_plus, file="ipeds_plus.csv")