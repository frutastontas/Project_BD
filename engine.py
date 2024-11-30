


dataset = [
'mclaren,p1,2014,two seater,13.84,rwd,hybrid(gas electricity),a,903,32,338,1395,2,"17000 km, no damage, warranty expired",1300000,900,8,turbo',
'porsche,918 spyder,2015,two seater,10.69,awd,hybrid(gas electricity),a,887,32,340,1678,2,"15000 km, no damage, 1 year warranty left",1400000,1280,8,naturally aspirated',
'land rover,range rover velar,2018,small sport utility vehicle,11.76,awd,gas,a,250,16,217,1950,5,"5000 km, minor scratches, 2 years warranty left",55000,365,4,turbo',
'ferrari,f430,2005,two seater,19.6,rwd,gas,a,483,32,315,1475,2,"25000 km, no damage, warranty expired",90000,465,8,naturally aspirated',
'ferrari,488 gtb,2016,two seater,13.07,rwd,gas,a,661,32,330,1451,2,"10000 km, no damage, 1 year warranty left",240000,760,8,turbo',
'ferrari,458 italia,2010,two seater,16.8,rwd,gas,a,562,32,325,1485,2,"20000 km, no damage, warranty expired",200000,540,8,naturally aspirated',
'toyota,camry,1993,midsize car,11.2,fwd,gas,a,130,16,180,1361,5,"150000 km, no damage, warranty expired",3000,170,4,naturally aspirated',
'toyota,corolla,1993,compact car,9.8,fwd,gas,a,115,16,177,1134,5,"120000 km, no damage, warranty expired",2500,145,4,naturally aspirated',
'toyota,yaris,2007,subcompact car,7.59,fwd,gas,a,106,16,169,1043,5,"90000 km, no damage, warranty expired",5000,140,4,naturally aspirated',
'chevrolet,camaro,1994,subcompact car,11.76,rwd,gas,a,275,16,209,1542,4,"130000 km, no damage, warranty expired",7000,420,6,naturally aspirated',
'ford,mustang,1994,subcompact car,11.76,rwd,gas,a,215,16,217,1542,4,"120000 km, no damage, warranty expired",8000,366,6,naturally aspirated',
'bmw,m3,1995,subcompact car,11.76,rwd,gas,a,240,16,250,1361,5,"110000 km, no damage, warranty expired",12000,365,6,naturally aspirated',
'infiniti,m45,2003,compact car,13.07,rwd,gas,a,340,32,250,1814,5,"100000 km, no damage, warranty expired",15000,450,8,naturally aspirated',
'bmw,5 series,1986,compact car,10.23,rwd,diesel,a,182,12,209,1588,5,"200000 km, no damage, warranty expired",5000,240,6,naturally aspirated',
'porsche,taycan turbo,2020,large car,N/A,awd,electricity,a,616,0,260,2322,5,"8000 km, no damage, 3 years warranty left",180000,850,0,n/a',
'rivian,r1t,2022,standard pickup truck,N/A,4wd,electricity,a,835,0,201,3175,5,"2000 km, no damage, 4 years warranty left",75000,1400,0,n/a',
'ford,f150 pickup 2wd,1993,standard pickup truck,15.68,rwd,gas,a,185,16,161,2087,3,"180000 km, no damage, warranty expired",3000,290,6,naturally aspirated',
'audi,rs6,2003,midsize car,14.7,awd,gas,a,444,40,250,1905,5,"150000 km, no damage, warranty expired",12000,560,8,turbo',
'audi,a3,2006,small station wagon,9.8,fwd,gas,m,200,16,209,1406,5,"80000 km, no damage, warranty expired",7000,280,4,turbo',
'bmw,x5,2000,sport utility vehicle,16.8,rwd,gas,a,282,16,225,2223,5,"170000 km, no damage, warranty expired",8000,380,6,naturally aspirated',
'porsche,cayenne s,2003,special purpose vehicle,16.8,awd,gas,a,340,32,241,2041,5,"120000 km, no damage, warranty expired",10000,420,8,naturally aspirated',
'porsche,carrera 2 911 gt3,2004,two seater,14.7,rwd,gas,m,381,24,306,1361,2,"80000 km, no damage, warranty expired",80000,420,6,naturally aspirated',
'porsche,cayman s,2006,two seater,11.2,rwd,gas,a,295,24,275,1451,2,"90000 km, no damage, warranty expired",40000,340,6,naturally aspirated',
'honda,civic,1994,two seater,8.4,fwd,gas,a,125,16,193,1089,2,"150000 km, no damage, warranty expired",3000,145,4,naturally aspirated',
'ford,transit connect,2010,special purpose vehicle,10.23,fwd,gas,a,136,16,161,1588,5,"90000 km, minor scratches, warranty expired",8000,185,4,naturally aspirated',
'plymouth,sundance/duster,1994,compact car,10.23,fwd,gas,a,100,16,161,1134,5,"140000 km, no damage, warranty expired",2500,145,4,naturally aspirated',
'audi,a4,1996,compact car,12.38,fwd,gas,a,190,20,209,1451,5,"150000 km, no damage, warranty expired",5000,230,4,turbo',
'lexus,lfa,2012,two seater,18.09,rwd,gas,a,552,32,325,1588,2,"20000 km, no damage, warranty expired",375000,480,10,naturally aspirated',
'lamborghini,aventador coupe,2012,two seater,18.09,awd,gas,a,690,48,349,1723,2,"10000 km, no damage, warranty expired",400000,690,12,naturally aspirated',
'lamborghini,huracan,2015,two seater,14.7,awd,gas,a,602,40,323,1542,2,"15000 km, no damage, 1 year warranty left",220000,560,10,naturally aspirated',
'audi,sq7,2020,standard sport utility vehicle,13.84,awd,gas,a,500,32,250,2359,5,"5000 km, no damage, 3 years warranty left",95000,770,8,turbo',
'audi,r8,2008,two seater,15.68,awd,gas,m,420,32,306,1633,2,"60000 km, no damage, warranty expired",80000,430,10,naturally aspirated',
'mercedes-benz,cla45 amg 4matic,2014,compact car,9.05,4wd,gas,a,375,16,250,1542,5,"30000 km, no damage, 1 year warranty left",45000,475,4,turbo',
'mercedes-benz,amg cla35 4matic,2020,compact car,9.41,4wd,gas,a,302,16,250,1588,5,"10000 km, no damage, 3 years warranty left",50000,400,4,turbo',
'mercedes-benz,cls63 amg,2007,compact car,16.8,rwd,gas,a,507,32,250,1905,4,"70000 km, no damage, warranty expired",30000,650,8,turbo',
'land rover,defender 110,1993,special purpose vehicle,23.52,awd,gas,m,180,16,161,1950,9,"200000 km, no damage, warranty expired",25000, 500, 4, turbo',
'bmw,i8,2014,subcompact car,8.4,awd,hybrid(gas electricity),a,369,12,250,1497,4,"30000 km, no damage, 2 years warranty left",90000, 500, 3, turbo'
]

hybrids = 1
gas = 1
diesel = 1
ev = 1

engine_name = ""
for line in dataset:
	chunks = line.split(",")
	if (chunks[6] == "hybrid(gas electricity)"):
		engine_name = f"Hybrid Engine {hybrids}"
		hybrids+=1

	elif (chunks[6] == "gas"):
		engine_name = f"Gas Engine {gas}"
		gas+=1

	elif (chunks[6] == "diesel"):
		engine_name = f"Diesel Engine {diesel}"
		diesel+=1

	elif (chunks[6] == "electricity"):
		engine_name = f"Electric Engine {ev}"
		ev+=1

	else:
		print("erro no nome de motores")
		print(chunks[6])

	print(f"('{engine_name}',{int(chunks[11])}, {chunks[18]}, {chunks[9]}, '{chunks[19].strip()}', {int(chunks[17])}, {int(chunks[8])}, '{chunks[7].strip()}'),")















