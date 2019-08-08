fc<-read.csv("fc.csv", header=TRUE)

load("sample_meal_multiple.rda")
load("day1.rda")

食品群<-c('１ 穀類','２ いも及びでん粉','３ 砂糖及び甘味類','４ 豆類','５ 種実類','６ 野菜','７ 果実','８ きのこ類','９ 藻類','10 魚介類','11 肉類','12 卵類','13 乳類','14 油脂類','15 菓子類','16 し好飲料類','17 調味料及び香辛料類','18 調理加工食品類')

tp<-merge(day1,fc,by="食品番号")
tp1<-tp
for ( i in 7:ncol(tp)-1) {
	tp[,i]<-as.numeric(tp[,i])*as.numeric(tp[,2])/100
}


r1<-tp1[,c(2,7:10)]
r<-tp[,c(2,7:10)]
  

