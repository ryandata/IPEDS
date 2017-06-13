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


# compute Science totals by adding Engineering, Biological Sciences, Physical Sciences, and Mathematics Variables

ipeds$Women_in_Science_UG_2014<-Total.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Total.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Total.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Total.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Total_in_Science_UG_2014<-Grand.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Grand.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Grand.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Grand.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# American Indian or Alaska Native
ipeds$Native_Women_in_Science_UG_2014<-American.Indian.or.Alaska.Native.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+American.Indian.or.Alaska.Native.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+American.Indian.or.Alaska.Native.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+American.Indian.or.Alaska.Native.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Native_Total_in_Science_UG_2014<-American.Indian.or.Alaska.Native.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+American.Indian.or.Alaska.Native.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+American.Indian.or.Alaska.Native.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+American.Indian.or.Alaska.Native.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Asian
ipeds$Asian_Women_in_Science_UG_2014<-Asian.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Asian.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Asian.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Asian.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Asian_Total_in_Science_UG_2014<-Asian.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Asian.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Asian.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Asian.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Black
ipeds$Black_Women_in_Science_UG_2014<-Black.or.African.American.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Black.or.African.American.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Black.or.African.American.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Black.or.African.American.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Black_Total_in_Science_UG_2014<-Black.or.African.American.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Black.or.African.American.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Black.or.African.American.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Black.or.African.American.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Hispanic
ipeds$Hispanic_Women_in_Science_UG_2014<-Hispanic.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Hispanic.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Hispanic.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Hispanic.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Hispanic_Total_in_Science_UG_2014<-Hispanic.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Hispanic.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Hispanic.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Hispanic.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Native Hawaiian
ipeds$Hawaiian_Women_in_Science_UG_2014<-Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Hawaiian_Total_in_Science_UG_2014<-Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Native.Hawaiian.or.Other.Pacific.Islander.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# White
ipeds$White_Women_in_Science_UG_2014<-White.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+White.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+White.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+White.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$White_Total_in_Science_UG_2014<-White.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+White.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+White.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+White.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Two or more Races
ipeds$Two_races_Women_in_Science_UG_2014<-Two.or.more.races.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Two.or.more.races.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Two.or.more.races.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Two.or.more.races.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Two_races_Total_in_Science_UG_2014<-Two.or.more.races.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Two.or.more.races.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Two.or.more.races.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Two.or.more.races.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Race/Ethnicity Unknown
ipeds$Race_unknown_Women_in_Science_UG_2014<-Race.ethnicity.unknown.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Race.ethnicity.unknown.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Race.ethnicity.unknown.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Race.ethnicity.unknown.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Race_unknown_Total_in_Science_UG_2014<-Race.ethnicity.unknown.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Race.ethnicity.unknown.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Race.ethnicity.unknown.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Race.ethnicity.unknown.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# Nonresident Alien
ipeds$Nonresident_Women_in_Science_UG_2014<-Nonresident.alien.women..EF2014CP..14.0000.Engineering..Undergraduate.total.+Nonresident.alien.women..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Nonresident.alien.women..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Nonresident.alien.women..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.
ipeds$Nonresident_Total_in_Science_UG_2014<-Nonresident.alien.total..EF2014CP..14.0000.Engineering..Undergraduate.total.+Nonresident.alien.total..EF2014CP..26.0000.Biological.Sciences.Life.Sciences..Undergraduate.total.+Nonresident.alien.total..EF2014CP..27.0000.Mathematics..Undergraduate.total.+Nonresident.alien.total..EF2014CP..40.0000.Physical.Sciences..Undergraduate.total.

# compute totals for all, public, AAU, and BTAA groups
total_all<-data.frame(t(c(1,"Total",as.numeric(colSums(ipeds[,3:233],na.rm=TRUE)))))
names(total_all)<-names(ipeds)
# ipeds_plus<-rbind(ipeds,total_all)

# "Control of Institution and Institutional Control both code Public as '1'"
# there is no discrepancy between the two columns for public instituttions

Public_data<-ipeds[Control.of.institution..HD2014.==1,]
BTAA_data<-ipeds[BTAA==1,]
AAU_data<-ipeds[AAU==1,]

total_public<-data.frame(t(c(1,"Total Public",as.numeric(colSums(Public_data[,3:233],na.rm=TRUE)))))
names(total_public)<-names(ipeds)
# ipeds_plus<-rbind(ipeds_plus,total_public)

total_BTAA<-data.frame(t(c(1,"Total BTAA",as.numeric(colSums(BTAA_data[,3:233],na.rm=TRUE)))))
names(total_BTAA)<-names(ipeds)
# ipeds_plus<-rbind(ipeds_plus,total_BTAA)

total_AAU<-data.frame(t(c(1,"Total AAU",as.numeric(colSums(AAU_data[,3:233],na.rm=TRUE)))))
names(total_AAU)<-names(ipeds)
ipeds_plus<-rbind(ipeds,total_all,total_public,total_AAU, total_BTAA)

#now compute percentages

# Overall (non-science) totals for 2015, 2014
ipeds_plus$total_undergrad_2015<-as.numeric(ipeds_plus$Total.women..EF2015..All.students..Undergraduate.total.)/as.numeric(ipeds_plus$Grand.total..EF2015..All.students..Undergraduate.total.)
ipeds_plus$part_time_undergrad_2015<-as.numeric(ipeds_plus$Part.time.women..EF2015..All.students..Undergraduate.total.)/as.numeric(ipeds_plus$Part.time.total..EF2015..All.students..Undergraduate.total.)
ipeds_plus$full_time_undergrad_2015<-as.numeric(ipeds_plus$Full.time.women..EF2015..All.students..Undergraduate.total.)/as.numeric(ipeds_plus$Full.time.total..EF2015..All.students..Undergraduate.total.)

ipeds_plus$total_undergrad_2014<-as.numeric(ipeds_plus$Total.women..EF2014..All.students..Undergraduate.total.)/as.numeric(ipeds_plus$Grand.total..EF2014..All.students..Undergraduate.total.)
ipeds_plus$part_time_undergrad_2014<-as.numeric(ipeds_plus$Part.time.women..EF2014..All.students..Undergraduate.total.)/as.numeric(ipeds_plus$Part.time.total..EF2014..All.students..Undergraduate.total.)
ipeds_plus$full_time_undergrad_2014<-as.numeric(ipeds_plus$Full.time.women..EF2014..All.students..Undergraduate.total.)/as.numeric(ipeds_plus$Full.time.total..EF2014..All.students..Undergraduate.total.)

# compute Science totals by adding Engineering, Biological Sciences, Physical Sciences, and Mathematics Variables
ipeds_plus$science_undergrad_2014<-as.numeric(ipeds_plus$Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Total_in_Science_UG_2014)

# American Indian or Alaska Native
ipeds_plus$native_undergrad_2014<-as.numeric(ipeds_plus$Native_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Native_Total_in_Science_UG_2014)

# Asian
ipeds_plus$asian_undergrad_2014<-as.numeric(ipeds_plus$Asian_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Asian_Total_in_Science_UG_2014)

# Black
ipeds_plus$black_undergrad_2014<-as.numeric(ipeds_plus$Black_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Black_Total_in_Science_UG_2014)

# Hispanic
ipeds_plus$hispanic_undergrad_2014<-as.numeric(ipeds_plus$Hispanic_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Hispanic_Total_in_Science_UG_2014)

# Native Hawaiian
ipeds_plus$hawaiian_undergrad_2014<-as.numeric(ipeds_plus$Hawaiian_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Hawaiian_Total_in_Science_UG_2014)

# White
ipeds_plus$white_undergrad_2014<-as.numeric(ipeds_plus$White_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$White_Total_in_Science_UG_2014)

# Two or more Races
ipeds_plus$two_races_undergrad_2014<-as.numeric(ipeds_plus$Two_races_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Two_races_Total_in_Science_UG_2014)

# Race/Ethnicity Unknown
ipeds_plus$race_unknown_undergrad_2014<-as.numeric(ipeds_plus$Race_unknown_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Race_unknown_Total_in_Science_UG_2014)

# Nonresident Alien
ipeds_plus$nonresident_undergrad_2014<-as.numeric(ipeds_plus$Nonresident_Women_in_Science_UG_2014)/as.numeric(ipeds_plus$Nonresident_Total_in_Science_UG_2014)

save(ipeds_plus, file="ipeds_plus.RData")
write.csv(ipeds_plus, file="ipeds_plus.csv")
