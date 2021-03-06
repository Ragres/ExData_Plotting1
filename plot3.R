Datos=read.csv2("household_power_consumption.txt")
Datos2=subset(Datos,Datos$Date=="1/2/2007" | Datos$Date=="2/2/2007")
Datos2$Fecha=as.POSIXct(paste(Datos2$Date,Datos2$Time),format="%d/%m/%Y %H:%M:%S")
png(filename = "plot3.png")
plot(Datos2$Fecha,Datos2$Sub_metering_1,xlab="",type="l",ylab="")
lines(Datos2$Fecha,Datos2$Sub_metering_2,col="red",type="l")
lines(Datos2$Fecha,Datos2$Sub_metering_3,col="blue",type="l")
legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
dev.off()
