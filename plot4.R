## Reading, Naming and Subsetting
setwd("C:/Users/Herman/Documents/MDRP")
HPC <- read.table("C:/Users/Herman/Documents/MDRP/household_power_consumption.txt",skip=1,sep=";")
names(HPC) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
HPC2<- subset(HPC, Date %in% c("1/2/2007","2/2/2007"))
HPC2$Date<-as.Date(HPC2$Date, format="%d/%m/%y")
HPC2$Time <- strptime(HPC2$Time, format="%H:%M:%S")
HPC2[1:1440,"Time"] <- format(HPC2[1:1440,"Time"],"2007-02-01 %H:%M:%S")
HPC2[1441:2880,"Time"] <- format(HPC2[1441:2880,"Time"],"2007-02-02 %H:%M:%S")