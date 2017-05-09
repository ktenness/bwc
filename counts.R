x=read.clipboard(header=T,sep="\t")
y=read.clipboard(header=T,sep="\t")
z=read.clipboard(header=T,sep="\t")
m=merge(y,x,by=1,all.x=T,all.y=F)
mm=merge(m,z,by.x=2,by.y=1,all.x=T,all.y=F)
mmm=mm[102:1,]
d=duplicated(mmm$count_locations)
w=which(d==FALSE)
mmmm=mmm[w,]

