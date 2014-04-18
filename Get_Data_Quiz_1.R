setwd("~/Coursera/Getting_and_Cleaning_Data/Week_1/Quiz")
data=read.csv("getdata-data-ss06hid.csv")
head(data)
high_val=subset(data,VAL==24)
high_val$VAL
summary(high_val$VAL)
length(high_val$VAL)
high_val2=complete.cases(high_val)
sum(as.numeric(high_val2))
length(high_val2)
high_val2*1
miss=is.na(data$FES)
sum(miss*1)
colIndex=7:15
rowIndex=18:23
dat=read.xlsx("getdata-data-DATA.gov_NGAP.xlsx",sheetIndex=1,colIndex=colIndex,
                 rowIndex=rowIndex,header=TRUE)
head(dat)
sum(dat$Zip*dat$Ext,na.rm=T) 
getdata-data-ss06pid

DT=fread("getdata-data-ss06pid.csv")
head(DT)
a=DT[,mean(pwgtp15),by=SEX]
a
system.time(DT[,mean(pwgtp15),by=SEX])
b=sapply(split(DT$pwgtp15,DT$SEX),mean)
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
mean(DT$pwgtp15)[DT$SEX==1]; mean(DT$pwgtp15)[DT$SEX==2]
system.time(mean(DT$pwgtp15)[DT$SEX==1]) 
system.time(mean(DT$pwgtp15)[DT$SEX==2])
system.time(mean(DT$pwgtp15,by=DT$SEX))
str(DT)

library(XML)
fileUrl="getdata%2Fdata%2Frestaurants.xml"
doc=xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode=xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
xmlSApply(rootNode[[1]][[1]],xmlValue)
#
# Finding the number of zipcodes==21231
a=xpathSApply(doc, "//zipcode" , xmlValue)
b=a=='21231'
number=sum(b*1)
number