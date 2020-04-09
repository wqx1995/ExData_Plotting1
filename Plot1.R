## Reading, Naming and Subsetting
setwd("C:/Users/Herman/Documents/MDRP")
HPC <- read.table("C:/Users/Herman/Documents/MDRP/household_power_consumption.txt",skip=1,sep=";")
names(HPC) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
HPC2<- subset(HPC, Date %in% c("1/2/2007","2/2/2007"))
HPC2$Date<-as.Date(HPC2$Date, format="%d/%m/%y")

#Changing factor to numeric variable
HPC2<-as.numeric(as.character(HPC2$Global_active_power))

#calling the basic plot function
hist(HPC2,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#creating png
png("plot1.png")